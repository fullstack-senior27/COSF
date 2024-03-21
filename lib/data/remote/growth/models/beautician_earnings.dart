import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beautician_earnings.freezed.dart';
part 'beautician_earnings.g.dart';

BeauticianEarnings beauticianEarningsFromJson(String str) =>
    BeauticianEarnings.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticianEarningsToJson(BeauticianEarnings data) =>
    json.encode(data.toJson());

@freezed
class BeauticianEarnings with _$BeauticianEarnings {
  const factory BeauticianEarnings({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _BeauticianEarnings;

  factory BeauticianEarnings.fromJson(Map<String, dynamic> json) =>
      _$BeauticianEarningsFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    BookingDateTime? bookingDateTime,
    @JsonKey(name: '_id') String? id,
    String? beautician,
    int? fee,
    int? tip,
    String? paymentMethod,
    String? status,
    String? appointment,
    int? totalAmount,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class BookingDateTime with _$BookingDateTime {
  const factory BookingDateTime({
    String? timeSlot,
    DateTime? date,
  }) = _BookingDateTime;

  factory BookingDateTime.fromJson(Map<String, dynamic> json) =>
      _$BookingDateTimeFromJson(json);
}
