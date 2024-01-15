import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_types_model.freezed.dart';
part 'service_types_model.g.dart';

ServiceTypesList serviceTypesListFromJson(String str) =>
    ServiceTypesList.fromJson(json.decode(str) as Map<String, dynamic>);

String serviceTypesListToJson(ServiceTypesList data) =>
    json.encode(data.toJson());

@freezed
class ServiceTypesList with _$ServiceTypesList {
  const factory ServiceTypesList({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _ServiceTypesList;

  factory ServiceTypesList.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypesListFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? name,
    String? id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
