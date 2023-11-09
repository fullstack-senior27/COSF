import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'change_password_model.freezed.dart';
part 'change_password_model.g.dart';

ChangePasswordRequest changePasswordRequestFromJson(String str) =>
    ChangePasswordRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String changePasswordRequestToJson(ChangePasswordRequest data) =>
    json.encode(data.toJson());

@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    String? oldPassword,
    String? newPassword,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
}

ChangePasswordResponse changePasswordResponseFromJson(String str) =>
    ChangePasswordResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String changePasswordResponseToJson(ChangePasswordResponse data) =>
    json.encode(data.toJson());

@freezed
class ChangePasswordResponse with _$ChangePasswordResponse {
  const factory ChangePasswordResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _ChangePasswordResponse;

  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseFromJson(json);
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
