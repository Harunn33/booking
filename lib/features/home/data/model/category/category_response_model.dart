import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_response_model.freezed.dart';
part 'category_response_model.g.dart';

@freezed
class CategoryResponseModel with _$CategoryResponseModel {
  factory CategoryResponseModel({
    required List<CategoryItemModel> category,
  }) = _CategoryResponseModel;
  factory CategoryResponseModel.fromJson(Map<String, Object?> json) =>
      _$CategoryResponseModelFromJson(json);
}

@freezed
class CategoryItemModel with _$CategoryItemModel {
  factory CategoryItemModel({
    required int id,
    required String name,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(defaultValue: false) required bool isSelected,
  }) = _CategoryItemModel;
  factory CategoryItemModel.fromJson(Map<String, Object?> json) =>
      _$CategoryItemModelFromJson(json);
}
