import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/core/services/graphql/api_result.dart';
import 'package:e_commerce_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:e_commerce_app/features/auth/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/auth/data/models/login_response.dart';
import 'package:e_commerce_app/features/auth/data/user_role_response.dart';

class AuthRepo {
  final AuthDataSource _dataSource;

  AuthRepo(this._dataSource);

  // Login
  Future<ApiResult<LoginRespose>> login(LoginRequestBody body) async {
    try {
      final response = await _dataSource.login(body: body);
      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(LangKeys.loggedError);
    }
  }

  Future<UserRoleResponse> userRole(String token) async {
    final response = await _dataSource.userRole(token);
    return response;
  }
}
