// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteCardResponse _$$_DeleteCardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteCardResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeleteCardResponseToJson(
        _$_DeleteCardResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String,
      object: json['object'] as String,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };
