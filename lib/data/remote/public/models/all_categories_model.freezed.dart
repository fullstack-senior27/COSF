// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllBlogCategoriesResponse _$AllBlogCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _AllBlogCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$AllBlogCategoriesResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllBlogCategoriesResponseCopyWith<AllBlogCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllBlogCategoriesResponseCopyWith<$Res> {
  factory $AllBlogCategoriesResponseCopyWith(AllBlogCategoriesResponse value,
          $Res Function(AllBlogCategoriesResponse) then) =
      _$AllBlogCategoriesResponseCopyWithImpl<$Res, AllBlogCategoriesResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Datum> data});
}

/// @nodoc
class _$AllBlogCategoriesResponseCopyWithImpl<$Res,
        $Val extends AllBlogCategoriesResponse>
    implements $AllBlogCategoriesResponseCopyWith<$Res> {
  _$AllBlogCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllBlogCategoriesResponseCopyWith<$Res>
    implements $AllBlogCategoriesResponseCopyWith<$Res> {
  factory _$$_AllBlogCategoriesResponseCopyWith(
          _$_AllBlogCategoriesResponse value,
          $Res Function(_$_AllBlogCategoriesResponse) then) =
      __$$_AllBlogCategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Datum> data});
}

/// @nodoc
class __$$_AllBlogCategoriesResponseCopyWithImpl<$Res>
    extends _$AllBlogCategoriesResponseCopyWithImpl<$Res,
        _$_AllBlogCategoriesResponse>
    implements _$$_AllBlogCategoriesResponseCopyWith<$Res> {
  __$$_AllBlogCategoriesResponseCopyWithImpl(
      _$_AllBlogCategoriesResponse _value,
      $Res Function(_$_AllBlogCategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_AllBlogCategoriesResponse(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllBlogCategoriesResponse implements _AllBlogCategoriesResponse {
  const _$_AllBlogCategoriesResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required final List<Datum> data})
      : _data = data;

  factory _$_AllBlogCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AllBlogCategoriesResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  final List<Datum> _data;
  @override
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AllBlogCategoriesResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllBlogCategoriesResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllBlogCategoriesResponseCopyWith<_$_AllBlogCategoriesResponse>
      get copyWith => __$$_AllBlogCategoriesResponseCopyWithImpl<
          _$_AllBlogCategoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllBlogCategoriesResponseToJson(
      this,
    );
  }
}

abstract class _AllBlogCategoriesResponse implements AllBlogCategoriesResponse {
  const factory _AllBlogCategoriesResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final List<Datum> data}) = _$_AllBlogCategoriesResponse;

  factory _AllBlogCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_AllBlogCategoriesResponse.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  List<Datum> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AllBlogCategoriesResponseCopyWith<_$_AllBlogCategoriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$_Datum(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: "__v") required this.v});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
