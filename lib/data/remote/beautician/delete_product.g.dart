// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteProductResponse _$$_DeleteProductResponseFromJson(
  Map<String, dynamic> json,
) =>
    _$_DeleteProductResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeleteProductResponseToJson(
  _$_DeleteProductResponse instance,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
