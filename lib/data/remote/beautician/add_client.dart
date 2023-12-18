// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_client.freezed.dart';
part 'add_client.g.dart';

AddClientRequest addClientRequestFromJson(String str) =>
    AddClientRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String addClientRequestToJson(AddClientRequest data) =>
    json.encode(data.toJson());

@freezed
class AddClientRequest with _$AddClientRequest {
  const factory AddClientRequest({
    String? name,
    String? email,
    String? phone,
    String? homeNumber,
    String? streetAddress,
    int? apt,
    String? city,
    String? state,
    String? zip,
    String? birthday,
    bool? isOffline,
  }) = _AddClientRequest;

  factory AddClientRequest.fromJson(Map<String, dynamic> json) =>
      _$AddClientRequestFromJson(json);
}

AddClientResponse addClientResponseFromJson(String str) =>
    AddClientResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String addClientResponseToJson(AddClientResponse data) =>
    json.encode(data.toJson());

@freezed
class AddClientResponse with _$AddClientResponse {
  const factory AddClientResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _AddClientResponse;

  factory AddClientResponse.fromJson(Map<String, dynamic> json) =>
      _$AddClientResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? id,
    String? beautician,
    String? client,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
