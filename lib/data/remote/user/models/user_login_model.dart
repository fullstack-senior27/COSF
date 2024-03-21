import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_model.freezed.dart';
part 'user_login_model.g.dart';

UserLoginRequest userLoginRequestFromJson(String str) =>
    UserLoginRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String userLoginRequestToJson(UserLoginRequest data) =>
    json.encode(data.toJson());

@freezed
class UserLoginRequest with _$UserLoginRequest {
  const factory UserLoginRequest({
    String? email,
    String? password,
  }) = _UserLoginRequest;

  factory UserLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$UserLoginRequestFromJson(json);
}

UserLoginResponse userLoginResponseFromJson(String str) =>
    UserLoginResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String userLoginResponseToJson(UserLoginResponse data) =>
    json.encode(data.toJson());

@freezed
class UserLoginResponse with _$UserLoginResponse {
  const factory UserLoginResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
    String? accessToken,
    String? refreshToken,
  }) = _UserLoginResponse;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic? image,
    String? role,
    bool? isEmailVerified,
    String? customerId,
    String? name,
    String? phone,
    String? email,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
