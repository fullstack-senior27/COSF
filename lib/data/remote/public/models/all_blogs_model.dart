import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_blogs_model.freezed.dart';
part 'all_blogs_model.g.dart';

BlogCategoryRequest blogCategoryRequestFromJson(String str) =>
    BlogCategoryRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String blogCategoryRequestToJson(BlogCategoryRequest data) =>
    json.encode(data.toJson());

@freezed
class BlogCategoryRequest with _$BlogCategoryRequest {
  const factory BlogCategoryRequest({
    String? blogCategory,
  }) = _BlogCategoryRequest;

  factory BlogCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$BlogCategoryRequestFromJson(json);
}

AllBlogsResponse allBlogsResponseFromJson(String str) =>
    AllBlogsResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String allBlogsResponseToJson(AllBlogsResponse data) =>
    json.encode(data.toJson());

@freezed
class AllBlogsResponse with _$AllBlogsResponse {
  const factory AllBlogsResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _AllBlogsResponse;

  factory AllBlogsResponse.fromJson(Map<String, dynamic> json) =>
      _$AllBlogsResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Result> results,
    required int totalPages,
    required int currentPage,
    required int limit,
    required int totalResults,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "_id") required String id,
    required String title,
    required String description,
    @JsonKey(name: "blog_category") required BlogCategory? blogCategory,
    String? author,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class BlogCategory with _$BlogCategory {
  const factory BlogCategory({
    @JsonKey(name: "_id") required String id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
  }) = _BlogCategory;

  factory BlogCategory.fromJson(Map<String, dynamic> json) =>
      _$BlogCategoryFromJson(json);
}
