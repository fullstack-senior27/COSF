// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServicesResponseModel _$$_ServicesResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServicesResponseModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServicesResponseModelToJson(
        _$_ServicesResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      name: json['name'] as String?,
      time: json['time'] as String?,
      price: json['price'] as int?,
      salon: json['salon'] == null
          ? null
          : Salon.fromJson(json['salon'] as Map<String, dynamic>),
      serviceType: json['service_type'] == null
          ? null
          : ServiceType.fromJson(json['service_type'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'price': instance.price,
      'salon': instance.salon,
      'service_type': instance.serviceType,
      'id': instance.id,
    };

_$_Salon _$$_SalonFromJson(Map<String, dynamic> json) => _$_Salon(
      services: json['services'] as List<dynamic>?,
      image: json['image'] as String?,
      isVerified: json['isVerified'] as bool?,
      morning:
          (json['morning'] as List<dynamic>?)?.map((e) => e as String).toList(),
      afternoon: (json['afternoon'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      beautician: json['beautician'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_SalonToJson(_$_Salon instance) => <String, dynamic>{
      'services': instance.services,
      'image': instance.image,
      'isVerified': instance.isVerified,
      'morning': instance.morning,
      'afternoon': instance.afternoon,
      'beautician': instance.beautician,
      'name': instance.name,
      'address': instance.address,
      'id': instance.id,
    };

_$_ServiceType _$$_ServiceTypeFromJson(Map<String, dynamic> json) =>
    _$_ServiceType(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceTypeToJson(_$_ServiceType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
