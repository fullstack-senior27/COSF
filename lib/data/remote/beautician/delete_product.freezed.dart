// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteProductResponse _$DeleteProductResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteProductResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteProductResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProductResponseCopyWith<DeleteProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProductResponseCopyWith<$Res> {
  factory $DeleteProductResponseCopyWith(DeleteProductResponse value,
          $Res Function(DeleteProductResponse) then) =
      _$DeleteProductResponseCopyWithImpl<$Res, DeleteProductResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteProductResponseCopyWithImpl<$Res,
        $Val extends DeleteProductResponse>
    implements $DeleteProductResponseCopyWith<$Res> {
  _$DeleteProductResponseCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeleteProductResponseCopyWith<$Res>
    implements $DeleteProductResponseCopyWith<$Res> {
  factory _$$_DeleteProductResponseCopyWith(_$_DeleteProductResponse value,
          $Res Function(_$_DeleteProductResponse) then) =
      __$$_DeleteProductResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DeleteProductResponseCopyWithImpl<$Res>
    extends _$DeleteProductResponseCopyWithImpl<$Res, _$_DeleteProductResponse>
    implements _$$_DeleteProductResponseCopyWith<$Res> {
  __$$_DeleteProductResponseCopyWithImpl(_$_DeleteProductResponse _value,
      $Res Function(_$_DeleteProductResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DeleteProductResponse(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteProductResponse implements _DeleteProductResponse {
  const _$_DeleteProductResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_DeleteProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteProductResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;

  @override
  String toString() {
    return 'DeleteProductResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProductResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProductResponseCopyWith<_$_DeleteProductResponse> get copyWith =>
      __$$_DeleteProductResponseCopyWithImpl<_$_DeleteProductResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteProductResponseToJson(
      this,
    );
  }
}

abstract class _DeleteProductResponse implements DeleteProductResponse {
  const factory _DeleteProductResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_DeleteProductResponse;

  factory _DeleteProductResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteProductResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteProductResponseCopyWith<_$_DeleteProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data();

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  String toString() {
    return 'Data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Data);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;
}
