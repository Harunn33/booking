// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$LoginResponseModelImpl(
      actionLogin: ActionLoginModel.fromJson(
        json['action_login'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
  _$LoginResponseModelImpl instance,
) =>
    <String, dynamic>{
      'action_login': instance.actionLogin,
    };

_$ActionLoginModelImpl _$$ActionLoginModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$ActionLoginModelImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$ActionLoginModelImplToJson(
  _$ActionLoginModelImpl instance,
) =>
    <String, dynamic>{
      'token': instance.token,
    };
