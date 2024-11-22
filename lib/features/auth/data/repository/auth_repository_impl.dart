import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:piton_test_case/core/enums/local_storage_key.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/services/local/local_storage_service_impl.dart';
import 'package:piton_test_case/core/services/network/dio_service_impl.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/data/model/login/resp/login_response_model.dart';
import 'package:piton_test_case/features/auth/data/model/register/req/register_request_model.dart';
import 'package:piton_test_case/features/auth/data/model/register/resp/register_response_model.dart';
import 'package:piton_test_case/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.dioService);
  late final DioService dioService;

  @override
  Future<bool> isRememberMe() async {
    final localStorageService = GetIt.instance<LocalStorageService>();
    final rememberMe = localStorageService
            .retrieveData<bool>(LocalStorageKey.isRememberMe.value) ??
        false;

    return rememberMe;
  }

  @override
  Future<LoginResponseModel> handleLogin(
    BuildContext context, {
    required String endpoint,
    required LoginRequestModel loginRequestModel,
  }) async {
    try {
      final response = await dioService.post<Map<String, dynamic>>(
        endpoint,
        data: loginRequestModel.toJson(),
      );
      return LoginResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? 'An error occurred',
      );
    }
    return LoginResponseModel.fromJson({});
  }

  @override
  Future<RegisterResponseModel> handleRegister(
    BuildContext context, {
    required String endpoint,
    required RegisterRequestModel registerRequestModel,
  }) async {
    try {
      final response = await dioService.post<Map<String, dynamic>>(
        endpoint,
        data: registerRequestModel.toJson(),
      );
      return RegisterResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? 'An error occurred',
      );
    }
    return RegisterResponseModel.fromJson({});
  }
}
