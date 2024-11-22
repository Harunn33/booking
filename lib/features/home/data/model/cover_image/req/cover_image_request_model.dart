import 'package:freezed_annotation/freezed_annotation.dart';
part 'cover_image_request_model.freezed.dart';
part 'cover_image_request_model.g.dart';

@freezed
class CoverImageRequestModel with _$CoverImageRequestModel {
  factory CoverImageRequestModel({
    required String fileName,
  }) = _CoverImageRequestModel;
  factory CoverImageRequestModel.fromJson(Map<String, Object?> json) =>
      _$CoverImageRequestModelFromJson(json);
}
