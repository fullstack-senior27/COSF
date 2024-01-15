import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_client_photo.freezed.dart';
part 'add_client_photo.g.dart';

AddPhotoRequest addPhotoRequestFromJson(String str) =>
    AddPhotoRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String addPhotoRequestToJson(AddPhotoRequest data) =>
    json.encode(data.toJson());

@freezed
class AddPhotoRequest with _$AddPhotoRequest {
  const factory AddPhotoRequest({
    List<String>? photoUrls,
  }) = _AddPhotoRequest;

  factory AddPhotoRequest.fromJson(Map<String, dynamic> json) =>
      _$AddPhotoRequestFromJson(json);
}

AddPhotoResponse addPhotoResponseFromJson(String str) =>
    AddPhotoResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String addPhotoResponseToJson(AddPhotoResponse data) =>
    json.encode(data.toJson());

@freezed
class AddPhotoResponse with _$AddPhotoResponse {
  const factory AddPhotoResponse({
    int? code,
    String? message,
    bool? isSuccess,
  }) = _AddPhotoResponse;

  factory AddPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$AddPhotoResponseFromJson(json);
}
