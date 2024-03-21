// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_client_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddPhotoRequest _$AddPhotoRequestFromJson(Map<String, dynamic> json) {
  return _AddPhotoRequest.fromJson(json);
}

/// @nodoc
mixin _$AddPhotoRequest {
  List<String>? get photoUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPhotoRequestCopyWith<AddPhotoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotoRequestCopyWith<$Res> {
  factory $AddPhotoRequestCopyWith(
          AddPhotoRequest value, $Res Function(AddPhotoRequest) then) =
      _$AddPhotoRequestCopyWithImpl<$Res, AddPhotoRequest>;
  @useResult
  $Res call({List<String>? photoUrls});
}

/// @nodoc
class _$AddPhotoRequestCopyWithImpl<$Res, $Val extends AddPhotoRequest>
    implements $AddPhotoRequestCopyWith<$Res> {
  _$AddPhotoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrls = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrls: freezed == photoUrls
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPhotoRequestCopyWith<$Res>
    implements $AddPhotoRequestCopyWith<$Res> {
  factory _$$_AddPhotoRequestCopyWith(
          _$_AddPhotoRequest value, $Res Function(_$_AddPhotoRequest) then) =
      __$$_AddPhotoRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? photoUrls});
}

/// @nodoc
class __$$_AddPhotoRequestCopyWithImpl<$Res>
    extends _$AddPhotoRequestCopyWithImpl<$Res, _$_AddPhotoRequest>
    implements _$$_AddPhotoRequestCopyWith<$Res> {
  __$$_AddPhotoRequestCopyWithImpl(
      _$_AddPhotoRequest _value, $Res Function(_$_AddPhotoRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrls = freezed,
  }) {
    return _then(_$_AddPhotoRequest(
      photoUrls: freezed == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddPhotoRequest implements _AddPhotoRequest {
  const _$_AddPhotoRequest({final List<String>? photoUrls})
      : _photoUrls = photoUrls;

  factory _$_AddPhotoRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddPhotoRequestFromJson(json);

  final List<String>? _photoUrls;
  @override
  List<String>? get photoUrls {
    final value = _photoUrls;
    if (value == null) return null;
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddPhotoRequest(photoUrls: $photoUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPhotoRequest &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photoUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPhotoRequestCopyWith<_$_AddPhotoRequest> get copyWith =>
      __$$_AddPhotoRequestCopyWithImpl<_$_AddPhotoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddPhotoRequestToJson(
      this,
    );
  }
}

abstract class _AddPhotoRequest implements AddPhotoRequest {
  const factory _AddPhotoRequest({final List<String>? photoUrls}) =
      _$_AddPhotoRequest;

  factory _AddPhotoRequest.fromJson(Map<String, dynamic> json) =
      _$_AddPhotoRequest.fromJson;

  @override
  List<String>? get photoUrls;
  @override
  @JsonKey(ignore: true)
  _$$_AddPhotoRequestCopyWith<_$_AddPhotoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

AddPhotoResponse _$AddPhotoResponseFromJson(Map<String, dynamic> json) {
  return _AddPhotoResponse.fromJson(json);
}

/// @nodoc
mixin _$AddPhotoResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPhotoResponseCopyWith<AddPhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotoResponseCopyWith<$Res> {
  factory $AddPhotoResponseCopyWith(
          AddPhotoResponse value, $Res Function(AddPhotoResponse) then) =
      _$AddPhotoResponseCopyWithImpl<$Res, AddPhotoResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess});
}

/// @nodoc
class _$AddPhotoResponseCopyWithImpl<$Res, $Val extends AddPhotoResponse>
    implements $AddPhotoResponseCopyWith<$Res> {
  _$AddPhotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPhotoResponseCopyWith<$Res>
    implements $AddPhotoResponseCopyWith<$Res> {
  factory _$$_AddPhotoResponseCopyWith(
          _$_AddPhotoResponse value, $Res Function(_$_AddPhotoResponse) then) =
      __$$_AddPhotoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess});
}

/// @nodoc
class __$$_AddPhotoResponseCopyWithImpl<$Res>
    extends _$AddPhotoResponseCopyWithImpl<$Res, _$_AddPhotoResponse>
    implements _$$_AddPhotoResponseCopyWith<$Res> {
  __$$_AddPhotoResponseCopyWithImpl(
      _$_AddPhotoResponse _value, $Res Function(_$_AddPhotoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$_AddPhotoResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddPhotoResponse implements _AddPhotoResponse {
  const _$_AddPhotoResponse({this.code, this.message, this.isSuccess});

  factory _$_AddPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddPhotoResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'AddPhotoResponse(code: $code, message: $message, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPhotoResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPhotoResponseCopyWith<_$_AddPhotoResponse> get copyWith =>
      __$$_AddPhotoResponseCopyWithImpl<_$_AddPhotoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddPhotoResponseToJson(
      this,
    );
  }
}

abstract class _AddPhotoResponse implements AddPhotoResponse {
  const factory _AddPhotoResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess}) = _$_AddPhotoResponse;

  factory _AddPhotoResponse.fromJson(Map<String, dynamic> json) =
      _$_AddPhotoResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AddPhotoResponseCopyWith<_$_AddPhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
