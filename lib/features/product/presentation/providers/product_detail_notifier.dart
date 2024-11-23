import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  void favoriteProduct() {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(isFavorite: !state.isFavorite, isLoading: false);
  }
}
