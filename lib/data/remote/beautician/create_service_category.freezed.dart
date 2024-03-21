// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_service_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateServiceCategoryRequest _$CreateServiceCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateServiceCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateServiceCategoryRequest {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateServiceCategoryRequestCopyWith<CreateServiceCategoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateServiceCategoryRequestCopyWith<$Res> {
  factory $CreateServiceCategoryRequestCopyWith(
          CreateServiceCategoryRequest value,
          $Res Function(CreateServiceCategoryRequest) then) =
      _$CreateServiceCategoryRequestCopyWithImpl<$Res,
          CreateServiceCategoryRequest>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$CreateServiceCategoryRequestCopyWithImpl<$Res,
        $Val extends CreateServiceCategoryRequest>
    implements $CreateServiceCategoryRequestCopyWith<$Res> {
  _$CreateServiceCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateServiceCategoryRequestCopyWith<$Res>
    implements $CreateServiceCategoryRequestCopyWith<$Res> {
  factory _$$_CreateServiceCategoryRequestCopyWith(
          _$_CreateServiceCategoryRequest value,
          $Res Function(_$_CreateServiceCategoryRequest) then) =
      __$$_CreateServiceCategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_CreateServiceCategoryRequestCopyWithImpl<$Res>
    extends _$CreateServiceCategoryRequestCopyWithImpl<$Res,
        _$_CreateServiceCategoryRequest>
    implements _$$_CreateServiceCategoryRequestCopyWith<$Res> {
  __$$_CreateServiceCategoryRequestCopyWithImpl(
      _$_CreateServiceCategoryRequest _value,
      $Res Function(_$_CreateServiceCategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_CreateServiceCategoryRequest(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateServiceCategoryRequest implements _CreateServiceCategoryRequest {
  const _$_CreateServiceCategoryRequest({this.name});

  factory _$_CreateServiceCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateServiceCategoryRequestFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'CreateServiceCategoryRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateServiceCategoryRequest &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateServiceCategoryRequestCopyWith<_$_CreateServiceCategoryRequest>
      get copyWith => __$$_CreateServiceCategoryRequestCopyWithImpl<
          _$_CreateServiceCategoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateServiceCategoryRequestToJson(
      this,
    );
  }
}

abstract class _CreateServiceCategoryRequest
    implements CreateServiceCategoryRequest {
  const factory _CreateServiceCategoryRequest({final String? name}) =
      _$_CreateServiceCategoryRequest;

  factory _CreateServiceCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateServiceCategoryRequest.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateServiceCategoryRequestCopyWith<_$_CreateServiceCategoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

CreateServiceCategoryResponse _$CreateServiceCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateServiceCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateServiceCategoryResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateServiceCategoryResponseCopyWith<CreateServiceCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateServiceCategoryResponseCopyWith<$Res> {
  factory $CreateServiceCategoryResponseCopyWith(
          CreateServiceCategoryResponse value,
          $Res Function(CreateServiceCategoryResponse) then) =
      _$CreateServiceCategoryResponseCopyWithImpl<$Res,
          CreateServiceCategoryResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateServiceCategoryResponseCopyWithImpl<$Res,
        $Val extends CreateServiceCategoryResponse>
    implements $CreateServiceCategoryResponseCopyWith<$Res> {
  _$CreateServiceCategoryResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateServiceCategoryResponseCopyWith<$Res>
    implements $CreateServiceCategoryResponseCopyWith<$Res> {
  factory _$$_CreateServiceCategoryResponseCopyWith(
          _$_CreateServiceCategoryResponse value,
          $Res Function(_$_CreateServiceCategoryResponse) then) =
      __$$_CreateServiceCategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreateServiceCategoryResponseCopyWithImpl<$Res>
    extends _$CreateServiceCategoryResponseCopyWithImpl<$Res,
        _$_CreateServiceCategoryResponse>
    implements _$$_CreateServiceCategoryResponseCopyWith<$Res> {
  __$$_CreateServiceCategoryResponseCopyWithImpl(
      _$_CreateServiceCategoryResponse _value,
      $Res Function(_$_CreateServiceCategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CreateServiceCategoryResponse(
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
class _$_CreateServiceCategoryResponse
    implements _CreateServiceCategoryResponse {
  const _$_CreateServiceCategoryResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_CreateServiceCategoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateServiceCategoryResponseFromJson(json);

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
    return 'CreateServiceCategoryResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateServiceCategoryResponse &&
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
  _$$_CreateServiceCategoryResponseCopyWith<_$_CreateServiceCategoryResponse>
      get copyWith => __$$_CreateServiceCategoryResponseCopyWithImpl<
          _$_CreateServiceCategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateServiceCategoryResponseToJson(
      this,
    );
  }
}

abstract class _CreateServiceCategoryResponse
    implements CreateServiceCategoryResponse {
  const factory _CreateServiceCategoryResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_CreateServiceCategoryResponse;

  factory _CreateServiceCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateServiceCategoryResponse.fromJson;

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
  _$$_CreateServiceCategoryResponseCopyWith<_$_CreateServiceCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Data(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.name, this.id});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? name;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final String? name, final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
