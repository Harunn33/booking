import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  factory RegisterRequestModel({
    required String email,
    required String name,
    required String password,
  }) = _RegisterRequestModel;
  factory RegisterRequestModel.fromJson(Map<String, Object?> json) =>
      _$RegisterRequestModelFromJson(json);
}
