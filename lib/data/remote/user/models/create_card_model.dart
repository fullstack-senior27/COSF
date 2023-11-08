import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_card_model.freezed.dart';
part 'create_card_model.g.dart';

CreateCardRequest createCardRequestFromJson(String str) =>
    CreateCardRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String createCardRequestToJson(CreateCardRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateCardRequest with _$CreateCardRequest {
  const factory CreateCardRequest({
    Card? card,
    String? email,
  }) = _CreateCardRequest;

  factory CreateCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCardRequestFromJson(json);
}

@freezed
class Card with _$Card {
  const factory Card({
    String? number,
    int? expMonth,
    int? expYear,
    String? cvc,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

CreateCardResponse createCardResponseFromJson(String str) =>
    CreateCardResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String createCardResponseToJson(CreateCardResponse data) =>
    json.encode(data.toJson());

@freezed
class CreateCardResponse with _$CreateCardResponse {
  const factory CreateCardResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CreateCardResponse;

  factory CreateCardResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCardResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
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
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata() = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
