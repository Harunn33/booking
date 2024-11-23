// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseModelImpl _$$RegisterResponseModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$RegisterResponseModelImpl(
      actionRegister: ActionRegisterModel.fromJson(
        json['action_register'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$RegisterResponseModelImplToJson(
  _$RegisterResponseModelImpl instance,
) =>
    <String, dynamic>{
      'action_register': instance.actionRegister,
    };

_$ActionRegisterModelImpl _$$ActionRegisterModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$ActionRegisterModelImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$ActionRegisterModelImplToJson(
  _$ActionRegisterModelImpl instance,
) =>
    <String, dynamic>{
      'token': instance.token,
    };
