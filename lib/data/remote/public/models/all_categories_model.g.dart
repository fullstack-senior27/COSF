// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllBlogCategoriesResponse _$$_AllBlogCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AllBlogCategoriesResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllBlogCategoriesResponseToJson(
        _$_AllBlogCategoriesResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
