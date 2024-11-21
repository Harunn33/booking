import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/services/network/dio_service.dart';
import 'package:piton_test_case/features/auth/data/model/login/req/login_request_model.dart';
import 'package:piton_test_case/features/auth/data/model/login/resp/login_response_model.dart';
import 'package:piton_test_case/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.dioService);
  late final DioService dioService;

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
      if (response.statusCode != 200 || response.statusCode != 201) {
        context.showSnackBar(
          response.statusMessage ?? 'An error occurred',
        );
      }
      return LoginResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? 'An error occurred',
      );
    }
    return LoginResponseModel.fromJson({});
  }
}
