// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_service_category_model.freezed.dart';
part 'get_all_service_category_model.g.dart';

GetAllServiceCategoryResponseModel getAllServiceCategoryResponseModelFromJson(String str) => GetAllServiceCategoryResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllServiceCategoryResponseModelToJson(GetAllServiceCategoryResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllServiceCategoryResponseModel with _$GetAllServiceCategoryResponseModel {
    const factory GetAllServiceCategoryResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _GetAllServiceCategoryResponseModel;

    factory GetAllServiceCategoryResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllServiceCategoryResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "imageUrl")
        String? imageUrl,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "id")
        String? id,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
