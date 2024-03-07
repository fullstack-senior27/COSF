// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_service_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllServiceCategoryResponseModel
    _$$_GetAllServiceCategoryResponseModelFromJson(Map<String, dynamic> json) =>
        _$_GetAllServiceCategoryResponseModel(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_GetAllServiceCategoryResponseModelToJson(
        _$_GetAllServiceCategoryResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'id': instance.id,
    };
