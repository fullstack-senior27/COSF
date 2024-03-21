import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cards_list_model.freezed.dart';
part 'cards_list_model.g.dart';

CardsListResponse cardsListResponseFromJson(String str) =>
    CardsListResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String cardsListResponseToJson(CardsListResponse data) =>
    json.encode(data.toJson());

@freezed
class CardsListResponse with _$CardsListResponse {
  const factory CardsListResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _CardsListResponse;

  factory CardsListResponse.fromJson(Map<String, dynamic> json) =>
      _$CardsListResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? id,
    String? object,
    dynamic addressCity,
    dynamic addressCountry,
    dynamic addressLine1,
    dynamic addressLine1Check,
    dynamic addressLine2,
    dynamic addressState,
    dynamic addressZip,
    dynamic addressZipCheck,
    String? brand,
    String? country,
    String? customer,
    String? cvcCheck,
    dynamic dynamicLast4,
    int? expMonth,
    int? expYear,
    String? fingerprint,
    String? funding,
    String? last4,
    Metadata? metadata,
    dynamic name,
    dynamic tokenizationMethod,
    dynamic wallet,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata() = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
