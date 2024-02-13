// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beauticians_list_model.freezed.dart';
part 'beauticians_list_model.g.dart';

BeauticiansListResponse beauticiansListResponseFromJson(String str) =>
    BeauticiansListResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticiansListResponseToJson(BeauticiansListResponse data) =>
    json.encode(data.toJson());

@freezed
class BeauticiansListResponse with _$BeauticiansListResponse {
  const factory BeauticiansListResponse({
    int? code,
    String? message,
    bool? isSuccess,
    required Data data,
  }) = _BeauticiansListResponse;

  factory BeauticiansListResponse.fromJson(Map<String, dynamic> json) =>
      _$BeauticiansListResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Result> results,
    int? totalPages,
    int? currentPage,
    int? limit,
    int? totalResults,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "_id") String? id,
    String? image,
    String? role,
    List<dynamic>? photos,
    String? profession,
    dynamic about,
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
    List<AvailableDay>? availableDays,
    List<Afternoon>? afternoon,
    List<Afternoon>? evening,
    List<Afternoon>? morning,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class AvailableDay with _$AvailableDay {
  const factory AvailableDay({
    bool? isAvailable,
    String? day,
    @JsonKey(name: '_id') String? id,
    DateTime? date,
  }) = _AvailableDay;

  factory AvailableDay.fromJson(Map<String, dynamic> json) =>
      _$AvailableDayFromJson(json);
}

@freezed
class Afternoon with _$Afternoon {
  const factory Afternoon({
    bool? isBooked,
    String? time,
    @JsonKey(name: '_id') String? id,
  }) = _Afternoon;

  factory Afternoon.fromJson(Map<String, dynamic> json) =>
      _$AfternoonFromJson(json);
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
    double? rating,
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

BeauticiansFilterRequest beauticiansFilterRequestFromJson(String str) =>
    BeauticiansFilterRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String beauticiansFilterRequestToJson(BeauticiansFilterRequest data) =>
    json.encode(data.toJson());

@freezed
class BeauticiansFilterRequest with _$BeauticiansFilterRequest {
  const factory BeauticiansFilterRequest({
    Filters? filters,
  }) = _BeauticiansFilterRequest;

  factory BeauticiansFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$BeauticiansFilterRequestFromJson(json);
}

@freezed
class Filters with _$Filters {
  const factory Filters({
    String? search,
    String? location,
    String? date,
    int? avgRating,
    @JsonKey(name: "price_range") PriceRange? priceRange,
    @JsonKey(name: "service_type") String? serviceType,
    @JsonKey(name: "service_category") String? serviceCategory,
    @JsonKey(name: "sort_price") String? sortPrice,
  }) = _Filters;

  factory Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);
}

@freezed
class PriceRange with _$PriceRange {
  const factory PriceRange({
    int? minPrice,
    int? maxPrice,
  }) = _PriceRange;

  factory PriceRange.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeFromJson(json);
}
