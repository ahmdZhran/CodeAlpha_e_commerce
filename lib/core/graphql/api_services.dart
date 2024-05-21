import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/auth/data/models/login_response.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

const String baseUrl = "https://api.escuelajs.co";
const String graphql = "/graphql";

@RestApi(baseUrl: baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(graphql)
  Future<LoginRespose> login(
    @Body() Map<String, dynamic> mutation,
  );
}
