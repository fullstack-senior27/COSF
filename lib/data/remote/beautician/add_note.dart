import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_note.freezed.dart';
part 'add_note.g.dart';

AddNoteRequest addNoteRequestFromJson(String str) =>
    AddNoteRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String addNoteRequestToJson(AddNoteRequest data) => json.encode(data.toJson());

@freezed
class AddNoteRequest with _$AddNoteRequest {
  const factory AddNoteRequest({
    String? note,
    String? formula,
    List<String>? products,
    String? client,
  }) = _AddNoteRequest;

  factory AddNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$AddNoteRequestFromJson(json);
}
