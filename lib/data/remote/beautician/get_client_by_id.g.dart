// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetClientById _$$_GetClientByIdFromJson(Map<String, dynamic> json) =>
    _$_GetClientById(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetClientByIdToJson(_$_GetClientById instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      photos: json['photos'] as List<dynamic>?,
      clientNote: (json['clientNote'] as List<dynamic>?)
          ?.map((e) => ClientNote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'client': instance.client,
      'photos': instance.photos,
      'clientNote': instance.clientNote,
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

_$_ClientNote _$$_ClientNoteFromJson(Map<String, dynamic> json) =>
    _$_ClientNote(
      note: json['note'] as String?,
      formula: json['formula'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['_id'] as String?,
      client: json['client'] as String?,
      beautician: json['beautician'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_ClientNoteToJson(_$_ClientNote instance) =>
    <String, dynamic>{
      'note': instance.note,
      'formula': instance.formula,
      'products': instance.products,
      '_id': instance.id,
      'client': instance.client,
      'beautician': instance.beautician,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
