// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beautician_earnings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianEarnings _$$_BeauticianEarningsFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianEarnings(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BeauticianEarningsToJson(
        _$_BeauticianEarnings instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      bookingDateTime: json['bookingDateTime'] == null
          ? null
          : BookingDateTime.fromJson(
              json['bookingDateTime'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      beautician: json['beautician'] as String?,
      fee: json['fee'] as int?,
      tip: json['tip'] as int?,
      paymentMethod: json['paymentMethod'] as String?,
      status: json['status'] as String?,
      appointment: json['appointment'] as String?,
      totalAmount: json['totalAmount'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'bookingDateTime': instance.bookingDateTime,
      '_id': instance.id,
      'beautician': instance.beautician,
      'fee': instance.fee,
      'tip': instance.tip,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'appointment': instance.appointment,
      'totalAmount': instance.totalAmount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

_$_BookingDateTime _$$_BookingDateTimeFromJson(Map<String, dynamic> json) =>
    _$_BookingDateTime(
      timeSlot: json['timeSlot'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_BookingDateTimeToJson(_$_BookingDateTime instance) =>
    <String, dynamic>{
      'timeSlot': instance.timeSlot,
      'date': instance.date?.toIso8601String(),
    };
