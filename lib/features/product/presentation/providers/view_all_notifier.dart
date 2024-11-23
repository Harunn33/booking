import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/product/presentation/states/view_all_state.dart';

final viewAllProvider =
    NotifierProvider.autoDispose<ViewAllNotifier, ViewAllState>(
  ViewAllNotifier.new,
);

class ViewAllNotifier extends AutoDisposeNotifier<ViewAllState> {
  ViewAllNotifier();

  @override
  ViewAllState build() {
    _init();
    return ViewAllState.initial();
  }

  Future<void> _init() async {}

  Future<void> searchProduct({
    required String query,
    required List<Product> products,
  }) async {
    if (query.isEmpty) {
      state = state.copyWith(searchedProducts: products);
      return;
    }
    state = state.copyWith(isLoading: true);
    final searchedProducts = products.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    state = state.copyWith(
      searchedProducts: searchedProducts,
      isLoading: false,
    );
  }
}
