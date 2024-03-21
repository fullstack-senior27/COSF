// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegisterRequest _$$_UserRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UserRegisterRequest(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_UserRegisterRequestToJson(
        _$_UserRegisterRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };

_$_UserRegisterResponse _$$_UserRegisterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserRegisterResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_UserRegisterResponseToJson(
        _$_UserRegisterResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      image: json['image'],
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      customerId: json['customerId'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'image': instance.image,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'customerId': instance.customerId,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'id': instance.id,
    };
