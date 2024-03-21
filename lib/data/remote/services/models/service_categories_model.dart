import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_categories_model.freezed.dart';
part 'service_categories_model.g.dart';

ServiceCategoriesList serviceCategoriesListFromJson(String str) =>
    ServiceCategoriesList.fromJson(json.decode(str) as Map<String, dynamic>);

String serviceCategoriesListToJson(ServiceCategoriesList data) =>
    json.encode(data.toJson());

@freezed
class ServiceCategoriesList with _$ServiceCategoriesList {
  const factory ServiceCategoriesList({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _ServiceCategoriesList;

  factory ServiceCategoriesList.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoriesListFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? name,
    String? id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
