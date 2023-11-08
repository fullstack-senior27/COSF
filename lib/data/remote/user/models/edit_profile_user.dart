import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'edit_profile_user.freezed.dart';
part 'edit_profile_user.g.dart';

USerEditProfile uSerEditProfileFromJson(String str) =>
    USerEditProfile.fromJson(json.decode(str) as Map<String, dynamic>);

String uSerEditProfileToJson(USerEditProfile data) =>
    json.encode(data.toJson());

@freezed
class USerEditProfile with _$USerEditProfile {
  const factory USerEditProfile({
    dynamic? image,
    // String? role,
    // bool? isEmailVerified,
    // String? customerId,
    String? name,
    String? phone,
    String? email,
    // String? id,
  }) = _USerEditProfile;

  factory USerEditProfile.fromJson(Map<String, dynamic> json) =>
      _$USerEditProfileFromJson(json);
}
