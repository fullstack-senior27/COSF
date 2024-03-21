// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_client_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddPhotoRequest _$$_AddPhotoRequestFromJson(Map<String, dynamic> json) =>
    _$_AddPhotoRequest(
      photoUrls: (json['photoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AddPhotoRequestToJson(_$_AddPhotoRequest instance) =>
    <String, dynamic>{
      'photoUrls': instance.photoUrls,
    };

_$_AddPhotoResponse _$$_AddPhotoResponseFromJson(Map<String, dynamic> json) =>
    _$_AddPhotoResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$_AddPhotoResponseToJson(_$_AddPhotoResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
    };
