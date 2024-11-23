import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    required bool isLoading,
    required bool isFavorite,
  }) = _ProductDetailState;

  factory ProductDetailState.initial() => const ProductDetailState(
        isLoading: false,
        isFavorite: false,
      );
}
