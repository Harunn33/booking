import 'package:flutter/material.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/data/model/login/resp/login_response_model.dart';
import 'package:piton_test_case/features/auth/data/model/register/req/register_request_model.dart';
import 'package:piton_test_case/features/auth/data/model/register/resp/register_response_model.dart';

abstract class AuthRepository {
  Future<bool> isRememberMe();
  Future<LoginResponseModel> handleLogin(
    BuildContext context, {
    required String endpoint,
    required LoginRequestModel loginRequestModel,
  });
  Future<RegisterResponseModel> handleRegister(
    BuildContext context, {
    required String endpoint,
    required RegisterRequestModel registerRequestModel,
  });
}
