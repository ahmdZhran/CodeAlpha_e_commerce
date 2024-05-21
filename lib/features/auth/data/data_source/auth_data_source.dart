import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/services/graphql/api_services.dart';
import 'package:e_commerce_app/core/services/graphql/graphql_queries/auth/auth_queries.dart';
import 'package:e_commerce_app/features/auth/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/auth/data/models/login_response.dart';
import 'package:e_commerce_app/features/auth/data/user_role_response.dart';
import 'package:flutter/material.dart';

class AuthDataSource {
  final ApiServices _graphql;

  AuthDataSource(this._graphql);

  //Login
  Future<LoginRespose> login({required LoginRequestBody body}) async {
    final response =
        await _graphql.login(AuthQueries().loginMapQuery(body: body));
    return response;
  }

  Future<UserRoleResponse> userRole(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiServices(dio);

    final response = await client.userRole();
    debugPrint('User Role => ${response.uesrRole}');
    return response;
  }
}
