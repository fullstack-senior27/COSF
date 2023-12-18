import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_service.freezed.dart';
part 'create_service.g.dart';

CreateServiceRequest createServiceRequestFromJson(String str) =>
    CreateServiceRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String createServiceRequestToJson(CreateServiceRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateServiceRequest with _$CreateServiceRequest {
  const factory CreateServiceRequest({
    String? name,
    String? description,
    int? durationInMinutes,
    int? price,
    String? category,
    String? serviceType,
  }) = _CreateServiceRequest;

  factory CreateServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateServiceRequestFromJson(json);
}

CreateServiceResponse createServiceResponseFromJson(String str) =>
    CreateServiceResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String createServiceResponseToJson(CreateServiceResponse data) =>
    json.encode(data.toJson());

@freezed
class CreateServiceResponse with _$CreateServiceResponse {
  const factory CreateServiceResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CreateServiceResponse;

  factory CreateServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateServiceResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    bool? isAvailable,
    String? name,
    int? price,
    String? description,
    int? durationInMinutes,
    String? serviceCategory,
    String? serviceType,
    String? beautician,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
