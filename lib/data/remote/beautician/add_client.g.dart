// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddClientRequest _$$_AddClientRequestFromJson(Map<String, dynamic> json) =>
    _$_AddClientRequest(
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
      isOffline: json['isOffline'] as bool?,
    );

Map<String, dynamic> _$$_AddClientRequestToJson(_$_AddClientRequest instance) =>
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
      'isOffline': instance.isOffline,
    };

_$_AddClientResponse _$$_AddClientResponseFromJson(Map<String, dynamic> json) =>
    _$_AddClientResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddClientResponseToJson(
        _$_AddClientResponse instance,) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String?,
      beautician: json['beautician'] as String?,
      client: json['client'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'beautician': instance.beautician,
      'client': instance.client,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
