// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockClientRequest _$BlockClientRequestFromJson(Map<String, dynamic> json) {
  return _BlockClientRequest.fromJson(json);
}

/// @nodoc
mixin _$BlockClientRequest {
  String? get clientId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockClientRequestCopyWith<BlockClientRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockClientRequestCopyWith<$Res> {
  factory $BlockClientRequestCopyWith(
          BlockClientRequest value, $Res Function(BlockClientRequest) then) =
      _$BlockClientRequestCopyWithImpl<$Res, BlockClientRequest>;
  @useResult
  $Res call({String? clientId, String? reason});
}

/// @nodoc
class _$BlockClientRequestCopyWithImpl<$Res, $Val extends BlockClientRequest>
    implements $BlockClientRequestCopyWith<$Res> {
  _$BlockClientRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockClientRequestCopyWith<$Res>
    implements $BlockClientRequestCopyWith<$Res> {
  factory _$$_BlockClientRequestCopyWith(_$_BlockClientRequest value,
          $Res Function(_$_BlockClientRequest) then) =
      __$$_BlockClientRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? clientId, String? reason});
}

/// @nodoc
class __$$_BlockClientRequestCopyWithImpl<$Res>
    extends _$BlockClientRequestCopyWithImpl<$Res, _$_BlockClientRequest>
    implements _$$_BlockClientRequestCopyWith<$Res> {
  __$$_BlockClientRequestCopyWithImpl(
      _$_BlockClientRequest _value, $Res Function(_$_BlockClientRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_BlockClientRequest(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockClientRequest implements _BlockClientRequest {
  const _$_BlockClientRequest({this.clientId, this.reason});

  factory _$_BlockClientRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BlockClientRequestFromJson(json);

  @override
  final String? clientId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'BlockClientRequest(clientId: $clientId, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockClientRequest &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockClientRequestCopyWith<_$_BlockClientRequest> get copyWith =>
      __$$_BlockClientRequestCopyWithImpl<_$_BlockClientRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockClientRequestToJson(
      this,
    );
  }
}

abstract class _BlockClientRequest implements BlockClientRequest {
  const factory _BlockClientRequest(
      {final String? clientId, final String? reason}) = _$_BlockClientRequest;

  factory _BlockClientRequest.fromJson(Map<String, dynamic> json) =
      _$_BlockClientRequest.fromJson;

  @override
  String? get clientId;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_BlockClientRequestCopyWith<_$_BlockClientRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
