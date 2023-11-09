import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

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
    String? id,
    Beautician? beautician,
    DateTime? date,
    String? zipcode,
    User? user,
    int? amount,
    String? startTime,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Beautician with _$Beautician {
  const factory Beautician({
    dynamic image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    dynamic about,
    String? website,
    bool? isEmailVerified,
    List<String>? speciality,
    List<String>? services,
    List<String>? serviceCategories,
    List<dynamic>? reviews,
    List<dynamic>? products,
    String? accountId,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<Availability>? availability,
    String? address,
    String? id,
  }) = _Beautician;

  factory Beautician.fromJson(Map<String, dynamic> json) =>
      _$BeauticianFromJson(json);
}

@freezed
class Availability with _$Availability {
  const factory Availability({
    DateTime? date,
    String? day,
    String? startTime,
    String? endTime,
    bool? isAvailable,
    String? id,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    bool? isAvailable,
    String? name,
    int? price,
    String? description,
    int? durationInMinutes,
    String? serviceCategory,
    String? serviceType,
    String? beautician,
    String? id,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    dynamic image,
    String? role,
    bool? isEmailVerified,
    String? customerId,
    String? name,
    String? phone,
    String? email,
    String? id,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
