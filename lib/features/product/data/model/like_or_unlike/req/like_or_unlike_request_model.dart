import 'package:freezed_annotation/freezed_annotation.dart';
part 'like_or_unlike_request_model.freezed.dart';
part 'like_or_unlike_request_model.g.dart';

@freezed
class LikeOrUnlikeRequestModel with _$LikeOrUnlikeRequestModel {
  factory LikeOrUnlikeRequestModel({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'product_id') required int productId,
  }) = _LikeOrUnlikeRequestModel;
  factory LikeOrUnlikeRequestModel.fromJson(Map<String, Object?> json) =>
      _$LikeOrUnlikeRequestModelFromJson(json);
}
