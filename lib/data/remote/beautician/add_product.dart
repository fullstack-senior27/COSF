import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product.freezed.dart';
part 'add_product.g.dart';

AddProductRequest addProductRequestFromJson(String str) =>
    AddProductRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String addProductRequestToJson(AddProductRequest data) =>
    json.encode(data.toJson());

@freezed
class AddProductRequest with _$AddProductRequest {
  const factory AddProductRequest({
    String? title,
    String? description,
    String? link,
  }) = _AddProductRequest;

  factory AddProductRequest.fromJson(Map<String, dynamic> json) =>
      _$AddProductRequestFromJson(json);
}

AddProductResponse addProductResponseFromJson(String str) =>
    AddProductResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String addProductResponseToJson(AddProductResponse data) =>
    json.encode(data.toJson());

@freezed
class AddProductResponse with _$AddProductResponse {
  const factory AddProductResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _AddProductResponse;

  factory AddProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AddProductResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? description,
    String? link,
    bool? isAvailable,
    @JsonKey(name: "_id") String? id,
    String? title,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
