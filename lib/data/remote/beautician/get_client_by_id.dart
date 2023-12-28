// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_client_by_id.freezed.dart';
part 'get_client_by_id.g.dart';

GetClientById getClientByIdFromJson(String str) =>
    GetClientById.fromJson(json.decode(str) as Map<String, dynamic>);

String getClientByIdToJson(GetClientById data) => json.encode(data.toJson());

@freezed
class GetClientById with _$GetClientById {
  const factory GetClientById({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _GetClientById;

  factory GetClientById.fromJson(Map<String, dynamic> json) =>
      _$GetClientByIdFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    Client? client,
    List<dynamic>? photos,
    List<ClientNote>? clientNote,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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

@freezed
class ClientNote with _$ClientNote {
  const factory ClientNote({
    String? note,
    String? formula,
    List<String>? products,
    @JsonKey(name: "_id") String? id,
    String? client,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _ClientNote;

  factory ClientNote.fromJson(Map<String, dynamic> json) =>
      _$ClientNoteFromJson(json);
}
