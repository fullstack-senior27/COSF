import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

BeauticianLoginRequestModel beauticianLoginRequestModelFromJson(String str) =>
    BeauticianLoginRequestModel.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String beauticianLoginRequestModelToJson(BeauticianLoginRequestModel data) =>
    json.encode(data.toJson());

@freezed
class BeauticianLoginRequestModel with _$BeauticianLoginRequestModel {
  const factory BeauticianLoginRequestModel({
    String? email,
    String? password,
  }) = _BeauticianLoginRequestModel;

  factory BeauticianLoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BeauticianLoginRequestModelFromJson(json);
}

BeauticianLoginResponseModel beauticianLoginResponseModelFromJson(String str) =>
    BeauticianLoginResponseModel.fromJson(
        json.decode(str) as Map<String, dynamic>,);

String beauticianLoginResponseModelToJson(BeauticianLoginResponseModel data) =>
    json.encode(data.toJson());

@freezed
class BeauticianLoginResponseModel with _$BeauticianLoginResponseModel {
  const factory BeauticianLoginResponseModel({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
    String? accessToken,
    String? refreshToken,
  }) = _BeauticianLoginResponseModel;

  factory BeauticianLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BeauticianLoginResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    dynamic about,
    String? website,
    bool? isEmailVerified,
    List<String>? speciality,
    List<String>? services,
    List<String>? serviceCategories,
    List<dynamic>? reviews,
    List<dynamic>? products,
    String? accountId,
    List<dynamic>? blockedClients,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<Availability>? availability,
    String? address,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Availability with _$Availability {
  const factory Availability({
    DateTime? date,
    String? day,
    String? startTime,
    String? endTime,
    bool? isAvailable,
    String? id,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
