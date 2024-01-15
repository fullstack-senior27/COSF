import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_beautician_services.freezed.dart';
part 'get_beautician_services.g.dart';

BeauticianServicesRequest beauticianServicesRequestFromJson(String str) =>
    BeauticianServicesRequest.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String beauticianServicesRequestToJson(BeauticianServicesRequest data) =>
    json.encode(data.toJson());

@freezed
class BeauticianServicesRequest with _$BeauticianServicesRequest {
  const factory BeauticianServicesRequest({
    String? beauticianId,
  }) = _BeauticianServicesRequest;

  factory BeauticianServicesRequest.fromJson(Map<String, dynamic> json) =>
      _$BeauticianServicesRequestFromJson(json);
}

BeauticianServicesResponse beauticianServicesResponseFromJson(String str) =>
    BeauticianServicesResponse.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String beauticianServicesResponseToJson(BeauticianServicesResponse data) =>
    json.encode(data.toJson());

@freezed
class BeauticianServicesResponse with _$BeauticianServicesResponse {
  const factory BeauticianServicesResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _BeauticianServicesResponse;

  factory BeauticianServicesResponse.fromJson(Map<String, dynamic> json) =>
      _$BeauticianServicesResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    bool? isAvailable,
    String? name,
    int? price,
    String? description,
    int? durationInMinutes,
    @JsonKey(name: 'service_category') Service? serviceCategory,
    @JsonKey(name: 'service_type') Service? serviceType,
    String? beautician,
    String? id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    String? name,
    String? id,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
