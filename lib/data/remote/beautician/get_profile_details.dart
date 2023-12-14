import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_profile_details.freezed.dart';
part 'get_profile_details.g.dart';

BeauticianProfileRequest beauticianProfileRequestFromJson(String str) =>
    BeauticianProfileRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticianProfileRequestToJson(BeauticianProfileRequest data) =>
    json.encode(data.toJson());

@freezed
class BeauticianProfileRequest with _$BeauticianProfileRequest {
  const factory BeauticianProfileRequest({
    String? beauticianId,
  }) = _BeauticianProfileRequest;

  factory BeauticianProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$BeauticianProfileRequestFromJson(json);
}

BeauticianProfileResponse beauticianProfileResponseFromJson(String str) =>
    BeauticianProfileResponse.fromJson(
        json.decode(str) as Map<String, dynamic>);

String beauticianProfileResponseToJson(BeauticianProfileResponse data) =>
    json.encode(data.toJson());

@freezed
class BeauticianProfileResponse with _$BeauticianProfileResponse {
  const factory BeauticianProfileResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Datum? data,
  }) = _BeauticianProfileResponse;

  factory BeauticianProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$BeauticianProfileResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    dynamic image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    String? about,
    String? website,
    bool? isEmailVerified,
    List<String>? speciality,
    String? accountId,
    String? name,
    String? email,
    String? phone,
    List<dynamic>? notes,
    List<Availability>? availability,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
    String? address,
    List<String>? blockedClients,
    List<Service>? services,
    List<dynamic>? products,
    List<ServiceCategory>? serviceCategories,
    List<Review>? reviews,
    int? ratingCount,
    double? avgRating,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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
    String? user,
    @JsonKey(name: "__v") int? v,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
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
    @JsonKey(name: "_id") String? id,
    bool? isAvailable,
    String? name,
    int? price,
    String? description,
    int? durationInMinutes,
    String? serviceCategory,
    String? serviceType,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
