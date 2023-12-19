// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetNotesResponse _$$_GetNotesResponseFromJson(Map<String, dynamic> json) =>
    _$_GetNotesResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetNotesResponseToJson(_$_GetNotesResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      note: json['note'] as String?,
      formula: json['formula'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
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

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
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

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
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
