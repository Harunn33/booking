import 'package:flutter/material.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';
import 'package:piton_test_case/features/home/data/model/cover_image/req/cover_image_request_model.dart';
import 'package:piton_test_case/features/home/data/model/cover_image/resp/cover_image_response_model.dart';
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
  Future<CoverImageResponseModel> getCoverImageByFileName(
    BuildContext context, {
    required String endpoint,
    required CoverImageRequestModel coverImageRequestModel,
  });
}
