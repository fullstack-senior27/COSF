// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateServiceRequest _$$_CreateServiceRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateServiceRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      price: json['price'] as int?,
      category: json['category'] as String?,
      serviceType: json['serviceType'] as String?,
    );

Map<String, dynamic> _$$_CreateServiceRequestToJson(
        _$_CreateServiceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'durationInMinutes': instance.durationInMinutes,
      'price': instance.price,
      'category': instance.category,
      'serviceType': instance.serviceType,
    };

_$_CreateServiceResponse _$$_CreateServiceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateServiceResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateServiceResponseToJson(
        _$_CreateServiceResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      isAvailable: json['isAvailable'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      serviceCategory: json['serviceCategory'] as String?,
      serviceType: json['serviceType'] as String?,
      beautician: json['beautician'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'durationInMinutes': instance.durationInMinutes,
      'serviceCategory': instance.serviceCategory,
      'serviceType': instance.serviceType,
      'beautician': instance.beautician,
      'id': instance.id,
    };
