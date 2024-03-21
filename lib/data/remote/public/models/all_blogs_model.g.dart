// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_blogs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogCategoryRequest _$$_BlogCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BlogCategoryRequest(
      blogCategory: json['blogCategory'] as String?,
    );

Map<String, dynamic> _$$_BlogCategoryRequestToJson(
        _$_BlogCategoryRequest instance) =>
    <String, dynamic>{
      'blogCategory': instance.blogCategory,
    };

_$_AllBlogsResponse _$$_AllBlogsResponseFromJson(Map<String, dynamic> json) =>
    _$_AllBlogsResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllBlogsResponseToJson(_$_AllBlogsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
      currentPage: json['currentPage'] as int,
      limit: json['limit'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'results': instance.results,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'limit': instance.limit,
      'totalResults': instance.totalResults,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      blogCategory: json['blog_category'] == null
          ? null
          : BlogCategory.fromJson(
              json['blog_category'] as Map<String, dynamic>),
      author: json['author'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'blog_category': instance.blogCategory,
      'author': instance.author,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

_$_BlogCategory _$$_BlogCategoryFromJson(Map<String, dynamic> json) =>
    _$_BlogCategory(
      id: json['_id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$_BlogCategoryToJson(_$_BlogCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
