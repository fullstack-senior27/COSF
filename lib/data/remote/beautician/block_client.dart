import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'block_client.freezed.dart';
part 'block_client.g.dart';

BlockClientRequest blockClientRequestFromJson(String str) =>
    BlockClientRequest.fromJson(json.decode(str) as Map<String, dynamic>);

String blockClientRequestToJson(BlockClientRequest data) =>
    json.encode(data.toJson());

@freezed
class BlockClientRequest with _$BlockClientRequest {
  const factory BlockClientRequest({
    String? clientId,
    String? reason,
  }) = _BlockClientRequest;

  factory BlockClientRequest.fromJson(Map<String, dynamic> json) =>
      _$BlockClientRequestFromJson(json);
}
