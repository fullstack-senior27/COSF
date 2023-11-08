import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_register_model.freezed.dart';
part 'user_register_model.g.dart';

UserRegisterRequest userRegisterRequestFromJson(String str) =>
    UserRegisterRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String userRegisterRequestToJson(UserRegisterRequest data) =>
    json.encode(data.toJson());

@freezed
class UserRegisterRequest with _$UserRegisterRequest {
  const factory UserRegisterRequest({
    String? name,
    String? phone,
    String? email,
    String? password,
    String? role,
  }) = _UserRegisterRequest;

  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterRequestFromJson(json);
}

UserRegisterResponse userRegisterResponseFromJson(String str) =>
    UserRegisterResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String userRegisterResponseToJson(UserRegisterResponse data) =>
    json.encode(data.toJson());

@freezed
class UserRegisterResponse with _$UserRegisterResponse {
  const factory UserRegisterResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
    String? accessToken,
    String? refreshToken,
  }) = _UserRegisterResponse;

  factory UserRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic image,
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
