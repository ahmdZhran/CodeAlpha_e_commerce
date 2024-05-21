// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginRespose {
  LoginDataModel data;
  LoginRespose(this.data);
  factory LoginRespose.fromJson(Map<String, dynamic> json) =>
      _$LoginResposeFromJson(json);
}

@JsonSerializable()
class LoginDataModel {
  LoginModel login;
  LoginDataModel(this.login);
  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}

@JsonSerializable()
class LoginModel {
  LoginModel({
    required this.accessToken,
    required this.refreshToken,
  });
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  @JsonKey(name: "access_token")
  final String? accessToken;
  @JsonKey(name: "refresh_token")
  final String? refreshToken;
}
