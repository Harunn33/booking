import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
class RegisterResponseModel with _$RegisterResponseModel {
  factory RegisterResponseModel({
    @JsonKey(name: 'action_register')
    required ActionRegisterModel actionRegister,
  }) = _RegisterResponseModel;
  factory RegisterResponseModel.fromJson(Map<String, Object?> json) =>
      _$RegisterResponseModelFromJson(json);
}

@freezed
class ActionRegisterModel with _$ActionRegisterModel {
  factory ActionRegisterModel({
    required String token,
  }) = _ActionRegisterModel;
  factory ActionRegisterModel.fromJson(Map<String, Object?> json) =>
      _$ActionRegisterModelFromJson(json);
}
