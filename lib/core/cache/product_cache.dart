import 'dart:convert';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';

class ProductCacheService {
  final LocalStorageService localStorageService;

  ProductCacheService(this.localStorageService);

  final _productsKey = LocalStorageKey.productsCache.value;
  final _productCacheTimestampKey =
      LocalStorageKey.productsCacheTimestamp.value;
  final cacheDuration = 24 * 60 * 60;

  Future<void> cacheProducts({
    required List<ProductResponseModel> allProductsByCategory,
  }) async {
    final productsJson =
        jsonEncode(allProductsByCategory.map((e) => e.toJson()).toList());
    localStorageService.saveData(_productsKey, productsJson);

    final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
    localStorageService.saveData(_productCacheTimestampKey, currentTimestamp);
  }

  Future<List<ProductResponseModel>> getCachedProducts() async {
    final productsJson = localStorageService.retrieveData<String>(_productsKey);
    final cacheTimestamp =
        localStorageService.retrieveData<int>(_productCacheTimestampKey);

    if (productsJson != null && cacheTimestamp != null) {
      final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
      final elapsedTime = currentTimestamp - cacheTimestamp;

      if (elapsedTime > cacheDuration * 1000) {
        return [];
      }

      final decoded = jsonDecode(productsJson) as List<dynamic>;
      final result = decoded
          .map(
            (product) =>
                ProductResponseModel.fromJson(product as Map<String, dynamic>),
          )
          .toList();

      return result;
    }

    return [];
  }

  void clearCache() {
    localStorageService
      ..removeData(_productsKey)
      ..removeData(_productCacheTimestampKey);
  }
}
