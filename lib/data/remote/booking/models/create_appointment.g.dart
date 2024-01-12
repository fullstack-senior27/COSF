// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAppointmentRequest _$$_CreateAppointmentRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAppointmentRequest(
      user: json['user'] as String?,
      beautician: json['beautician'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      timeSlot: json['timeSlot'] as String?,
      zipcode: json['zipcode'] as String?,
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CreateAppointmentRequestToJson(
        _$_CreateAppointmentRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'beautician': instance.beautician,
      'date': instance.date?.toIso8601String(),
      'timeSlot': instance.timeSlot,
      'zipcode': instance.zipcode,
      'services': instance.services,
    };

_$_CreateAppointmentResponse _$$_CreateAppointmentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAppointmentResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateAppointmentResponseToJson(
        _$_CreateAppointmentResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      id: json['_id'] as String?,
      beautician: json['beautician'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      zipcode: json['zipcode'] as String?,
      user: json['user'] as String?,
      amount: json['amount'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'services': instance.services,
      'status': instance.status,
      'paymentStatus': instance.paymentStatus,
      '_id': instance.id,
      'beautician': instance.beautician,
      'date': instance.date?.toIso8601String(),
      'zipcode': instance.zipcode,
      'user': instance.user,
      'amount': instance.amount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
