import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_details_model.freezed.dart';
part 'profile_details_model.g.dart';

ProfileDetailsResponse profileDetailsResponseFromJson(String str) =>
    ProfileDetailsResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String profileDetailsResponseToJson(ProfileDetailsResponse data) =>
    json.encode(data.toJson());

@freezed
class ProfileDetailsResponse with _$ProfileDetailsResponse {
  const factory ProfileDetailsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _ProfileDetailsResponse;

  factory ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailsResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic? image,
    String? role,
    bool? isEmailVerified,
    String? customerId,
    String? name,
    String? phone,
    String? email,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
