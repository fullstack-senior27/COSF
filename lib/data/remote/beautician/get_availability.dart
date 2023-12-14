import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_availability.freezed.dart';
part 'get_availability.g.dart';

GetBeauticianAvailability getBeauticianAvailabilityFromJson(String str) =>
    GetBeauticianAvailability.fromJson(
        json.decode(str) as Map<String, dynamic>);

String getBeauticianAvailabilityToJson(GetBeauticianAvailability data) =>
    json.encode(data.toJson());

@freezed
class GetBeauticianAvailability with _$GetBeauticianAvailability {
  const factory GetBeauticianAvailability({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _GetBeauticianAvailability;

  factory GetBeauticianAvailability.fromJson(Map<String, dynamic> json) =>
      _$GetBeauticianAvailabilityFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    dynamic date,
    String? day,
    String? startTime,
    String? endTime,
    bool? isAvailable,
    @JsonKey(name: '_id') String? id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
