import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'all_categories_model.freezed.dart';
part 'all_categories_model.g.dart';

AllBlogCategoriesResponse allBlogCategoriesResponseFromJson(String str) =>
    AllBlogCategoriesResponse.fromJson(
        json.decode(str) as Map<String, dynamic>);

String allBlogCategoriesResponseToJson(AllBlogCategoriesResponse data) =>
    json.encode(data.toJson());

@freezed
class AllBlogCategoriesResponse with _$AllBlogCategoriesResponse {
  const factory AllBlogCategoriesResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _AllBlogCategoriesResponse;

  factory AllBlogCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllBlogCategoriesResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") required String id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
