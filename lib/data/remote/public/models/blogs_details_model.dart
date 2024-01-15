import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'blogs_details_model.freezed.dart';
part 'blogs_details_model.g.dart';

BlogDetailsResponse blogDetailsResponseFromJson(String str) =>
    BlogDetailsResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String blogDetailsResponseToJson(BlogDetailsResponse data) =>
    json.encode(data.toJson());

@freezed
class BlogDetailsResponse with _$BlogDetailsResponse {
  const factory BlogDetailsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _BlogDetailsResponse;

  factory BlogDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$BlogDetailsResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? id,
    String? title,
    String? description,
    dynamic blogCategory,
    String? author,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
