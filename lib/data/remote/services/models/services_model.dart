import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'services_model.freezed.dart';
part 'services_model.g.dart';

ServicesResponseModel servicesResponseModelFromJson(String str) => ServicesResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);

String servicesResponseModelToJson(ServicesResponseModel data) => json.encode(data.toJson());

@freezed
class ServicesResponseModel with _$ServicesResponseModel {
    const factory ServicesResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<Service>? data,
    }) = _ServicesResponseModel;

    factory ServicesResponseModel.fromJson(Map<String, dynamic> json) => _$ServicesResponseModelFromJson(json);
}

@freezed
class Service with _$Service {
    const factory Service({
        String? name,
        String? time,
        int? price,
        Salon? salon,
        @JsonKey(name: 'service_type') ServiceType? serviceType,
        String? id,
    }) = _Service;

    factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

@freezed
class Salon with _$Salon {
    const factory Salon({
        List<dynamic>? services,
        String? image,
        bool? isVerified,
        List<String>? morning,
        List<String>? afternoon,
        String? beautician,
        String? name,
        String? address,
        String? id,
    }) = _Salon;

    factory Salon.fromJson(Map<String, dynamic> json) => _$SalonFromJson(json);
}

@freezed
class ServiceType with _$ServiceType {
    const factory ServiceType({
        String? name,
        String? id,
    }) = _ServiceType;

    factory ServiceType.fromJson(Map<String, dynamic> json) => _$ServiceTypeFromJson(json);
}