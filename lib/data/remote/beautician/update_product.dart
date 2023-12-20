import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_product.freezed.dart';
part 'update_product.g.dart';

UpdateProductRequest updateProductRequestFromJson(String str) =>
    UpdateProductRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String updateProductRequestToJson(UpdateProductRequest data) =>
    json.encode(data.toJson());

@freezed
class UpdateProductRequest with _$UpdateProductRequest {
  const factory UpdateProductRequest({
    String? title,
    String? description,
    String? link,
    // bool? isAvailable,
  }) = _UpdateProductRequest;

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestFromJson(json);
}

UpdateProductResponse updateProductResponseFromJson(String str) =>
    UpdateProductResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String updateProductResponseToJson(UpdateProductResponse data) =>
    json.encode(data.toJson());

@freezed
class UpdateProductResponse with _$UpdateProductResponse {
  const factory UpdateProductResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _UpdateProductResponse;

  factory UpdateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductResponseFromJson(json);
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
