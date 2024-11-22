import 'dart:convert';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductCacheService {
  final _productsKey = LocalStorageKey.productsCache.value;
  final _productCacheTimestampKey =
      LocalStorageKey.productsCacheTimestamp.value;
  final cacheDuration = 24 * 60 * 60;

  Future<void> cacheProducts({
    required List<ProductResponseModel> allProductsByCategory,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    final productsJson =
        jsonEncode(allProductsByCategory.map((e) => e.toJson()).toList());
    await prefs.setString(_productsKey, productsJson);

    final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
    await prefs.setInt(_productCacheTimestampKey, currentTimestamp);
  }

  Future<List<ProductResponseModel>> getCachedProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final productsJson = prefs.getString(_productsKey);
    final cacheTimestamp = prefs.getInt(_productCacheTimestampKey);

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

  Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_productsKey);
    await prefs.remove(_productCacheTimestampKey);
  }
}
