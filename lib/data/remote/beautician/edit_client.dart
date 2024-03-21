import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_client.freezed.dart';
part 'edit_client.g.dart';

EditClientRequest editClientRequestFromJson(String str) =>
    EditClientRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String editClientRequestToJson(EditClientRequest data) =>
    json.encode(data.toJson());

@freezed
class EditClientRequest with _$EditClientRequest {
  const factory EditClientRequest({
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
  }) = _EditClientRequest;

  factory EditClientRequest.fromJson(Map<String, dynamic> json) =>
      _$EditClientRequestFromJson(json);
}

EditClientResponse editClientResponseFromJson(String str) =>
    EditClientResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String editClientResponseToJson(EditClientResponse data) =>
    json.encode(data.toJson());

@freezed
class EditClientResponse with _$EditClientResponse {
  const factory EditClientResponse({
    int? code,
    String? message,
    bool? isSuccess,
  }) = _EditClientResponse;

  factory EditClientResponse.fromJson(Map<String, dynamic> json) =>
      _$EditClientResponseFromJson(json);
}
