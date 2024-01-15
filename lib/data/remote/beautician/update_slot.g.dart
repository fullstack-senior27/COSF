// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateSlotRequest _$$_UpdateSlotRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateSlotRequest(
      morning: (json['morning'] as List<dynamic>?)
          ?.map((e) => Slots.fromJson(e as Map<String, dynamic>))
          .toList(),
      afternoon: (json['afternoon'] as List<dynamic>?)
          ?.map((e) => Slots.fromJson(e as Map<String, dynamic>))
          .toList(),
      evening: (json['evening'] as List<dynamic>?)
          ?.map((e) => Slots.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UpdateSlotRequestToJson(
        _$_UpdateSlotRequest instance,) =>
    <String, dynamic>{
      'morning': instance.morning,
      'afternoon': instance.afternoon,
      'evening': instance.evening,
    };

_$_Slots _$$_SlotsFromJson(Map<String, dynamic> json) => _$_Slots(
      time: json['time'] as String?,
      isBooked: json['isBooked'] as bool?,
    );

Map<String, dynamic> _$$_SlotsToJson(_$_Slots instance) => <String, dynamic>{
      'time': instance.time,
      'isBooked': instance.isBooked,
    };

_$_UpdateSlotResponse _$$_UpdateSlotResponseFromJson(
        Map<String, dynamic> json,) =>
    _$_UpdateSlotResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateSlotResponseToJson(
        _$_UpdateSlotResponse instance,) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => const _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
