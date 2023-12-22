// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddNoteRequest _$AddNoteRequestFromJson(Map<String, dynamic> json) {
  return _AddNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$AddNoteRequest {
  String? get note => throw _privateConstructorUsedError;
  String? get formula => throw _privateConstructorUsedError;
  List<String>? get products => throw _privateConstructorUsedError;
  String? get client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddNoteRequestCopyWith<AddNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteRequestCopyWith<$Res> {
  factory $AddNoteRequestCopyWith(
          AddNoteRequest value, $Res Function(AddNoteRequest) then) =
      _$AddNoteRequestCopyWithImpl<$Res, AddNoteRequest>;
  @useResult
  $Res call(
      {String? note, String? formula, List<String>? products, String? client});
}

/// @nodoc
class _$AddNoteRequestCopyWithImpl<$Res, $Val extends AddNoteRequest>
    implements $AddNoteRequestCopyWith<$Res> {
  _$AddNoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? formula = freezed,
    Object? products = freezed,
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      formula: freezed == formula
          ? _value.formula
          : formula // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddNoteRequestCopyWith<$Res>
    implements $AddNoteRequestCopyWith<$Res> {
  factory _$$_AddNoteRequestCopyWith(
          _$_AddNoteRequest value, $Res Function(_$_AddNoteRequest) then) =
      __$$_AddNoteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? note, String? formula, List<String>? products, String? client});
}

/// @nodoc
class __$$_AddNoteRequestCopyWithImpl<$Res>
    extends _$AddNoteRequestCopyWithImpl<$Res, _$_AddNoteRequest>
    implements _$$_AddNoteRequestCopyWith<$Res> {
  __$$_AddNoteRequestCopyWithImpl(
      _$_AddNoteRequest _value, $Res Function(_$_AddNoteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? formula = freezed,
    Object? products = freezed,
    Object? client = freezed,
  }) {
    return _then(_$_AddNoteRequest(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      formula: freezed == formula
          ? _value.formula
          : formula // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddNoteRequest implements _AddNoteRequest {
  const _$_AddNoteRequest(
      {this.note, this.formula, final List<String>? products, this.client})
      : _products = products;

  factory _$_AddNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddNoteRequestFromJson(json);

  @override
  final String? note;
  @override
  final String? formula;
  final List<String>? _products;
  @override
  List<String>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? client;

  @override
  String toString() {
    return 'AddNoteRequest(note: $note, formula: $formula, products: $products, client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteRequest &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.formula, formula) || other.formula == formula) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, note, formula,
      const DeepCollectionEquality().hash(_products), client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNoteRequestCopyWith<_$_AddNoteRequest> get copyWith =>
      __$$_AddNoteRequestCopyWithImpl<_$_AddNoteRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddNoteRequestToJson(
      this,
    );
  }
}

abstract class _AddNoteRequest implements AddNoteRequest {
  const factory _AddNoteRequest(
      {final String? note,
      final String? formula,
      final List<String>? products,
      final String? client}) = _$_AddNoteRequest;

  factory _AddNoteRequest.fromJson(Map<String, dynamic> json) =
      _$_AddNoteRequest.fromJson;

  @override
  String? get note;
  @override
  String? get formula;
  @override
  List<String>? get products;
  @override
  String? get client;
  @override
  @JsonKey(ignore: true)
  _$$_AddNoteRequestCopyWith<_$_AddNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
