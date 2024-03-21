// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateSlotRequest _$UpdateSlotRequestFromJson(Map<String, dynamic> json) {
  return _UpdateSlotRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSlotRequest {
  List<Slots>? get morning => throw _privateConstructorUsedError;
  List<Slots>? get afternoon => throw _privateConstructorUsedError;
  List<Slots>? get evening => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSlotRequestCopyWith<UpdateSlotRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSlotRequestCopyWith<$Res> {
  factory $UpdateSlotRequestCopyWith(
          UpdateSlotRequest value, $Res Function(UpdateSlotRequest) then) =
      _$UpdateSlotRequestCopyWithImpl<$Res, UpdateSlotRequest>;
  @useResult
  $Res call(
      {List<Slots>? morning, List<Slots>? afternoon, List<Slots>? evening});
}

/// @nodoc
class _$UpdateSlotRequestCopyWithImpl<$Res, $Val extends UpdateSlotRequest>
    implements $UpdateSlotRequestCopyWith<$Res> {
  _$UpdateSlotRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? evening = freezed,
  }) {
    return _then(_value.copyWith(
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<Slots>?,
      afternoon: freezed == afternoon
          ? _value.afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<Slots>?,
      evening: freezed == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as List<Slots>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateSlotRequestCopyWith<$Res>
    implements $UpdateSlotRequestCopyWith<$Res> {
  factory _$$_UpdateSlotRequestCopyWith(_$_UpdateSlotRequest value,
          $Res Function(_$_UpdateSlotRequest) then) =
      __$$_UpdateSlotRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Slots>? morning, List<Slots>? afternoon, List<Slots>? evening});
}

/// @nodoc
class __$$_UpdateSlotRequestCopyWithImpl<$Res>
    extends _$UpdateSlotRequestCopyWithImpl<$Res, _$_UpdateSlotRequest>
    implements _$$_UpdateSlotRequestCopyWith<$Res> {
  __$$_UpdateSlotRequestCopyWithImpl(
      _$_UpdateSlotRequest _value, $Res Function(_$_UpdateSlotRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? evening = freezed,
  }) {
    return _then(_$_UpdateSlotRequest(
      morning: freezed == morning
          ? _value._morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<Slots>?,
      afternoon: freezed == afternoon
          ? _value._afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<Slots>?,
      evening: freezed == evening
          ? _value._evening
          : evening // ignore: cast_nullable_to_non_nullable
              as List<Slots>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateSlotRequest implements _UpdateSlotRequest {
  const _$_UpdateSlotRequest(
      {final List<Slots>? morning,
      final List<Slots>? afternoon,
      final List<Slots>? evening})
      : _morning = morning,
        _afternoon = afternoon,
        _evening = evening;

  factory _$_UpdateSlotRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSlotRequestFromJson(json);

  final List<Slots>? _morning;
  @override
  List<Slots>? get morning {
    final value = _morning;
    if (value == null) return null;
    if (_morning is EqualUnmodifiableListView) return _morning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Slots>? _afternoon;
  @override
  List<Slots>? get afternoon {
    final value = _afternoon;
    if (value == null) return null;
    if (_afternoon is EqualUnmodifiableListView) return _afternoon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Slots>? _evening;
  @override
  List<Slots>? get evening {
    final value = _evening;
    if (value == null) return null;
    if (_evening is EqualUnmodifiableListView) return _evening;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateSlotRequest(morning: $morning, afternoon: $afternoon, evening: $evening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSlotRequest &&
            const DeepCollectionEquality().equals(other._morning, _morning) &&
            const DeepCollectionEquality()
                .equals(other._afternoon, _afternoon) &&
            const DeepCollectionEquality().equals(other._evening, _evening));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_morning),
      const DeepCollectionEquality().hash(_afternoon),
      const DeepCollectionEquality().hash(_evening));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSlotRequestCopyWith<_$_UpdateSlotRequest> get copyWith =>
      __$$_UpdateSlotRequestCopyWithImpl<_$_UpdateSlotRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSlotRequestToJson(
      this,
    );
  }
}

abstract class _UpdateSlotRequest implements UpdateSlotRequest {
  const factory _UpdateSlotRequest(
      {final List<Slots>? morning,
      final List<Slots>? afternoon,
      final List<Slots>? evening}) = _$_UpdateSlotRequest;

  factory _UpdateSlotRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateSlotRequest.fromJson;

  @override
  List<Slots>? get morning;
  @override
  List<Slots>? get afternoon;
  @override
  List<Slots>? get evening;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSlotRequestCopyWith<_$_UpdateSlotRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Slots _$SlotsFromJson(Map<String, dynamic> json) {
  return _Slots.fromJson(json);
}

/// @nodoc
mixin _$Slots {
  String? get time => throw _privateConstructorUsedError;
  bool? get isBooked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotsCopyWith<Slots> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotsCopyWith<$Res> {
  factory $SlotsCopyWith(Slots value, $Res Function(Slots) then) =
      _$SlotsCopyWithImpl<$Res, Slots>;
  @useResult
  $Res call({String? time, bool? isBooked});
}

/// @nodoc
class _$SlotsCopyWithImpl<$Res, $Val extends Slots>
    implements $SlotsCopyWith<$Res> {
  _$SlotsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlotsCopyWith<$Res> implements $SlotsCopyWith<$Res> {
  factory _$$_SlotsCopyWith(_$_Slots value, $Res Function(_$_Slots) then) =
      __$$_SlotsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? time, bool? isBooked});
}

/// @nodoc
class __$$_SlotsCopyWithImpl<$Res> extends _$SlotsCopyWithImpl<$Res, _$_Slots>
    implements _$$_SlotsCopyWith<$Res> {
  __$$_SlotsCopyWithImpl(_$_Slots _value, $Res Function(_$_Slots) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_$_Slots(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slots implements _Slots {
  const _$_Slots({this.time, this.isBooked});

  factory _$_Slots.fromJson(Map<String, dynamic> json) =>
      _$$_SlotsFromJson(json);

  @override
  final String? time;
  @override
  final bool? isBooked;

  @override
  String toString() {
    return 'Slots(time: $time, isBooked: $isBooked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Slots &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, isBooked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      __$$_SlotsCopyWithImpl<_$_Slots>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotsToJson(
      this,
    );
  }
}

abstract class _Slots implements Slots {
  const factory _Slots({final String? time, final bool? isBooked}) = _$_Slots;

  factory _Slots.fromJson(Map<String, dynamic> json) = _$_Slots.fromJson;

  @override
  String? get time;
  @override
  bool? get isBooked;
  @override
  @JsonKey(ignore: true)
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateSlotResponse _$UpdateSlotResponseFromJson(Map<String, dynamic> json) {
  return _UpdateSlotResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateSlotResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSlotResponseCopyWith<UpdateSlotResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSlotResponseCopyWith<$Res> {
  factory $UpdateSlotResponseCopyWith(
          UpdateSlotResponse value, $Res Function(UpdateSlotResponse) then) =
      _$UpdateSlotResponseCopyWithImpl<$Res, UpdateSlotResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateSlotResponseCopyWithImpl<$Res, $Val extends UpdateSlotResponse>
    implements $UpdateSlotResponseCopyWith<$Res> {
  _$UpdateSlotResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_UpdateSlotResponseCopyWith<$Res>
    implements $UpdateSlotResponseCopyWith<$Res> {
  factory _$$_UpdateSlotResponseCopyWith(_$_UpdateSlotResponse value,
          $Res Function(_$_UpdateSlotResponse) then) =
      __$$_UpdateSlotResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UpdateSlotResponseCopyWithImpl<$Res>
    extends _$UpdateSlotResponseCopyWithImpl<$Res, _$_UpdateSlotResponse>
    implements _$$_UpdateSlotResponseCopyWith<$Res> {
  __$$_UpdateSlotResponseCopyWithImpl(
      _$_UpdateSlotResponse _value, $Res Function(_$_UpdateSlotResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UpdateSlotResponse(
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
class _$_UpdateSlotResponse implements _UpdateSlotResponse {
  const _$_UpdateSlotResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_UpdateSlotResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSlotResponseFromJson(json);

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
    return 'UpdateSlotResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSlotResponse &&
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
  _$$_UpdateSlotResponseCopyWith<_$_UpdateSlotResponse> get copyWith =>
      __$$_UpdateSlotResponseCopyWithImpl<_$_UpdateSlotResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSlotResponseToJson(
      this,
    );
  }
}

abstract class _UpdateSlotResponse implements UpdateSlotResponse {
  const factory _UpdateSlotResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_UpdateSlotResponse;

  factory _UpdateSlotResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateSlotResponse.fromJson;

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
  _$$_UpdateSlotResponseCopyWith<_$_UpdateSlotResponse> get copyWith =>
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
