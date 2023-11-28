import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beautician_detail_model.freezed.dart';
part 'beautician_detail_model.g.dart';

BeauticianDetailRequest beauticianDetailRequestFromJson(String str) =>
    BeauticianDetailRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticianDetailRequestToJson(BeauticianDetailRequest data) =>
    json.encode(data.toJson());

@freezed
class BeauticianDetailRequest with _$BeauticianDetailRequest {
  const factory BeauticianDetailRequest({
    String? beauticianId,
  }) = _BeauticianDetailRequest;

  factory BeauticianDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$BeauticianDetailRequestFromJson(json);
}

BeauticianDetailResponse beauticianDetailResponseFromJson(String str) =>
    BeauticianDetailResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticianDetailResponseToJson(BeauticianDetailResponse data) =>
    json.encode(data.toJson());

@freezed
class BeauticianDetailResponse with _$BeauticianDetailResponse {
  const factory BeauticianDetailResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _BeauticianDetailResponse;

  factory BeauticianDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BeauticianDetailResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? id,
    String? image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    String? about,
    String? website,
    String? address,
    bool? isEmailVerified,
    List<dynamic>? speciality,
    String? accountId,
    List<dynamic>? blockedClients,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<Availability>? availability,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    List<Service>? services,
    List<dynamic>? products,
    List<ServiceCategory>? serviceCategories,
    List<Review>? reviews,
    int? ratingCount,
    int? avgRating,
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
    @JsonKey(name: "_id") String? id,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "_id") String? id,
    String? beautician,
    String? text,
    int? rating,
    User? user,
    @JsonKey(name: "__v") int? v,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    dynamic image,
    String? role,
    bool? isEmailVerified,
    String? customerId,
    bool? isOffline,
    String? name,
    String? phone,
    String? email,
    String? id,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class ServiceCategory with _$ServiceCategory {
  const factory ServiceCategory({
    @JsonKey(name: "_id") String? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _ServiceCategory;

  factory ServiceCategory.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    String? id,
    bool? isAvailable,
    String? name,
    int? price,
    String? description,
    int? durationInMinutes,
    ServiceCategoryClass? serviceCategory,
    ServiceCategoryClass? serviceType,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}

@freezed
class ServiceCategoryClass with _$ServiceCategoryClass {
  const factory ServiceCategoryClass({
    String? name,
    String? id,
  }) = _ServiceCategoryClass;

  factory ServiceCategoryClass.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryClassFromJson(json);
}
