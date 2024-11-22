import 'package:flutter/material.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';

abstract class HomeRepository {
  Future<CategoryResponseModel> getAllCategories(
    BuildContext context, {
    required String endpoint,
  });
  Future<ProductResponseModel> getProductsByCategoryId(
    BuildContext context, {
    required String endpoint,
    required int categoryId,
  });
}
