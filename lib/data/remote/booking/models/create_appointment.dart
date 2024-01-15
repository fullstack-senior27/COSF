import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_appointment.freezed.dart';
part 'create_appointment.g.dart';

CreateAppointmentRequest createAppointmentRequestFromJson(String str) =>
    CreateAppointmentRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String createAppointmentRequestToJson(CreateAppointmentRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateAppointmentRequest with _$CreateAppointmentRequest {
  const factory CreateAppointmentRequest({
    String? user,
    String? beautician,
    DateTime? date,
    String? timeSlot,
    String? zipcode,
    List<String>? services,
  }) = _CreateAppointmentRequest;

  factory CreateAppointmentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentRequestFromJson(json);
}

CreateAppointmentResponse createAppointmentResponseFromJson(String str) =>
    CreateAppointmentResponse.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String createAppointmentResponseToJson(CreateAppointmentResponse data) =>
    json.encode(data.toJson());

@freezed
class CreateAppointmentResponse with _$CreateAppointmentResponse {
  const factory CreateAppointmentResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CreateAppointmentResponse;

  factory CreateAppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<String>? services,
    String? status,
    String? paymentStatus,
    @JsonKey(name: "_id") String? id,
    String? beautician,
    DateTime? date,
    String? zipcode,
    String? user,
    int? amount,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
