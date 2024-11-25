import 'dart:async';
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/constants/api_constants.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/features/product/data/model/like_or_unlike/req/like_or_unlike_request_model.dart';
import 'package:piton_test_case/features/product/domain/repository/product_repository.dart';
import 'package:piton_test_case/features/product/presentation/states/product_detail_state.dart';

final productDetailProvider =
    NotifierProvider.autoDispose<ProductDetailNotifier, ProductDetailState>(
  ProductDetailNotifier.new,
);

class ProductDetailNotifier extends AutoDisposeNotifier<ProductDetailState> {
  ProductDetailNotifier();

  @override
  ProductDetailState build() {
    _init();
    return ProductDetailState.initial();
  }

  Future<void> _init() async {}

  int getUserIdByToken() {
    final token = getIt<LocalStorageService>().retrieveData<String>(
      LocalStorageKey.token.value,
    );

    final payload = token?.split('.')[1];
    if (payload == null) return 0;
    final normalized = base64.normalize(payload);
    final decoded = utf8.decode(base64.decode(normalized));

    final userId = jsonDecode(decoded)['user_id'] as int;
    return userId;
  }

  Future<void> likeProduct(
    BuildContext context, {
    required int productId,
  }) async {
    state = state.copyWith(isLoading: true);
    final userId = getUserIdByToken();
    if (state.isLike) {
      final result = await getIt<ProductRepository>().unlikeProduct(
        context,
        endpoint: ApiConstants.instance.baseUrl + ApiConstants.instance.unlike,
        likeOrUnlikeRequestModel: LikeOrUnlikeRequestModel(
          productId: productId,
          userId: userId,
        ),
      );
      if (result) {
        state = state.copyWith(isLike: !state.isLike, isLoading: false);
      }
    } else {
      final result = await getIt<ProductRepository>().likeProduct(
        context,
        endpoint: ApiConstants.instance.baseUrl + ApiConstants.instance.like,
        likeOrUnlikeRequestModel: LikeOrUnlikeRequestModel(
          productId: productId,
          userId: userId,
        ),
      );
      if (result) {
        state = state.copyWith(isLike: !state.isLike, isLoading: false);
      }
    }
    state = state.copyWith(isLoading: false);
  }
}
