import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_blogs_model.freezed.dart';
part 'related_blogs_model.g.dart';

RelatedBlogsResponse relatedBlogsResponseFromJson(String str) =>
    RelatedBlogsResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String relatedBlogsResponseToJson(RelatedBlogsResponse data) =>
    json.encode(data.toJson());

@freezed
class RelatedBlogsResponse with _$RelatedBlogsResponse {
  const factory RelatedBlogsResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _RelatedBlogsResponse;

  factory RelatedBlogsResponse.fromJson(Map<String, dynamic> json) =>
      _$RelatedBlogsResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    String? title,
    String? description,
    BlogCategory? blogCategory,
    String? author,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class BlogCategory with _$BlogCategory {
  const factory BlogCategory({
    @JsonKey(name: "_id") String? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _BlogCategory;

  factory BlogCategory.fromJson(Map<String, dynamic> json) =>
      _$BlogCategoryFromJson(json);
}
