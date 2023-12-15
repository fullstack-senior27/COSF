// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_clients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllClients _$$_GetAllClientsFromJson(Map<String, dynamic> json) =>
    _$_GetAllClients(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAllClientsToJson(_$_GetAllClients instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as String?,
      beautician: json['beautician'] as String?,
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      offlineClient: json['offlineClient'],
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'beautician': instance.beautician,
      'client': instance.client,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'offlineClient': instance.offlineClient,
    };

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      image: json['image'],
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      customerId: json['customerId'] as String?,
      isOffline: json['isOffline'] as bool?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      homeNumber: json['homeNumber'] as String?,
      streetAddress: json['streetAddress'] as String?,
      apt: json['apt'] as int?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'image': instance.image,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'customerId': instance.customerId,
      'isOffline': instance.isOffline,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'homeNumber': instance.homeNumber,
      'streetAddress': instance.streetAddress,
      'apt': instance.apt,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'birthday': instance.birthday?.toIso8601String(),
      'id': instance.id,
    };
