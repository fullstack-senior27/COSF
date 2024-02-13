// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notes.freezed.dart';
part 'get_notes.g.dart';

GetNotesResponse getNotesResponseFromJson(String str) =>
    GetNotesResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String getNotesResponseToJson(GetNotesResponse data) =>
    json.encode(data.toJson());

@freezed
class GetNotesResponse with _$GetNotesResponse {
  const factory GetNotesResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _GetNotesResponse;

  factory GetNotesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNotesResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? note,
    String? formula,
    List<Product>? products,
    @JsonKey(name: "_id") String? id,
    String? client,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    String? description,
    String? link,
    bool? isAvailable,
    @JsonKey(name: "_id") String? id,
    String? title,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
