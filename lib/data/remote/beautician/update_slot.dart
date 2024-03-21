import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_slot.freezed.dart';
part 'update_slot.g.dart';

UpdateSlotRequest updateSlotRequestFromJson(String str) =>
    UpdateSlotRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String updateSlotRequestToJson(UpdateSlotRequest data) =>
    json.encode(data.toJson());

@freezed
class UpdateSlotRequest with _$UpdateSlotRequest {
  const factory UpdateSlotRequest({
    List<Slots>? morning,
    List<Slots>? afternoon,
    List<Slots>? evening,
  }) = _UpdateSlotRequest;

  factory UpdateSlotRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSlotRequestFromJson(json);
}

// @freezed
// class Afternoon with _$Afternoon {
//     const factory Afternoon({
//         String? time,
//     }) = _Afternoon;

//     factory Afternoon.fromJson(Map<String, dynamic> json) => _$AfternoonFromJson(json);
// }

@freezed
class Slots with _$Slots {
  const factory Slots({
    String? time,
    bool? isBooked,
  }) = _Slots;

  factory Slots.fromJson(Map<String, dynamic> json) => _$SlotsFromJson(json);
}

UpdateSlotResponse updateSlotResponseFromJson(String str) =>
    UpdateSlotResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String updateSlotResponseToJson(UpdateSlotResponse data) =>
    json.encode(data.toJson());

@freezed
class UpdateSlotResponse with _$UpdateSlotResponse {
  const factory UpdateSlotResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _UpdateSlotResponse;

  factory UpdateSlotResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateSlotResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
