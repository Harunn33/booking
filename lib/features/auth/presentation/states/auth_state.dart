import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isRememberMe,
    required bool isLoading,
    required GlobalKey<FormState> formKey,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isRememberMe: false,
        isLoading: false,
        formKey: GlobalKey<FormState>(),
      );
}
