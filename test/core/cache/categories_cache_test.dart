import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:piton_test_case/core/cache/category_cache.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';

class MockLocalStorageService extends Mock implements LocalStorageService {}

void main() {
  group('CategoryCacheService Tests', () {
    late CategoryCacheService categoryCacheService;
    late MockLocalStorageService mockLocalStorageService;

    setUp(() {
      mockLocalStorageService = MockLocalStorageService();
      categoryCacheService = CategoryCacheService(mockLocalStorageService);
    });

    test('save caches categories successfully', () async {
      // Arrange
      final fakeCategories = [
        {
          'id': 1,
          'name': 'Electronics',
          'created_at': DateTime.now().toIso8601String(),
          'isSelected': false,
        },
        {
          'id': 2,
          'name': 'Fashion',
          'created_at': DateTime.now().toIso8601String(),
          'isSelected': false,
        },
      ];

      final fakeCategoriesJson = jsonEncode(fakeCategories);

      // Act
      await categoryCacheService.cacheCategories(
        categories: fakeCategories.map(CategoryItemModel.fromJson).toList(),
      );

      // Assert
      verify(
        mockLocalStorageService.saveData(
          LocalStorageKey.categoriesCache.value,
          fakeCategoriesJson,
        ),
      );
      verify(
        mockLocalStorageService.saveData(
          LocalStorageKey.categoriesCacheTimestamp.value,
          any,
        ),
      );
    });

    test('clears categories cache successfully', () async {
      // Act
      categoryCacheService.clearCache();

      // Assert
      verify(
        mockLocalStorageService
            .removeData(LocalStorageKey.categoriesCache.value),
      );
      verify(
        mockLocalStorageService.removeData(
          LocalStorageKey.categoriesCacheTimestamp.value,
        ),
      );
    });

    test('returns cached categories when valid cache exists', () async {
      // Arrange
      final fakeCategories = [
        {
          'id': 1,
          'name': 'Electronics',
          'isSelected': false,
          'created_at': DateTime(2023).toIso8601String(),
        },
        {
          'id': 2,
          'name': 'Fashion',
          'isSelected': false,
          'created_at': DateTime(2023).toIso8601String(),
        },
      ];

      final fakeCategoriesJson = jsonEncode(fakeCategories);
      final fakeTimestamp =
          DateTime.now().millisecondsSinceEpoch - (5 * 1000); // 5 saniye önce

      when(
        mockLocalStorageService
            .retrieveData<String>(LocalStorageKey.categoriesCache.value),
      ).thenReturn(fakeCategoriesJson);
      when(
        mockLocalStorageService
            .retrieveData<int>(LocalStorageKey.categoriesCacheTimestamp.value),
      ).thenReturn(fakeTimestamp);

      // Act
      final result = await categoryCacheService.getCachedCategories();

      // Assert
      expect(result, isNotEmpty);
      expect(result.length, 2);
      expect(result[0].name, 'Electronics');
      expect(result[1].name, 'Fashion');
    });

    test('returns empty list when cache has expired', () async {
      // Arrange
      const fakeCategoriesJson = '[]';
      final fakeTimestamp = DateTime.now().millisecondsSinceEpoch -
          (categoryCacheService.cacheDuration * 1000 + 1000);

      when(
        mockLocalStorageService
            .retrieveData<String>(LocalStorageKey.categoriesCache.value),
      ).thenReturn(fakeCategoriesJson);
      when(
        mockLocalStorageService
            .retrieveData<int>(LocalStorageKey.categoriesCacheTimestamp.value),
      ).thenReturn(fakeTimestamp);

      // Act
      final result = await categoryCacheService.getCachedCategories();

      // Assert
      expect(result, isEmpty);
    });

    test('returns empty list when no cache exists', () async {
      // Arrange
      when(
        mockLocalStorageService
            .retrieveData<String>(LocalStorageKey.categoriesCache.value),
      ).thenReturn(null);
      when(
        mockLocalStorageService
            .retrieveData<int>(LocalStorageKey.categoriesCacheTimestamp.value),
      ).thenReturn(null);

      // Act
      final result = await categoryCacheService.getCachedCategories();

      // Assert
      expect(result, isEmpty);
    });
  });
}
