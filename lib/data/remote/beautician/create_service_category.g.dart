// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_service_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateServiceCategoryRequest _$$_CreateServiceCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateServiceCategoryRequest(
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_CreateServiceCategoryRequestToJson(
        _$_CreateServiceCategoryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };

_$_CreateServiceCategoryResponse _$$_CreateServiceCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateServiceCategoryResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateServiceCategoryResponseToJson(
        _$_CreateServiceCategoryResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      name: json['name'] as String?,
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };
