// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianAvailabilityResponse _$BeauticianAvailabilityResponseFromJson(
    Map<String, dynamic> json) {
  return _BeauticianAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$BeauticianAvailabilityResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianAvailabilityResponseCopyWith<BeauticianAvailabilityResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianAvailabilityResponseCopyWith<$Res> {
  factory $BeauticianAvailabilityResponseCopyWith(
          BeauticianAvailabilityResponse value,
          $Res Function(BeauticianAvailabilityResponse) then) =
      _$BeauticianAvailabilityResponseCopyWithImpl<$Res,
          BeauticianAvailabilityResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BeauticianAvailabilityResponseCopyWithImpl<$Res,
        $Val extends BeauticianAvailabilityResponse>
    implements $BeauticianAvailabilityResponseCopyWith<$Res> {
  _$BeauticianAvailabilityResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_BeauticianAvailabilityResponseCopyWith<$Res>
    implements $BeauticianAvailabilityResponseCopyWith<$Res> {
  factory _$$_BeauticianAvailabilityResponseCopyWith(
          _$_BeauticianAvailabilityResponse value,
          $Res Function(_$_BeauticianAvailabilityResponse) then) =
      __$$_BeauticianAvailabilityResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BeauticianAvailabilityResponseCopyWithImpl<$Res>
    extends _$BeauticianAvailabilityResponseCopyWithImpl<$Res,
        _$_BeauticianAvailabilityResponse>
    implements _$$_BeauticianAvailabilityResponseCopyWith<$Res> {
  __$$_BeauticianAvailabilityResponseCopyWithImpl(
      _$_BeauticianAvailabilityResponse _value,
      $Res Function(_$_BeauticianAvailabilityResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeauticianAvailabilityResponse(
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
class _$_BeauticianAvailabilityResponse
    implements _BeauticianAvailabilityResponse {
  const _$_BeauticianAvailabilityResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_BeauticianAvailabilityResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianAvailabilityResponseFromJson(json);

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
    return 'BeauticianAvailabilityResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianAvailabilityResponse &&
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
  _$$_BeauticianAvailabilityResponseCopyWith<_$_BeauticianAvailabilityResponse>
      get copyWith => __$$_BeauticianAvailabilityResponseCopyWithImpl<
          _$_BeauticianAvailabilityResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianAvailabilityResponseToJson(
      this,
    );
  }
}

abstract class _BeauticianAvailabilityResponse
    implements BeauticianAvailabilityResponse {
  const factory _BeauticianAvailabilityResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_BeauticianAvailabilityResponse;

  factory _BeauticianAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$_BeauticianAvailabilityResponse.fromJson;

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
  _$$_BeauticianAvailabilityResponseCopyWith<_$_BeauticianAvailabilityResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Day>? get days => throw _privateConstructorUsedError;
  Slots? get slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<Day>? days, Slots? slots});

  $SlotsCopyWith<$Res>? get slots;
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
    Object? days = freezed,
    Object? slots = freezed,
  }) {
    return _then(_value.copyWith(
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as Slots?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SlotsCopyWith<$Res>? get slots {
    if (_value.slots == null) {
      return null;
    }

    return $SlotsCopyWith<$Res>(_value.slots!, (value) {
      return _then(_value.copyWith(slots: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Day>? days, Slots? slots});

  @override
  $SlotsCopyWith<$Res>? get slots;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = freezed,
    Object? slots = freezed,
  }) {
    return _then(_$_Data(
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as Slots?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({final List<Day>? days, this.slots}) : _days = days;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<Day>? _days;
  @override
  List<Day>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Slots? slots;

  @override
  String toString() {
    return 'Data(days: $days, slots: $slots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.slots, slots) || other.slots == slots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_days), slots);

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
  const factory _Data({final List<Day>? days, final Slots? slots}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Day>? get days;
  @override
  Slots? get slots;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {bool? isAvailable,
      String? day,
      @JsonKey(name: '_id') String? id,
      DateTime? date});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? day = freezed,
    Object? id = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$_DayCopyWith(_$_Day value, $Res Function(_$_Day) then) =
      __$$_DayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isAvailable,
      String? day,
      @JsonKey(name: '_id') String? id,
      DateTime? date});
}

/// @nodoc
class __$$_DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$_Day>
    implements _$$_DayCopyWith<$Res> {
  __$$_DayCopyWithImpl(_$_Day _value, $Res Function(_$_Day) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? day = freezed,
    Object? id = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_Day(
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Day implements _Day {
  const _$_Day(
      {this.isAvailable, this.day, @JsonKey(name: '_id') this.id, this.date});

  factory _$_Day.fromJson(Map<String, dynamic> json) => _$$_DayFromJson(json);

  @override
  final bool? isAvailable;
  @override
  final String? day;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'Day(isAvailable: $isAvailable, day: $day, id: $id, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Day &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAvailable, day, id, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayCopyWith<_$_Day> get copyWith =>
      __$$_DayCopyWithImpl<_$_Day>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {final bool? isAvailable,
      final String? day,
      @JsonKey(name: '_id') final String? id,
      final DateTime? date}) = _$_Day;

  factory _Day.fromJson(Map<String, dynamic> json) = _$_Day.fromJson;

  @override
  bool? get isAvailable;
  @override
  String? get day;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_DayCopyWith<_$_Day> get copyWith => throw _privateConstructorUsedError;
}

Slots _$SlotsFromJson(Map<String, dynamic> json) {
  return _Slots.fromJson(json);
}

/// @nodoc
mixin _$Slots {
  List<Afternoon>? get morning => throw _privateConstructorUsedError;
  List<Afternoon>? get afternoon => throw _privateConstructorUsedError;
  List<Afternoon>? get evening => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotsCopyWith<Slots> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotsCopyWith<$Res> {
  factory $SlotsCopyWith(Slots value, $Res Function(Slots) then) =
      _$SlotsCopyWithImpl<$Res, Slots>;
  @useResult
  $Res call(
      {List<Afternoon>? morning,
      List<Afternoon>? afternoon,
      List<Afternoon>? evening});
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
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? evening = freezed,
  }) {
    return _then(_value.copyWith(
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      afternoon: freezed == afternoon
          ? _value.afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      evening: freezed == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlotsCopyWith<$Res> implements $SlotsCopyWith<$Res> {
  factory _$$_SlotsCopyWith(_$_Slots value, $Res Function(_$_Slots) then) =
      __$$_SlotsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Afternoon>? morning,
      List<Afternoon>? afternoon,
      List<Afternoon>? evening});
}

/// @nodoc
class __$$_SlotsCopyWithImpl<$Res> extends _$SlotsCopyWithImpl<$Res, _$_Slots>
    implements _$$_SlotsCopyWith<$Res> {
  __$$_SlotsCopyWithImpl(_$_Slots _value, $Res Function(_$_Slots) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? evening = freezed,
  }) {
    return _then(_$_Slots(
      morning: freezed == morning
          ? _value._morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      afternoon: freezed == afternoon
          ? _value._afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      evening: freezed == evening
          ? _value._evening
          : evening // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slots implements _Slots {
  const _$_Slots(
      {final List<Afternoon>? morning,
      final List<Afternoon>? afternoon,
      final List<Afternoon>? evening})
      : _morning = morning,
        _afternoon = afternoon,
        _evening = evening;

  factory _$_Slots.fromJson(Map<String, dynamic> json) =>
      _$$_SlotsFromJson(json);

  final List<Afternoon>? _morning;
  @override
  List<Afternoon>? get morning {
    final value = _morning;
    if (value == null) return null;
    if (_morning is EqualUnmodifiableListView) return _morning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Afternoon>? _afternoon;
  @override
  List<Afternoon>? get afternoon {
    final value = _afternoon;
    if (value == null) return null;
    if (_afternoon is EqualUnmodifiableListView) return _afternoon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Afternoon>? _evening;
  @override
  List<Afternoon>? get evening {
    final value = _evening;
    if (value == null) return null;
    if (_evening is EqualUnmodifiableListView) return _evening;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Slots(morning: $morning, afternoon: $afternoon, evening: $evening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Slots &&
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
  const factory _Slots(
      {final List<Afternoon>? morning,
      final List<Afternoon>? afternoon,
      final List<Afternoon>? evening}) = _$_Slots;

  factory _Slots.fromJson(Map<String, dynamic> json) = _$_Slots.fromJson;

  @override
  List<Afternoon>? get morning;
  @override
  List<Afternoon>? get afternoon;
  @override
  List<Afternoon>? get evening;
  @override
  @JsonKey(ignore: true)
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      throw _privateConstructorUsedError;
}

Afternoon _$AfternoonFromJson(Map<String, dynamic> json) {
  return _Afternoon.fromJson(json);
}

/// @nodoc
mixin _$Afternoon {
  bool? get isBooked => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AfternoonCopyWith<Afternoon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AfternoonCopyWith<$Res> {
  factory $AfternoonCopyWith(Afternoon value, $Res Function(Afternoon) then) =
      _$AfternoonCopyWithImpl<$Res, Afternoon>;
  @useResult
  $Res call({bool? isBooked, String? time, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$AfternoonCopyWithImpl<$Res, $Val extends Afternoon>
    implements $AfternoonCopyWith<$Res> {
  _$AfternoonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBooked = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AfternoonCopyWith<$Res> implements $AfternoonCopyWith<$Res> {
  factory _$$_AfternoonCopyWith(
          _$_Afternoon value, $Res Function(_$_Afternoon) then) =
      __$$_AfternoonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isBooked, String? time, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_AfternoonCopyWithImpl<$Res>
    extends _$AfternoonCopyWithImpl<$Res, _$_Afternoon>
    implements _$$_AfternoonCopyWith<$Res> {
  __$$_AfternoonCopyWithImpl(
      _$_Afternoon _value, $Res Function(_$_Afternoon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBooked = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Afternoon(
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
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
class _$_Afternoon implements _Afternoon {
  const _$_Afternoon({this.isBooked, this.time, @JsonKey(name: '_id') this.id});

  factory _$_Afternoon.fromJson(Map<String, dynamic> json) =>
      _$$_AfternoonFromJson(json);

  @override
  final bool? isBooked;
  @override
  final String? time;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Afternoon(isBooked: $isBooked, time: $time, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Afternoon &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isBooked, time, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AfternoonCopyWith<_$_Afternoon> get copyWith =>
      __$$_AfternoonCopyWithImpl<_$_Afternoon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AfternoonToJson(
      this,
    );
  }
}

abstract class _Afternoon implements Afternoon {
  const factory _Afternoon(
      {final bool? isBooked,
      final String? time,
      @JsonKey(name: '_id') final String? id}) = _$_Afternoon;

  factory _Afternoon.fromJson(Map<String, dynamic> json) =
      _$_Afternoon.fromJson;

  @override
  bool? get isBooked;
  @override
  String? get time;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AfternoonCopyWith<_$_Afternoon> get copyWith =>
      throw _privateConstructorUsedError;
}
