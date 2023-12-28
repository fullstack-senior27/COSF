// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianAvailabilityResponse _$$_BeauticianAvailabilityResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianAvailabilityResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticianAvailabilityResponseToJson(
        _$_BeauticianAvailabilityResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
      slots: json['slots'] == null
          ? null
          : Slots.fromJson(json['slots'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'days': instance.days,
      'slots': instance.slots,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      isAvailable: json['isAvailable'] as bool?,
      day: json['day'] as String?,
      id: json['_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'day': instance.day,
      '_id': instance.id,
      'date': instance.date?.toIso8601String(),
    };

_$_Slots _$$_SlotsFromJson(Map<String, dynamic> json) => _$_Slots(
      morning: (json['morning'] as List<dynamic>?)
          ?.map((e) => Afternoon.fromJson(e as Map<String, dynamic>))
          .toList(),
      afternoon: (json['afternoon'] as List<dynamic>?)
          ?.map((e) => Afternoon.fromJson(e as Map<String, dynamic>))
          .toList(),
      evening: (json['evening'] as List<dynamic>?)
          ?.map((e) => Afternoon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SlotsToJson(_$_Slots instance) => <String, dynamic>{
      'morning': instance.morning,
      'afternoon': instance.afternoon,
      'evening': instance.evening,
    };

_$_Afternoon _$$_AfternoonFromJson(Map<String, dynamic> json) => _$_Afternoon(
      isBooked: json['isBooked'] as bool?,
      time: json['time'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_AfternoonToJson(_$_Afternoon instance) =>
    <String, dynamic>{
      'isBooked': instance.isBooked,
      'time': instance.time,
      '_id': instance.id,
    };
