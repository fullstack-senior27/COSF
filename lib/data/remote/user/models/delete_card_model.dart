import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'delete_card_model.freezed.dart';
part 'delete_card_model.g.dart';

DeleteCardResponse deleteCardResponseFromJson(String str) =>
    DeleteCardResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String deleteCardResponseToJson(DeleteCardResponse data) =>
    json.encode(data.toJson());

@freezed
class DeleteCardResponse with _$DeleteCardResponse {
  const factory DeleteCardResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _DeleteCardResponse;

  factory DeleteCardResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCardResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required String object,
    required bool deleted,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
