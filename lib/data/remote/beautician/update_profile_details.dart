import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_details.freezed.dart';
part 'update_profile_details.g.dart';

BeauticianUpdateProfileRequest beauticianUpdateProfileRequestFromJson(
        String str) =>
    BeauticianUpdateProfileRequest.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianUpdateProfileRequestToJson(
        BeauticianUpdateProfileRequest data) =>
    json.encode(data.toJson());

@freezed
class BeauticianUpdateProfileRequest with _$BeauticianUpdateProfileRequest {
  const factory BeauticianUpdateProfileRequest({
    String? address,
    List<String>? speciality,
    String? profession,
    String? website,
    String? phone,
    String? about,
    String? email,
  }) = _BeauticianUpdateProfileRequest;

  factory BeauticianUpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$BeauticianUpdateProfileRequestFromJson(json);
}

BeauticianUpdateProfileResponse beauticianUpdateProfileResponseFromJson(
        String str) =>
    BeauticianUpdateProfileResponse.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianUpdateProfileResponseToJson(
        BeauticianUpdateProfileResponse data) =>
    json.encode(data.toJson());

@freezed
class BeauticianUpdateProfileResponse with _$BeauticianUpdateProfileResponse {
  const factory BeauticianUpdateProfileResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _BeauticianUpdateProfileResponse;

  factory BeauticianUpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$BeauticianUpdateProfileResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    String? about,
    String? website,
    bool? isEmailVerified,
    List<String>? speciality,
    List<Service>? services,
    List<ServiceCategory>? serviceCategories,
    List<dynamic>? reviews,
    List<dynamic>? products,
    String? accountId,
    List<dynamic>? blockedClients,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<Availability>? availability,
    String? address,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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
class ServiceCategory with _$ServiceCategory {
  const factory ServiceCategory({
    String? name,
    String? id,
  }) = _ServiceCategory;

  factory ServiceCategory.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryFromJson(json);
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
