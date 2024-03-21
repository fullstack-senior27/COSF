import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_availability.freezed.dart';
part 'get_availability.g.dart';

BeauticianAvailabilityResponse beauticianAvailabilityResponseFromJson(
        String str,) =>
    BeauticianAvailabilityResponse.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String beauticianAvailabilityResponseToJson(
        BeauticianAvailabilityResponse data,) =>
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
    List<Day>? days,
    Slots? slots,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    bool? isAvailable,
    String? day,
    @JsonKey(name: '_id') String? id,
    DateTime? date,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Slots with _$Slots {
  const factory Slots({
    List<Afternoon>? morning,
    List<Afternoon>? afternoon,
    List<Afternoon>? evening,
  }) = _Slots;

  factory Slots.fromJson(Map<String, dynamic> json) => _$SlotsFromJson(json);
}

@freezed
class Afternoon with _$Afternoon {
  const factory Afternoon({
    bool? isBooked,
    String? time,
    @JsonKey(name: '_id') String? id,
  }) = _Afternoon;

  factory Afternoon.fromJson(Map<String, dynamic> json) =>
      _$AfternoonFromJson(json);
}
