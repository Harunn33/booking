import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    @JsonKey(name: 'action_login') required ActionLoginModel actionLogin,
  }) = _LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String, Object?> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class ActionLoginModel with _$ActionLoginModel {
  factory ActionLoginModel({
    required String token,
  }) = _ActionLoginModel;
  factory ActionLoginModel.fromJson(Map<String, Object?> json) =>
      _$ActionLoginModelFromJson(json);
}
