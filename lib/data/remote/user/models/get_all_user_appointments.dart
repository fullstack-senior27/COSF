// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_user_appointments.freezed.dart';
part 'get_all_user_appointments.g.dart';

GetAllUserAppointments getAllUserAppointmentsFromJson(String str) =>
    GetAllUserAppointments.fromJson(json.decode(str) as Map<String, dynamic>);

String getAllUserAppointmentsToJson(GetAllUserAppointments data) =>
    json.encode(data.toJson());

@freezed
class GetAllUserAppointments with _$GetAllUserAppointments {
  const factory GetAllUserAppointments({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _GetAllUserAppointments;

  factory GetAllUserAppointments.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserAppointmentsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<Result>? results,
    int? totalPages,
    int? currentPage,
    int? limit,
    int? totalResults,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<Service>? services,
    String? status,
    String? paymentStatus,
    @JsonKey(name: "_id") String? id,
    Beautician? beautician,
    DateTime? date,
    String? zipcode,
    // Beautician? user,
    int? amount,
    String? timeSlot,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Beautician with _$Beautician {
  const factory Beautician({
    String? name,
    String? id,
  }) = _Beautician;

  factory Beautician.fromJson(Map<String, dynamic> json) =>
      _$BeauticianFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    bool? isAvailable,
    String? name,
    int? price,
    String? description,
    int? durationInMinutes,
    @JsonKey(name: 'service_category') String? serviceCategory,
    @JsonKey(name: 'service_type') String? serviceType,
    String? beautician,
    String? id,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
