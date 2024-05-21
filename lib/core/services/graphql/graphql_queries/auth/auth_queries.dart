import 'package:e_commerce_app/features/auth/data/models/login_request_body.dart';

class AuthQueries {
  const AuthQueries._();
  static const AuthQueries _instance = AuthQueries._();
  factory AuthQueries() {
    return _instance;
  }
  Map<String, dynamic> loginMapQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
              mutation Login($email: String! , $password: String!) {
              login(email: $email, password: $password) {
              access_token
              refresh_token
             }
          }
          ''',
      'variables': {
        'email': body.email,
        'password': body.password,
      }
    };
  }
}
