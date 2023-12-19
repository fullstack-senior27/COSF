// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProductsResponse _$$_GetProductsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetProductsResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetProductsResponseToJson(
        _$_GetProductsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
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

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
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
