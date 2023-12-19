import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_clients.freezed.dart';
part 'get_clients.g.dart';

GetClientsResponse getClientsResponseFromJson(String str) =>
    GetClientsResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String getClientsResponseToJson(GetClientsResponse data) =>
    json.encode(data.toJson());

@freezed
class GetClientsResponse with _$GetClientsResponse {
  const factory GetClientsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _GetClientsResponse;

  factory GetClientsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetClientsResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    String? beautician,
    Client? client,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Client with _$Client {
  const factory Client({
    dynamic image,
    String? role,
    bool? isEmailVerified,
    String? customerId,
    bool? isOffline,
    String? name,
    String? email,
    String? phone,
    String? homeNumber,
    String? streetAddress,
    int? apt,
    String? city,
    String? state,
    String? zip,
    DateTime? birthday,
    String? id,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
