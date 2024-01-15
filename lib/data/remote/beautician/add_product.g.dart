// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddProductRequest _$$_AddProductRequestFromJson(Map<String, dynamic> json) =>
    _$_AddProductRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_AddProductRequestToJson(
        _$_AddProductRequest instance,) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
    };

_$_AddProductResponse _$$_AddProductResponseFromJson(
        Map<String, dynamic> json,) =>
    _$_AddProductResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddProductResponseToJson(
        _$_AddProductResponse instance,) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      description: json['description'] as String?,
      link: json['link'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      id: json['_id'] as String?,
      title: json['title'] as String?,
      beautician: json['beautician'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'description': instance.description,
      'link': instance.link,
      'isAvailable': instance.isAvailable,
      '_id': instance.id,
      'title': instance.title,
      'beautician': instance.beautician,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
