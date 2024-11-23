import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:piton_test_case/core/cache/product_cache.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';

class MockLocalStorageService extends Mock implements LocalStorageService {}

void main() {
  group('ProductCacheService Tests', () {
    late ProductCacheService productCacheService;
    late MockLocalStorageService mockLocalStorageService;

    setUp(() {
      mockLocalStorageService = MockLocalStorageService();
      productCacheService = ProductCacheService(mockLocalStorageService);
    });

    test('saves products to cache', () async {
      // Arrange
      final productsToCache = [
        {
          'product': [
            {
              'author': 'Frank Herbert',
              'cover': 'dune.png',
              'created_at': '2023-01-09T14:39:18.509219',
              'description':
                  'Dune is set in the distant future amidst a feudal interstellar society in which various noble houses control planetary fiefs. It tells the story of young Paul Atreides, whose family accepts the stewardship of the planet Arrakis. While the planet is an inhospitable and sparsely populated desert wasteland, it is the only source of melange, or "spice", a drug that...',
              'id': 3,
              'name': 'dune',
              'price': 87.75,
              'sales': 5,
              'slug': 'dune',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
            {
              'author': 'George Orwell',
              'cover': '1984.png',
              'created_at': '2023-01-09T14:39:33.035651',
              'description':
                  'Parti’nin dünya görüşü, onu hiç anlayamayan insanlara çok daha kolay dayatılıyordu. (...) Her şeyi yutuyorlar ve hiçbir zarar görmüyorlardı çünkü tıpkı bir mısır tanesinin bir kuşun bedeninden sindirilmeden geçip gitmesi gibi, yuttuklarından geriye bir şey kalmıyordu.',
              'id': 4,
              'name': '1984',
              'price': 35.75,
              'sales': 5,
              'slug': '1984',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
          ],
        },
        {
          'product': [
            {
              'author': 'William Shakespeare',
              'cover': 'romeo-ve-juliet.png',
              'created_at': '2023-01-09T17:18:50.255438',
              'description':
                  'Oyunları ve şiirlerinde insanlık durumlarını dile getiriş gücüyle yaklaşık 400 yıldır bütün dünya okur ve seyircilerini etkilemeyi sürdüren efsanevi yazar, Romeo ve Juliet’de birbirinden farklı pek çok toplumda benzerleriyle karşılaşılan trajik bir ilişkiyi, düşman ailelerin çocukları arasında doğan aşkı ele alır. Romeo ile Juliet’in umutsuz aşkını romantik örgüsünün yarı karanlık örtüsüyle sarmalayan eser, buna rağmen insan ilişkilerini gerçekçi bir anlayışla gözler önüne serer.',
              'id': 9,
              'name': 'Romeo ve Juliet ',
              'price': 65.9,
              'sales': 8,
              'slug': 'romeo-ve-juliet',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
            {
              'author': 'Stefan Zweig',
              'cover': 'olaganustu-bir-gece.png',
              'created_at': '2023-01-09T17:20:17.879993',
              'description':
                  'Olağanüstü Bir Gece, seçkin bir burjuva olarak rahat ve tasasız varoluşunu sürdürürken giderek duyarsızlaşan bir adamın hayatındaki dönüştürücü deneyimin hikâyesidir. Sıradan bir pazar gününü at yarışlarında geçirirken, belki de ilk kez burjuva ahlakından saparak “suç” işler. Böylece yeniden “hissetmeye” başladığını, kötücül ve ateşli hazları olan gerçek bir insan olduğunu fark eder. İçindeki haz dolu esrime, aynı günün akşamında onu gece âleminin son atıklarının arasına, “hayatın en dibindeki lağımlara” sürükleyecek, varış noktası ise ruhani bir uyanış olacaktır',
              'id': 10,
              'name': 'Olağanüstü Bir Gece',
              'price': 40.5,
              'sales': 11,
              'slug': 'olaganustu-bir-gece',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
          ],
        },
      ];

      final productsJson = jsonEncode(productsToCache);

      // Act
      await productCacheService.cacheProducts(
        allProductsByCategory:
            productsToCache.map(ProductResponseModel.fromJson).toList(),
      );

      // Assert
      verify(
        mockLocalStorageService.saveData(
          LocalStorageKey.productsCache.value,
          productsJson,
        ),
      ).called(1);
      verify(
        mockLocalStorageService.saveData(
          LocalStorageKey.productsCacheTimestamp.value,
          any,
        ),
      ).called(1);
    });

    test('clears products cache', () async {
      // Act
      productCacheService.clearCache();

      // Assert
      verify(
        mockLocalStorageService.removeData(
          LocalStorageKey.productsCache.value,
        ),
      ).called(1);
      verify(
        mockLocalStorageService.removeData(
          LocalStorageKey.productsCacheTimestamp.value,
        ),
      ).called(1);
    });

    test('returns cached products when valid cache exists', () async {
      // Arrange
      final fakeProducts = [
        {
          'product': [
            {
              'author': 'Frank Herbert',
              'cover': 'dune.png',
              'created_at': '2023-01-09T14:39:18.509219',
              'description':
                  'Dune is set in the distant future amidst a feudal interstellar society in which various noble houses control planetary fiefs. It tells the story of young Paul Atreides, whose family accepts the stewardship of the planet Arrakis. While the planet is an inhospitable and sparsely populated desert wasteland, it is the only source of melange, or "spice", a drug that...',
              'id': 3,
              'name': 'dune',
              'price': 87.75,
              'sales': 5,
              'slug': 'dune',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
            {
              'author': 'George Orwell',
              'cover': '1984.png',
              'created_at': '2023-01-09T14:39:33.035651',
              'description':
                  'Parti’nin dünya görüşü, onu hiç anlayamayan insanlara çok daha kolay dayatılıyordu. (...) Her şeyi yutuyorlar ve hiçbir zarar görmüyorlardı çünkü tıpkı bir mısır tanesinin bir kuşun bedeninden sindirilmeden geçip gitmesi gibi, yuttuklarından geriye bir şey kalmıyordu.',
              'id': 4,
              'name': '1984',
              'price': 35.75,
              'sales': 5,
              'slug': '1984',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
          ],
        },
        {
          'product': [
            {
              'author': 'William Shakespeare',
              'cover': 'romeo-ve-juliet.png',
              'created_at': '2023-01-09T17:18:50.255438',
              'description':
                  'Oyunları ve şiirlerinde insanlık durumlarını dile getiriş gücüyle yaklaşık 400 yıldır bütün dünya okur ve seyircilerini etkilemeyi sürdüren efsanevi yazar, Romeo ve Juliet’de birbirinden farklı pek çok toplumda benzerleriyle karşılaşılan trajik bir ilişkiyi, düşman ailelerin çocukları arasında doğan aşkı ele alır. Romeo ile Juliet’in umutsuz aşkını romantik örgüsünün yarı karanlık örtüsüyle sarmalayan eser, buna rağmen insan ilişkilerini gerçekçi bir anlayışla gözler önüne serer.',
              'id': 9,
              'name': 'Romeo ve Juliet ',
              'price': 65.9,
              'sales': 8,
              'slug': 'romeo-ve-juliet',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
            {
              'author': 'Stefan Zweig',
              'cover': 'olaganustu-bir-gece.png',
              'created_at': '2023-01-09T17:20:17.879993',
              'description':
                  'Olağanüstü Bir Gece, seçkin bir burjuva olarak rahat ve tasasız varoluşunu sürdürürken giderek duyarsızlaşan bir adamın hayatındaki dönüştürücü deneyimin hikâyesidir. Sıradan bir pazar gününü at yarışlarında geçirirken, belki de ilk kez burjuva ahlakından saparak “suç” işler. Böylece yeniden “hissetmeye” başladığını, kötücül ve ateşli hazları olan gerçek bir insan olduğunu fark eder. İçindeki haz dolu esrime, aynı günün akşamında onu gece âleminin son atıklarının arasına, “hayatın en dibindeki lağımlara” sürükleyecek, varış noktası ise ruhani bir uyanış olacaktır',
              'id': 10,
              'name': 'Olağanüstü Bir Gece',
              'price': 40.5,
              'sales': 11,
              'slug': 'olaganustu-bir-gece',
              'likes_aggregate': {
                'aggregate': {
                  'count': 0,
                },
              },
            },
          ],
        },
      ];

      final fakeProductsJson = jsonEncode(fakeProducts);
      final fakeTimestamp =
          DateTime.now().millisecondsSinceEpoch - (5 * 1000); // 5 saniye önce

      when(
        mockLocalStorageService
            .retrieveData<String>(LocalStorageKey.productsCache.value),
      ).thenReturn(fakeProductsJson);
      when(
        mockLocalStorageService
            .retrieveData<int>(LocalStorageKey.productsCacheTimestamp.value),
      ).thenReturn(fakeTimestamp);

      // Act
      final result = await productCacheService.getCachedProducts();

      // Assert
      expect(result, isNotEmpty);
      expect(result.length, 2);
      expect(result[0].product.first.author, 'Frank Herbert');
      expect(result[1].product.first.author, 'William Shakespeare');
    });

    test('returns empty list when cache has expired', () async {
      // Arrange
      const fakeProductsJson = '[]';
      final fakeTimestamp = DateTime.now().millisecondsSinceEpoch -
          (productCacheService.cacheDuration * 1000 + 1000);

      when(
        mockLocalStorageService
            .retrieveData<String>(LocalStorageKey.productsCache.value),
      ).thenReturn(fakeProductsJson);
      when(
        mockLocalStorageService
            .retrieveData<int>(LocalStorageKey.productsCacheTimestamp.value),
      ).thenReturn(fakeTimestamp);

      // Act
      final result = await productCacheService.getCachedProducts();

      // Assert
      expect(result, isEmpty);
    });

    test('returns empty list when no cache exists', () async {
      // Arrange
      when(
        mockLocalStorageService
            .retrieveData<String>(LocalStorageKey.productsCache.value),
      ).thenReturn(null);
      when(
        mockLocalStorageService
            .retrieveData<int>(LocalStorageKey.productsCacheTimestamp.value),
      ).thenReturn(null);

      // Act
      final result = await productCacheService.getCachedProducts();

      // Assert
      expect(result, isEmpty);
    });
  });
}
