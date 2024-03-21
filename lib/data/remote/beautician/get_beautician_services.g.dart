// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_beautician_services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianServicesRequest _$$_BeauticianServicesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianServicesRequest(
      beauticianId: json['beauticianId'] as String?,
    );

Map<String, dynamic> _$$_BeauticianServicesRequestToJson(
        _$_BeauticianServicesRequest instance) =>
    <String, dynamic>{
      'beauticianId': instance.beauticianId,
    };

_$_BeauticianServicesResponse _$$_BeauticianServicesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianServicesResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BeauticianServicesResponseToJson(
        _$_BeauticianServicesResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      isAvailable: json['isAvailable'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      serviceCategory: json['service_category'] == null
          ? null
          : Service.fromJson(json['service_category'] as Map<String, dynamic>),
      serviceType: json['service_type'] == null
          ? null
          : Service.fromJson(json['service_type'] as Map<String, dynamic>),
      beautician: json['beautician'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'durationInMinutes': instance.durationInMinutes,
      'service_category': instance.serviceCategory,
      'service_type': instance.serviceType,
      'beautician': instance.beautician,
      'id': instance.id,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
