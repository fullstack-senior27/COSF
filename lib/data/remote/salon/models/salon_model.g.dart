// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalonResponseModel _$$_SalonResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalonResponseModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Salon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalonResponseModelToJson(
        _$_SalonResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Salon _$$_SalonFromJson(Map<String, dynamic> json) => _$_Salon(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      isVerified: json['isVerified'] as bool?,
      morning:
          (json['morning'] as List<dynamic>?)?.map((e) => e as String).toList(),
      afternoon: (json['afternoon'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      beautician: json['beautician'] == null
          ? null
          : Beautician.fromJson(json['beautician'] as Map<String, dynamic>),
      name: json['name'] as String?,
      address: json['address'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingCount: json['ratingCount'] as int?,
      avgRating: (json['avgRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SalonToJson(_$_Salon instance) => <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'isVerified': instance.isVerified,
      'morning': instance.morning,
      'afternoon': instance.afternoon,
      'beautician': instance.beautician,
      'name': instance.name,
      'address': instance.address,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
      'services': instance.services,
      'ratingCount': instance.ratingCount,
      'avgRating': instance.avgRating,
    };

_$_Beautician _$$_BeauticianFromJson(Map<String, dynamic> json) =>
    _$_Beautician(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_BeauticianToJson(_$_Beautician instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'email': instance.email,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      price: json['price'] as int?,
      salon: json['salon'] as String?,
      serviceType: json['serviceType'] as String?,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'time': instance.time,
      'price': instance.price,
      'salon': instance.salon,
      'serviceType': instance.serviceType,
    };
