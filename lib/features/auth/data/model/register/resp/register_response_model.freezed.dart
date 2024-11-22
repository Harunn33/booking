// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterResponseModel _$RegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponseModel {
  @JsonKey(name: 'action_register')
  ActionRegisterModel get actionRegister => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseModelCopyWith<RegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseModelCopyWith<$Res> {
  factory $RegisterResponseModelCopyWith(RegisterResponseModel value,
          $Res Function(RegisterResponseModel) then) =
      _$RegisterResponseModelCopyWithImpl<$Res, RegisterResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'action_register') ActionRegisterModel actionRegister});

  $ActionRegisterModelCopyWith<$Res> get actionRegister;
}

/// @nodoc
class _$RegisterResponseModelCopyWithImpl<$Res,
        $Val extends RegisterResponseModel>
    implements $RegisterResponseModelCopyWith<$Res> {
  _$RegisterResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionRegister = null,
  }) {
    return _then(_value.copyWith(
      actionRegister: null == actionRegister
          ? _value.actionRegister
          : actionRegister // ignore: cast_nullable_to_non_nullable
              as ActionRegisterModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionRegisterModelCopyWith<$Res> get actionRegister {
    return $ActionRegisterModelCopyWith<$Res>(_value.actionRegister, (value) {
      return _then(_value.copyWith(actionRegister: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterResponseModelImplCopyWith<$Res>
    implements $RegisterResponseModelCopyWith<$Res> {
  factory _$$RegisterResponseModelImplCopyWith(
          _$RegisterResponseModelImpl value,
          $Res Function(_$RegisterResponseModelImpl) then) =
      __$$RegisterResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'action_register') ActionRegisterModel actionRegister});

  @override
  $ActionRegisterModelCopyWith<$Res> get actionRegister;
}

/// @nodoc
class __$$RegisterResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterResponseModelCopyWithImpl<$Res,
        _$RegisterResponseModelImpl>
    implements _$$RegisterResponseModelImplCopyWith<$Res> {
  __$$RegisterResponseModelImplCopyWithImpl(_$RegisterResponseModelImpl _value,
      $Res Function(_$RegisterResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionRegister = null,
  }) {
    return _then(_$RegisterResponseModelImpl(
      actionRegister: null == actionRegister
          ? _value.actionRegister
          : actionRegister // ignore: cast_nullable_to_non_nullable
              as ActionRegisterModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterResponseModelImpl implements _RegisterResponseModel {
  _$RegisterResponseModelImpl(
      {@JsonKey(name: 'action_register') required this.actionRegister});

  factory _$RegisterResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'action_register')
  final ActionRegisterModel actionRegister;

  @override
  String toString() {
    return 'RegisterResponseModel(actionRegister: $actionRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterResponseModelImpl &&
            (identical(other.actionRegister, actionRegister) ||
                other.actionRegister == actionRegister));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actionRegister);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterResponseModelImplCopyWith<_$RegisterResponseModelImpl>
      get copyWith => __$$RegisterResponseModelImplCopyWithImpl<
          _$RegisterResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterResponseModel implements RegisterResponseModel {
  factory _RegisterResponseModel(
          {@JsonKey(name: 'action_register')
          required final ActionRegisterModel actionRegister}) =
      _$RegisterResponseModelImpl;

  factory _RegisterResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegisterResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'action_register')
  ActionRegisterModel get actionRegister;
  @override
  @JsonKey(ignore: true)
  _$$RegisterResponseModelImplCopyWith<_$RegisterResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActionRegisterModel _$ActionRegisterModelFromJson(Map<String, dynamic> json) {
  return _ActionRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$ActionRegisterModel {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionRegisterModelCopyWith<ActionRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionRegisterModelCopyWith<$Res> {
  factory $ActionRegisterModelCopyWith(
          ActionRegisterModel value, $Res Function(ActionRegisterModel) then) =
      _$ActionRegisterModelCopyWithImpl<$Res, ActionRegisterModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$ActionRegisterModelCopyWithImpl<$Res, $Val extends ActionRegisterModel>
    implements $ActionRegisterModelCopyWith<$Res> {
  _$ActionRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionRegisterModelImplCopyWith<$Res>
    implements $ActionRegisterModelCopyWith<$Res> {
  factory _$$ActionRegisterModelImplCopyWith(_$ActionRegisterModelImpl value,
          $Res Function(_$ActionRegisterModelImpl) then) =
      __$$ActionRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$ActionRegisterModelImplCopyWithImpl<$Res>
    extends _$ActionRegisterModelCopyWithImpl<$Res, _$ActionRegisterModelImpl>
    implements _$$ActionRegisterModelImplCopyWith<$Res> {
  __$$ActionRegisterModelImplCopyWithImpl(_$ActionRegisterModelImpl _value,
      $Res Function(_$ActionRegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$ActionRegisterModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionRegisterModelImpl implements _ActionRegisterModel {
  _$ActionRegisterModelImpl({required this.token});

  factory _$ActionRegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionRegisterModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'ActionRegisterModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionRegisterModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionRegisterModelImplCopyWith<_$ActionRegisterModelImpl> get copyWith =>
      __$$ActionRegisterModelImplCopyWithImpl<_$ActionRegisterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionRegisterModelImplToJson(
      this,
    );
  }
}

abstract class _ActionRegisterModel implements ActionRegisterModel {
  factory _ActionRegisterModel({required final String token}) =
      _$ActionRegisterModelImpl;

  factory _ActionRegisterModel.fromJson(Map<String, dynamic> json) =
      _$ActionRegisterModelImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ActionRegisterModelImplCopyWith<_$ActionRegisterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
