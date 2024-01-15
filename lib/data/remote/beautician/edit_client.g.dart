// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditClientRequest _$$_EditClientRequestFromJson(Map<String, dynamic> json) =>
    _$_EditClientRequest(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      homeNumber: json['homeNumber'] as String?,
      streetAddress: json['streetAddress'] as String?,
      apt: json['apt'] as int?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$$_EditClientRequestToJson(
        _$_EditClientRequest instance,) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'homeNumber': instance.homeNumber,
      'streetAddress': instance.streetAddress,
      'apt': instance.apt,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'birthday': instance.birthday,
    };

_$_EditClientResponse _$$_EditClientResponseFromJson(
        Map<String, dynamic> json,) =>
    _$_EditClientResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$_EditClientResponseToJson(
        _$_EditClientResponse instance,) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
    };
