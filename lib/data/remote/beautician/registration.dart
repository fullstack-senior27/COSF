import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'registration.freezed.dart';
part 'registration.g.dart';

BeauticianRegisterRequestModel beauticianRegisterRequestModelFromJson(
        String str) =>
    BeauticianRegisterRequestModel.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianRegisterRequestModelToJson(
        BeauticianRegisterRequestModel data) =>
    json.encode(data.toJson());

@freezed
class BeauticianRegisterRequestModel with _$BeauticianRegisterRequestModel {
  const factory BeauticianRegisterRequestModel({
    String? name,
    String? email,
    String? password,
    String? role,
    // String? phone,
  }) = _BeauticianRegisterRequestModel;

  factory BeauticianRegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BeauticianRegisterRequestModelFromJson(json);
}

BeauticianRegisterResponseModel beauticianRegisterResponseModelFromJson(
        String str) =>
    BeauticianRegisterResponseModel.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianRegisterResponseModelToJson(
        BeauticianRegisterResponseModel data) =>
    json.encode(data.toJson());

@freezed
class BeauticianRegisterResponseModel with _$BeauticianRegisterResponseModel {
  const factory BeauticianRegisterResponseModel({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
    String? accessToken,
    String? refreshToken,
  }) = _BeauticianRegisterResponseModel;

  factory BeauticianRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BeauticianRegisterResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    dynamic about,
    dynamic website,
    bool? isEmailVerified,
    List<dynamic>? speciality,
    List<dynamic>? services,
    List<dynamic>? serviceCategories,
    List<dynamic>? reviews,
    List<dynamic>? products,
    String? accountId,
    List<dynamic>? blockedClients,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<dynamic>? availability,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
