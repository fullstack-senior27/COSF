import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_forgot_password.freezed.dart';
part 'user_forgot_password.g.dart';

UserForgotPasswordRequest userForgotPasswordRequestFromJson(String str) =>
    UserForgotPasswordRequest.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String userForgotPasswordRequestToJson(UserForgotPasswordRequest data) =>
    json.encode(data.toJson());

@freezed
class UserForgotPasswordRequest with _$UserForgotPasswordRequest {
  const factory UserForgotPasswordRequest({
    String? email,
  }) = _UserForgotPasswordRequest;

  factory UserForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$UserForgotPasswordRequestFromJson(json);
}

UserForgotPasswordResponse userForgotPasswordResponseFromJson(String str) =>
    UserForgotPasswordResponse.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String userForgotPasswordResponseToJson(UserForgotPasswordResponse data) =>
    json.encode(data.toJson());

@freezed
class UserForgotPasswordResponse with _$UserForgotPasswordResponse {
  const factory UserForgotPasswordResponse({
    int? code,
    String? message,
    bool? isSuccess,
    String? data,
  }) = _UserForgotPasswordResponse;

  factory UserForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$UserForgotPasswordResponseFromJson(json);
}
