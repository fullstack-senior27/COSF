// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateNoteRequest _$$_CreateNoteRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateNoteRequest(
      note: json['note'] as String?,
      formula: json['formula'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      client: json['client'] as String?,
    );

Map<String, dynamic> _$$_CreateNoteRequestToJson(
        _$_CreateNoteRequest instance) =>
    <String, dynamic>{
      'note': instance.note,
      'formula': instance.formula,
      'products': instance.products,
      'client': instance.client,
    };

_$_CreateNoteResponse _$$_CreateNoteResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateNoteResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateNoteResponseToJson(
        _$_CreateNoteResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      note: json['note'] as String?,
      formula: json['formula'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
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
