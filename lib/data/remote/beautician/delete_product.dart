import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'delete_product.freezed.dart';
part 'delete_product.g.dart';

DeleteProductResponse deleteProductResponseFromJson(String str) =>
    DeleteProductResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String deleteProductResponseToJson(DeleteProductResponse data) =>
    json.encode(data.toJson());

@freezed
class DeleteProductResponse with _$DeleteProductResponse {
  const factory DeleteProductResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _DeleteProductResponse;

  factory DeleteProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
