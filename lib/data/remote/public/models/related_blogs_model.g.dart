// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_blogs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RelatedBlogsResponse _$$_RelatedBlogsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RelatedBlogsResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RelatedBlogsResponseToJson(
        _$_RelatedBlogsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      blogCategory: json['blogCategory'] == null
          ? null
          : BlogCategory.fromJson(json['blogCategory'] as Map<String, dynamic>),
      author: json['author'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'blogCategory': instance.blogCategory,
      'author': instance.author,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

_$_BlogCategory _$$_BlogCategoryFromJson(Map<String, dynamic> json) =>
    _$_BlogCategory(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_BlogCategoryToJson(_$_BlogCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
