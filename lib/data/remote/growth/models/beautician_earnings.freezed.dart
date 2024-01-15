// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beautician_earnings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianEarnings _$BeauticianEarningsFromJson(Map<String, dynamic> json) {
  return _BeauticianEarnings.fromJson(json);
}

/// @nodoc
mixin _$BeauticianEarnings {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianEarningsCopyWith<BeauticianEarnings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianEarningsCopyWith<$Res> {
  factory $BeauticianEarningsCopyWith(
          BeauticianEarnings value, $Res Function(BeauticianEarnings) then) =
      _$BeauticianEarningsCopyWithImpl<$Res, BeauticianEarnings>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$BeauticianEarningsCopyWithImpl<$Res, $Val extends BeauticianEarnings>
    implements $BeauticianEarningsCopyWith<$Res> {
  _$BeauticianEarningsCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeauticianEarningsCopyWith<$Res>
    implements $BeauticianEarningsCopyWith<$Res> {
  factory _$$_BeauticianEarningsCopyWith(_$_BeauticianEarnings value,
          $Res Function(_$_BeauticianEarnings) then) =
      __$$_BeauticianEarningsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$_BeauticianEarningsCopyWithImpl<$Res>
    extends _$BeauticianEarningsCopyWithImpl<$Res, _$_BeauticianEarnings>
    implements _$$_BeauticianEarningsCopyWith<$Res> {
  __$$_BeauticianEarningsCopyWithImpl(
      _$_BeauticianEarnings _value, $Res Function(_$_BeauticianEarnings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeauticianEarnings(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeauticianEarnings implements _BeauticianEarnings {
  const _$_BeauticianEarnings(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$_BeauticianEarnings.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianEarningsFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BeauticianEarnings(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianEarnings &&
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
  _$$_BeauticianEarningsCopyWith<_$_BeauticianEarnings> get copyWith =>
      __$$_BeauticianEarningsCopyWithImpl<_$_BeauticianEarnings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianEarningsToJson(
      this,
    );
  }
}

abstract class _BeauticianEarnings implements BeauticianEarnings {
  const factory _BeauticianEarnings(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$_BeauticianEarnings;

  factory _BeauticianEarnings.fromJson(Map<String, dynamic> json) =
      _$_BeauticianEarnings.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianEarningsCopyWith<_$_BeauticianEarnings> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  BookingDateTime? get bookingDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  int? get tip => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get appointment => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

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
      {BookingDateTime? bookingDateTime,
      @JsonKey(name: '_id') String? id,
      String? beautician,
      int? fee,
      int? tip,
      String? paymentMethod,
      String? status,
      String? appointment,
      int? totalAmount,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: '__v') int? v});

  $BookingDateTimeCopyWith<$Res>? get bookingDateTime;
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
    Object? bookingDateTime = freezed,
    Object? id = freezed,
    Object? beautician = freezed,
    Object? fee = freezed,
    Object? tip = freezed,
    Object? paymentMethod = freezed,
    Object? status = freezed,
    Object? appointment = freezed,
    Object? totalAmount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      bookingDateTime: freezed == bookingDateTime
          ? _value.bookingDateTime
          : bookingDateTime // ignore: cast_nullable_to_non_nullable
              as BookingDateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingDateTimeCopyWith<$Res>? get bookingDateTime {
    if (_value.bookingDateTime == null) {
      return null;
    }

    return $BookingDateTimeCopyWith<$Res>(_value.bookingDateTime!, (value) {
      return _then(_value.copyWith(bookingDateTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookingDateTime? bookingDateTime,
      @JsonKey(name: '_id') String? id,
      String? beautician,
      int? fee,
      int? tip,
      String? paymentMethod,
      String? status,
      String? appointment,
      int? totalAmount,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: '__v') int? v});

  @override
  $BookingDateTimeCopyWith<$Res>? get bookingDateTime;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingDateTime = freezed,
    Object? id = freezed,
    Object? beautician = freezed,
    Object? fee = freezed,
    Object? tip = freezed,
    Object? paymentMethod = freezed,
    Object? status = freezed,
    Object? appointment = freezed,
    Object? totalAmount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Datum(
      bookingDateTime: freezed == bookingDateTime
          ? _value.bookingDateTime
          : bookingDateTime // ignore: cast_nullable_to_non_nullable
              as BookingDateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.bookingDateTime,
      @JsonKey(name: '_id') this.id,
      this.beautician,
      this.fee,
      this.tip,
      this.paymentMethod,
      this.status,
      this.appointment,
      this.totalAmount,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: '__v') this.v});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final BookingDateTime? bookingDateTime;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? beautician;
  @override
  final int? fee;
  @override
  final int? tip;
  @override
  final String? paymentMethod;
  @override
  final String? status;
  @override
  final String? appointment;
  @override
  final int? totalAmount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;

  @override
  String toString() {
    return 'Datum(bookingDateTime: $bookingDateTime, id: $id, beautician: $beautician, fee: $fee, tip: $tip, paymentMethod: $paymentMethod, status: $status, appointment: $appointment, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.bookingDateTime, bookingDateTime) ||
                other.bookingDateTime == bookingDateTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookingDateTime,
      id,
      beautician,
      fee,
      tip,
      paymentMethod,
      status,
      appointment,
      totalAmount,
      createdAt,
      updatedAt,
      v);

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
      {final BookingDateTime? bookingDateTime,
      @JsonKey(name: '_id') final String? id,
      final String? beautician,
      final int? fee,
      final int? tip,
      final String? paymentMethod,
      final String? status,
      final String? appointment,
      final int? totalAmount,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: '__v') final int? v}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  BookingDateTime? get bookingDateTime;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get beautician;
  @override
  int? get fee;
  @override
  int? get tip;
  @override
  String? get paymentMethod;
  @override
  String? get status;
  @override
  String? get appointment;
  @override
  int? get totalAmount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDateTime _$BookingDateTimeFromJson(Map<String, dynamic> json) {
  return _BookingDateTime.fromJson(json);
}

/// @nodoc
mixin _$BookingDateTime {
  String? get timeSlot => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDateTimeCopyWith<BookingDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDateTimeCopyWith<$Res> {
  factory $BookingDateTimeCopyWith(
          BookingDateTime value, $Res Function(BookingDateTime) then) =
      _$BookingDateTimeCopyWithImpl<$Res, BookingDateTime>;
  @useResult
  $Res call({String? timeSlot, DateTime? date});
}

/// @nodoc
class _$BookingDateTimeCopyWithImpl<$Res, $Val extends BookingDateTime>
    implements $BookingDateTimeCopyWith<$Res> {
  _$BookingDateTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookingDateTimeCopyWith<$Res>
    implements $BookingDateTimeCopyWith<$Res> {
  factory _$$_BookingDateTimeCopyWith(
          _$_BookingDateTime value, $Res Function(_$_BookingDateTime) then) =
      __$$_BookingDateTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? timeSlot, DateTime? date});
}

/// @nodoc
class __$$_BookingDateTimeCopyWithImpl<$Res>
    extends _$BookingDateTimeCopyWithImpl<$Res, _$_BookingDateTime>
    implements _$$_BookingDateTimeCopyWith<$Res> {
  __$$_BookingDateTimeCopyWithImpl(
      _$_BookingDateTime _value, $Res Function(_$_BookingDateTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_BookingDateTime(
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
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
class _$_BookingDateTime implements _BookingDateTime {
  const _$_BookingDateTime({this.timeSlot, this.date});

  factory _$_BookingDateTime.fromJson(Map<String, dynamic> json) =>
      _$$_BookingDateTimeFromJson(json);

  @override
  final String? timeSlot;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'BookingDateTime(timeSlot: $timeSlot, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingDateTime &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timeSlot, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingDateTimeCopyWith<_$_BookingDateTime> get copyWith =>
      __$$_BookingDateTimeCopyWithImpl<_$_BookingDateTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingDateTimeToJson(
      this,
    );
  }
}

abstract class _BookingDateTime implements BookingDateTime {
  const factory _BookingDateTime(
      {final String? timeSlot, final DateTime? date}) = _$_BookingDateTime;

  factory _BookingDateTime.fromJson(Map<String, dynamic> json) =
      _$_BookingDateTime.fromJson;

  @override
  String? get timeSlot;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_BookingDateTimeCopyWith<_$_BookingDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}
