import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beautician_balance.freezed.dart';
part 'beautician_balance.g.dart';

BeauticianBalance beauticianBalanceFromJson(String str) =>
    BeauticianBalance.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticianBalanceToJson(BeauticianBalance data) =>
    json.encode(data.toJson());

@freezed
class BeauticianBalance with _$BeauticianBalance {
  const factory BeauticianBalance({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _BeauticianBalance;

  factory BeauticianBalance.fromJson(Map<String, dynamic> json) =>
      _$BeauticianBalanceFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? totalEarning,
    int? withdrawBalance,
    int? remainingAmount,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
