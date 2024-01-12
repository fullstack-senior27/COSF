// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_user_appointments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllUserAppointments _$$_GetAllUserAppointmentsFromJson(
        Map<String, dynamic> json) =>
    _$_GetAllUserAppointments(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetAllUserAppointmentsToJson(
        _$_GetAllUserAppointments instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
      limit: json['limit'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'results': instance.results,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'limit': instance.limit,
      'totalResults': instance.totalResults,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      id: json['_id'] as String?,
      beautician: json['beautician'] == null
          ? null
          : Beautician.fromJson(json['beautician'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      zipcode: json['zipcode'] as String?,
      amount: json['amount'] as int?,
      timeSlot: json['timeSlot'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'services': instance.services,
      'status': instance.status,
      'paymentStatus': instance.paymentStatus,
      '_id': instance.id,
      'beautician': instance.beautician,
      'date': instance.date?.toIso8601String(),
      'zipcode': instance.zipcode,
      'amount': instance.amount,
      'timeSlot': instance.timeSlot,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

_$_Beautician _$$_BeauticianFromJson(Map<String, dynamic> json) =>
    _$_Beautician(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_BeauticianToJson(_$_Beautician instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      isAvailable: json['isAvailable'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      serviceCategory: json['service_category'] as String?,
      serviceType: json['service_type'] as String?,
      beautician: json['beautician'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'durationInMinutes': instance.durationInMinutes,
      'service_category': instance.serviceCategory,
      'service_type': instance.serviceType,
      'beautician': instance.beautician,
      'id': instance.id,
    };
