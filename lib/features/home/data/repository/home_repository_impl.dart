import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/services/network/dio_service_impl.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';
import 'package:piton_test_case/features/home/data/model/cover_image/req/cover_image_request_model.dart';
import 'package:piton_test_case/features/home/data/model/cover_image/resp/cover_image_response_model.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this.dioService);
  late final DioService dioService;

  @override
  Future<CategoryResponseModel> getAllCategories(
    BuildContext context, {
    required String endpoint,
  }) async {
    try {
      final response = await dioService.get<Map<String, dynamic>>(
        endpoint,
      );
      if (response.data == null) return CategoryResponseModel(category: []);
      return CategoryResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? 'An error occurred',
      );
    }
    return CategoryResponseModel(category: []);
  }

  @override
  Future<ProductResponseModel> getProductsByCategoryId(
    BuildContext context, {
    required String endpoint,
    required int categoryId,
  }) async {
    try {
      final response = await dioService.get<Map<String, dynamic>>(
        '$endpoint/$categoryId',
      );
      if (response.data == null) return const ProductResponseModel(product: []);
      return ProductResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? 'An error occurred',
      );
    }
    return const ProductResponseModel(product: []);
  }

  @override
  Future<CoverImageResponseModel> getCoverImageByFileName(
    BuildContext context, {
    required String endpoint,
    required CoverImageRequestModel coverImageRequestModel,
  }) async {
    try {
      final response = await dioService.post<Map<String, dynamic>>(
        endpoint,
        data: coverImageRequestModel.toJson(),
      );
      if (response.data == null) {
        return CoverImageResponseModel(
          actionProductImage: ActionProductImage(url: ''),
        );
      }
      return CoverImageResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? 'An error occurred',
      );
    }
    return CoverImageResponseModel(
      actionProductImage: ActionProductImage(url: ''),
    );
  }
}
