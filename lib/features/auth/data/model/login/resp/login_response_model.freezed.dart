// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  @JsonKey(name: 'action_login')
  ActionLoginModel get actionLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'action_login') ActionLoginModel actionLogin});

  $ActionLoginModelCopyWith<$Res> get actionLogin;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionLogin = null,
  }) {
    return _then(_value.copyWith(
      actionLogin: null == actionLogin
          ? _value.actionLogin
          : actionLogin // ignore: cast_nullable_to_non_nullable
              as ActionLoginModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionLoginModelCopyWith<$Res> get actionLogin {
    return $ActionLoginModelCopyWith<$Res>(_value.actionLogin, (value) {
      return _then(_value.copyWith(actionLogin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'action_login') ActionLoginModel actionLogin});

  @override
  $ActionLoginModelCopyWith<$Res> get actionLogin;
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionLogin = null,
  }) {
    return _then(_$LoginResponseModelImpl(
      actionLogin: null == actionLogin
          ? _value.actionLogin
          : actionLogin // ignore: cast_nullable_to_non_nullable
              as ActionLoginModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  _$LoginResponseModelImpl(
      {@JsonKey(name: 'action_login') required this.actionLogin});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'action_login')
  final ActionLoginModel actionLogin;

  @override
  String toString() {
    return 'LoginResponseModel(actionLogin: $actionLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.actionLogin, actionLogin) ||
                other.actionLogin == actionLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actionLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  factory _LoginResponseModel(
      {@JsonKey(name: 'action_login')
      required final ActionLoginModel actionLogin}) = _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'action_login')
  ActionLoginModel get actionLogin;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionLoginModel _$ActionLoginModelFromJson(Map<String, dynamic> json) {
  return _ActionLoginModel.fromJson(json);
}

/// @nodoc
mixin _$ActionLoginModel {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionLoginModelCopyWith<ActionLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionLoginModelCopyWith<$Res> {
  factory $ActionLoginModelCopyWith(
          ActionLoginModel value, $Res Function(ActionLoginModel) then) =
      _$ActionLoginModelCopyWithImpl<$Res, ActionLoginModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$ActionLoginModelCopyWithImpl<$Res, $Val extends ActionLoginModel>
    implements $ActionLoginModelCopyWith<$Res> {
  _$ActionLoginModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ActionLoginModelImplCopyWith<$Res>
    implements $ActionLoginModelCopyWith<$Res> {
  factory _$$ActionLoginModelImplCopyWith(_$ActionLoginModelImpl value,
          $Res Function(_$ActionLoginModelImpl) then) =
      __$$ActionLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$ActionLoginModelImplCopyWithImpl<$Res>
    extends _$ActionLoginModelCopyWithImpl<$Res, _$ActionLoginModelImpl>
    implements _$$ActionLoginModelImplCopyWith<$Res> {
  __$$ActionLoginModelImplCopyWithImpl(_$ActionLoginModelImpl _value,
      $Res Function(_$ActionLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$ActionLoginModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionLoginModelImpl implements _ActionLoginModel {
  _$ActionLoginModelImpl({required this.token});

  factory _$ActionLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionLoginModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'ActionLoginModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionLoginModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionLoginModelImplCopyWith<_$ActionLoginModelImpl> get copyWith =>
      __$$ActionLoginModelImplCopyWithImpl<_$ActionLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionLoginModelImplToJson(
      this,
    );
  }
}

abstract class _ActionLoginModel implements ActionLoginModel {
  factory _ActionLoginModel({required final String token}) =
      _$ActionLoginModelImpl;

  factory _ActionLoginModel.fromJson(Map<String, dynamic> json) =
      _$ActionLoginModelImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ActionLoginModelImplCopyWith<_$ActionLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
