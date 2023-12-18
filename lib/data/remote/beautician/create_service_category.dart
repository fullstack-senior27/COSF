import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_service_category.freezed.dart';
part 'create_service_category.g.dart';

CreateServiceCategoryRequest createServiceCategoryRequestFromJson(String str) =>
    CreateServiceCategoryRequest.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

String createServiceCategoryRequestToJson(CreateServiceCategoryRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateServiceCategoryRequest with _$CreateServiceCategoryRequest {
  const factory CreateServiceCategoryRequest({
    String? name,
  }) = _CreateServiceCategoryRequest;

  factory CreateServiceCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateServiceCategoryRequestFromJson(json);
}

CreateServiceCategoryResponse createServiceCategoryResponseFromJson(
  String str,
) =>
    CreateServiceCategoryResponse.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

String createServiceCategoryResponseToJson(
  CreateServiceCategoryResponse data,
) =>
    json.encode(data.toJson());

@freezed
class CreateServiceCategoryResponse with _$CreateServiceCategoryResponse {
  const factory CreateServiceCategoryResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CreateServiceCategoryResponse;

  factory CreateServiceCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateServiceCategoryResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? name,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
