// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBeauticianAvailability _$$_GetBeauticianAvailabilityFromJson(
        Map<String, dynamic> json) =>
    _$_GetBeauticianAvailability(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetBeauticianAvailabilityToJson(
        _$_GetBeauticianAvailability instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      date: json['date'],
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isAvailable': instance.isAvailable,
      '_id': instance.id,
    };
