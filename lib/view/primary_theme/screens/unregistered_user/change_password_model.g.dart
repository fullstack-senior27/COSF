// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordRequest _$$_ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordRequest(
      oldPassword: json['oldPassword'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$$_ChangePasswordRequestToJson(
        _$_ChangePasswordRequest instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };

_$_ChangePasswordResponse _$$_ChangePasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChangePasswordResponseToJson(
        _$_ChangePasswordResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
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
