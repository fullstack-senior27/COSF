import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'salon_model.freezed.dart';
part 'salon_model.g.dart';

SalonResponseModel salonResponseModelFromJson(String str) => SalonResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);

String salonResponseModelToJson(SalonResponseModel data) => json.encode(data.toJson());

@freezed
class SalonResponseModel with _$SalonResponseModel {
    const factory SalonResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<Salon>? data,
    }) = _SalonResponseModel;

    factory SalonResponseModel.fromJson(Map<String, dynamic> json) => _$SalonResponseModelFromJson(json);
}

@freezed
class Salon with _$Salon {
    const factory Salon({
        @JsonKey(name: '_id') String? id,
        String? image,
        bool? isVerified,
        List<String>? morning,
        List<String>? afternoon,
        Beautician? beautician,
        String? name,
        String? address,
        DateTime? createdAt,
        DateTime? updatedAt,
        int? v,
        List<Service>? services,
        int? ratingCount,
        double? avgRating,
    }) = _Salon;

    factory Salon.fromJson(Map<String, dynamic> json) => _$SalonFromJson(json);
}

@freezed
class Beautician with _$Beautician {
    const factory Beautician({
        @JsonKey(name: '_id') String? id,
        String? image,
        String? name,
        String? email,
        DateTime? createdAt,
        DateTime? updatedAt,
        int? v,
    }) = _Beautician;

    factory Beautician.fromJson(Map<String, dynamic> json) => _$BeauticianFromJson(json);
}

@freezed
class Service with _$Service {
    const factory Service({
        @JsonKey(name: '_id') String? id,
        String? name,
        String? time,
        int? price,
        String? salon,
        String? serviceType,
    }) = _Service;

    factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}