// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get isRememberMe => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  GlobalKey<FormState> get loginFormKey => throw _privateConstructorUsedError;
  GlobalKey<FormState> get registerFormKey =>
      throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isRememberMe,
      bool isLoading,
      GlobalKey<FormState> loginFormKey,
      GlobalKey<FormState> registerFormKey,
      String token});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRememberMe = null,
    Object? isLoading = null,
    Object? loginFormKey = null,
    Object? registerFormKey = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      isRememberMe: null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFormKey: null == loginFormKey
          ? _value.loginFormKey
          : loginFormKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      registerFormKey: null == registerFormKey
          ? _value.registerFormKey
          : registerFormKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRememberMe,
      bool isLoading,
      GlobalKey<FormState> loginFormKey,
      GlobalKey<FormState> registerFormKey,
      String token});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRememberMe = null,
    Object? isLoading = null,
    Object? loginFormKey = null,
    Object? registerFormKey = null,
    Object? token = null,
  }) {
    return _then(_$AuthStateImpl(
      isRememberMe: null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFormKey: null == loginFormKey
          ? _value.loginFormKey
          : loginFormKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      registerFormKey: null == registerFormKey
          ? _value.registerFormKey
          : registerFormKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isRememberMe,
      required this.isLoading,
      required this.loginFormKey,
      required this.registerFormKey,
      required this.token});

  @override
  final bool isRememberMe;
  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> loginFormKey;
  @override
  final GlobalKey<FormState> registerFormKey;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthState(isRememberMe: $isRememberMe, isLoading: $isLoading, loginFormKey: $loginFormKey, registerFormKey: $registerFormKey, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isRememberMe, isRememberMe) ||
                other.isRememberMe == isRememberMe) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loginFormKey, loginFormKey) ||
                other.loginFormKey == loginFormKey) &&
            (identical(other.registerFormKey, registerFormKey) ||
                other.registerFormKey == registerFormKey) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRememberMe, isLoading,
      loginFormKey, registerFormKey, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isRememberMe,
      required final bool isLoading,
      required final GlobalKey<FormState> loginFormKey,
      required final GlobalKey<FormState> registerFormKey,
      required final String token}) = _$AuthStateImpl;

  @override
  bool get isRememberMe;
  @override
  bool get isLoading;
  @override
  GlobalKey<FormState> get loginFormKey;
  @override
  GlobalKey<FormState> get registerFormKey;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
