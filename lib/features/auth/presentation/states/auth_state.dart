import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isRememberMe,
    required bool isLoading,
    required GlobalKey<FormState> loginFormKey,
    required GlobalKey<FormState> registerFormKey,
    required String token,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isRememberMe: false,
        isLoading: false,
        loginFormKey: GlobalKey<FormState>(),
        registerFormKey: GlobalKey<FormState>(),
        token: '',
      );
}
