// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddNoteRequest _$$_AddNoteRequestFromJson(Map<String, dynamic> json) =>
    _$_AddNoteRequest(
      note: json['note'] as String?,
      formula: json['formula'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      client: json['client'] as String?,
    );

Map<String, dynamic> _$$_AddNoteRequestToJson(_$_AddNoteRequest instance) =>
    <String, dynamic>{
      'note': instance.note,
      'formula': instance.formula,
      'products': instance.products,
      'client': instance.client,
    };
