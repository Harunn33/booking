import 'dart:convert';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryCacheService {
  final _categoriesKey = LocalStorageKey.categoriesCache.value;
  final _cacheTimestampKey = LocalStorageKey.categoriesCacheTimestamp.value;
  final cacheDuration = 24 * 60 * 60;

  Future<void> cacheCategories({
    required List<CategoryItemModel> categories,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    final categoriesJson =
        jsonEncode(categories.map((e) => e.toJson()).toList());
    await prefs.setString(_categoriesKey, categoriesJson);

    final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
    await prefs.setInt(_cacheTimestampKey, currentTimestamp);
  }

  Future<List<CategoryItemModel>> getCachedCategories() async {
    final prefs = await SharedPreferences.getInstance();
    final categoriesJson = prefs.getString(_categoriesKey);
    final cacheTimestamp = prefs.getInt(_cacheTimestampKey);

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

  Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_categoriesKey);
    await prefs.remove(_cacheTimestampKey);
  }
}
