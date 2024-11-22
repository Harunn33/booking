import 'package:freezed_annotation/freezed_annotation.dart';
part 'cover_image_response_model.freezed.dart';
part 'cover_image_response_model.g.dart';

@freezed
class CoverImageResponseModel with _$CoverImageResponseModel {
  factory CoverImageResponseModel({
    @JsonKey(name: 'action_product_image')
    required ActionProductImage actionProductImage,
  }) = _CoverImageResponseModel;
  factory CoverImageResponseModel.fromJson(Map<String, Object?> json) =>
      _$CoverImageResponseModelFromJson(json);
}

@freezed
class ActionProductImage with _$ActionProductImage {
  factory ActionProductImage({
    required String url,
  }) = _ActionProductImage;
  factory ActionProductImage.fromJson(Map<String, Object?> json) =>
      _$ActionProductImageFromJson(json);
}
