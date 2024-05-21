import 'package:e_commerce_app/core/services/graphql/api_result.dart';
import 'package:e_commerce_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:e_commerce_app/features/auth/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/auth/data/models/login_response.dart';

class AuthRepo {
  final AuthDataSource _dataSource;

  AuthRepo(this._dataSource);

  // Login
  Future<ApiResult<LoginRespose>> login(LoginRequestBody body) async {
    try {
      final response = await _dataSource.login(body: body);
      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure('Somethign went wrong please try again');
    }
  }
}
