import 'package:e_commerce_app/core/services/graphql/api_services.dart';
import 'package:e_commerce_app/core/services/graphql/graphql_queries/auth/auth_queries.dart';
import 'package:e_commerce_app/features/auth/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/auth/data/models/login_response.dart';

class AuthDataSource {
  final ApiServices _graphql;

  AuthDataSource(this._graphql);

  //Login
  Future<LoginRespose> login({required LoginRequestBody body}) async {
    final response =
        await _graphql.login(AuthQueries().loginMapQuery(body: body));
    return response;
  }
}
