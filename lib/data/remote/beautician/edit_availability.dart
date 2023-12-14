import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'edit_availability.freezed.dart';
part 'edit_availability.g.dart';

BeauticianAvailabilityRequest beauticianAvailabilityRequestFromJson(
        String str) =>
    BeauticianAvailabilityRequest.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianAvailabilityRequestToJson(
        BeauticianAvailabilityRequest data) =>
    json.encode(data.toJson());

@freezed
class BeauticianAvailabilityRequest with _$BeauticianAvailabilityRequest {
  const factory BeauticianAvailabilityRequest({
    List<Availability>? availability,
  }) = _BeauticianAvailabilityRequest;

  factory BeauticianAvailabilityRequest.fromJson(Map<String, dynamic> json) =>
      _$BeauticianAvailabilityRequestFromJson(json);
}

@freezed
class Availability with _$Availability {
  const factory Availability({
    String? day,
    bool? isAvailable,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}

BeauticianAvailabilityResponse beauticianAvailabilityResponseFromJson(
        String str) =>
    BeauticianAvailabilityResponse.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianAvailabilityResponseToJson(
        BeauticianAvailabilityResponse data) =>
    json.encode(data.toJson());

@freezed
class BeauticianAvailabilityResponse with _$BeauticianAvailabilityResponse {
  const factory BeauticianAvailabilityResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _BeauticianAvailabilityResponse;

  factory BeauticianAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$BeauticianAvailabilityResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
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
    List<dynamic>? blockedClients,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<Availabilities>? availability,
    String? address,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Availabilities with _$Availabilities {
  const factory Availabilities({
    dynamic date,
    String? day,
    String? startTime,
    String? endTime,
    bool? isAvailable,
    String? id,
  }) = _Availabilities;

  factory Availabilities.fromJson(Map<String, dynamic> json) =>
      _$AvailabilitiesFromJson(json);
}
