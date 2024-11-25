import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/services/network/dio_service_impl.dart';
import 'package:piton_test_case/features/product/data/model/like_or_unlike/req/like_or_unlike_request_model.dart';
import 'package:piton_test_case/features/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(this.dioService);
  late final DioService dioService;

  @override
  Future<bool> likeProduct(
    BuildContext context, {
    required String endpoint,
    required LikeOrUnlikeRequestModel likeOrUnlikeRequestModel,
  }) async {
    try {
      final response = await dioService.post<Map<String, dynamic>>(
        endpoint,
        data: likeOrUnlikeRequestModel.toJson(),
      );
      if (response.data == null) return false;
      if (response.statusCode == 200 || response.statusCode == 201) {
        context.showSnackBar(
          context.l10n.successLike,
        );

        return true;
      }
    } on DioException catch (e) {
      context.showSnackBar(
        '${e.response?.statusMessage}: Zaten beğenildi',
      );
    }
    return false;
  }

  @override
  Future<bool> unlikeProduct(
    BuildContext context, {
    required String endpoint,
    required LikeOrUnlikeRequestModel likeOrUnlikeRequestModel,
  }) async {
    try {
      final response = await dioService.post<Map<String, dynamic>>(
        endpoint,
        data: likeOrUnlikeRequestModel.toJson(),
      );
      if (response.data == null) return false;
      if (response.statusCode == 200 || response.statusCode == 201) {
        context.showSnackBar(
          context.l10n.successUnlike,
        );
        return true;
      }
    } on DioException catch (e) {
      context.showSnackBar(
        '${e.response?.statusMessage}: Zaten beğeniden çıkarıldı',
      );
    }
    return false;
  }
}
