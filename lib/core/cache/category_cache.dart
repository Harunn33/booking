import 'dart:convert';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';

class CategoryCacheService {
  final LocalStorageService localStorageService;

  CategoryCacheService(this.localStorageService);
  final _categoriesKey = LocalStorageKey.categoriesCache.value;
  final _cacheTimestampKey = LocalStorageKey.categoriesCacheTimestamp.value;
  final cacheDuration = 24 * 60 * 60;

  Future<void> cacheCategories({
    required List<CategoryItemModel> categories,
  }) async {
    final categoriesJson =
        jsonEncode(categories.map((e) => e.toJson()).toList());
    localStorageService.saveData(_categoriesKey, categoriesJson);

    final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
    localStorageService.saveData(_cacheTimestampKey, currentTimestamp);
  }

  Future<List<CategoryItemModel>> getCachedCategories() async {
    final categoriesJson =
        localStorageService.retrieveData<String>(_categoriesKey);
    final cacheTimestamp =
        localStorageService.retrieveData<int>(_cacheTimestampKey);

    if (categoriesJson != null && cacheTimestamp != null) {
      final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
      final elapsedTime = currentTimestamp - cacheTimestamp;

      if (elapsedTime > cacheDuration * 1000) {
        return [];
      }

      final decoded = jsonDecode(categoriesJson) as List<dynamic>;
      final result = decoded
          .map(
            (category) =>
                CategoryItemModel.fromJson(category as Map<String, dynamic>),
          )
          .toList();

      return result;
    }

    return [];
  }

  void clearCache() {
    localStorageService
      ..removeData(_categoriesKey)
      ..removeData(_cacheTimestampKey);
  }
}
