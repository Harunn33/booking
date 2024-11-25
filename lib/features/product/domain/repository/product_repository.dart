import 'package:flutter/material.dart';
import 'package:piton_test_case/features/product/data/model/like_or_unlike/req/like_or_unlike_request_model.dart';

abstract class ProductRepository {
  Future<bool> likeProduct(
    BuildContext context, {
    required String endpoint,
    required LikeOrUnlikeRequestModel likeOrUnlikeRequestModel,
  });
  Future<bool> unlikeProduct(
    BuildContext context, {
    required String endpoint,
    required LikeOrUnlikeRequestModel likeOrUnlikeRequestModel,
  });
}
