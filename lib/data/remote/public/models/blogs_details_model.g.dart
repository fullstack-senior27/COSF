// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogDetailsResponse _$$_BlogDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BlogDetailsResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BlogDetailsResponseToJson(
        _$_BlogDetailsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      blogCategory: json['blogCategory'],
      author: json['author'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'blogCategory': instance.blogCategory,
      'author': instance.author,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
