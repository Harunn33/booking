import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';

part 'view_all_state.freezed.dart';

@freezed
class ViewAllState with _$ViewAllState {
  const factory ViewAllState({
    required bool isLoading,
    required TextEditingController searchController,
    required List<Product> products,
    required List<Product> searchedProducts,
  }) = _ViewAllState;

  factory ViewAllState.initial() => ViewAllState(
        isLoading: false,
        searchController: TextEditingController(),
        products: [],
        searchedProducts: [],
      );
}
