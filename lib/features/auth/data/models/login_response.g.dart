// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRespose _$LoginResposeFromJson(Map<String, dynamic> json) => LoginRespose(
      LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResposeToJson(LoginRespose instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    LoginDataModel(
      LoginModel.fromJson(json['login'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginDataModelToJson(LoginDataModel instance) =>
    <String, dynamic>{
      'login': instance.login,
    };

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
