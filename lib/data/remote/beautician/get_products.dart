import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_products.freezed.dart';
part 'get_products.g.dart';

GetProductsResponse getProductsResponseFromJson(String str) =>
    GetProductsResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String getProductsResponseToJson(GetProductsResponse data) =>
    json.encode(data.toJson());

@freezed
class GetProductsResponse with _$GetProductsResponse {
  const factory GetProductsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _GetProductsResponse;

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? description,
    String? link,
    bool? isAvailable,
    @JsonKey(name: "_id") String? id,
    String? title,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
