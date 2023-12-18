// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_clients.freezed.dart';
part 'get_all_clients.g.dart';

GetAllClients getAllClientsFromJson(String str) =>
    GetAllClients.fromJson(json.decode(str) as Map<String, dynamic>);

String getAllClientsToJson(GetAllClients data) => json.encode(data.toJson());

@freezed
class GetAllClients with _$GetAllClients {
  const factory GetAllClients({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _GetAllClients;

  factory GetAllClients.fromJson(Map<String, dynamic> json) =>
      _$GetAllClientsFromJson(json);
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
    dynamic offlineClient,
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
