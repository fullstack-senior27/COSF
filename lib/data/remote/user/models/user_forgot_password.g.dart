// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_forgot_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserForgotPasswordRequest _$$_UserForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UserForgotPasswordRequest(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UserForgotPasswordRequestToJson(
        _$_UserForgotPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$_UserForgotPasswordResponse _$$_UserForgotPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserForgotPasswordResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$_UserForgotPasswordResponseToJson(
        _$_UserForgotPasswordResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };
