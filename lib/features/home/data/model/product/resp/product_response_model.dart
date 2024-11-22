import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response_model.freezed.dart';
part 'product_response_model.g.dart';

@freezed
class ProductResponseModel with _$ProductResponseModel {
  const factory ProductResponseModel({
    required List<Product> product,
  }) = _ProductResponseModel;

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required String author,
    required String cover,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String description,
    required int id,
    required String name,
    required double price,
    required int sales,
    required String slug,
    @JsonKey(name: 'likes_aggregate') required LikesAggregate likesAggregate,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class LikesAggregate with _$LikesAggregate {
  const factory LikesAggregate({
    required Aggregate aggregate,
  }) = _LikesAggregate;

  factory LikesAggregate.fromJson(Map<String, dynamic> json) =>
      _$LikesAggregateFromJson(json);
}

@freezed
class Aggregate with _$Aggregate {
  const factory Aggregate({
    required int count,
  }) = _Aggregate;

  factory Aggregate.fromJson(Map<String, dynamic> json) =>
      _$AggregateFromJson(json);
}
