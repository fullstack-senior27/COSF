import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_note.freezed.dart';
part 'create_note.g.dart';

CreateNoteRequest createNoteRequestFromJson(String str) =>
    CreateNoteRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String createNoteRequestToJson(CreateNoteRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateNoteRequest with _$CreateNoteRequest {
  const factory CreateNoteRequest({
    String? note,
    String? formula,
    List<String>? products,
    String? client,
  }) = _CreateNoteRequest;

  factory CreateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateNoteRequestFromJson(json);
}

CreateNoteResponse createNoteResponseFromJson(String str) =>
    CreateNoteResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String createNoteResponseToJson(CreateNoteResponse data) =>
    json.encode(data.toJson());

@freezed
class CreateNoteResponse with _$CreateNoteResponse {
  const factory CreateNoteResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CreateNoteResponse;

  factory CreateNoteResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateNoteResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? note,
    String? formula,
    List<String>? products,
    @JsonKey(name: "_id") String? id,
    String? client,
    String? beautician,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
