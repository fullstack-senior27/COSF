// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_user_appointments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllUserAppointments _$GetAllUserAppointmentsFromJson(
    Map<String, dynamic> json) {
  return _GetAllUserAppointments.fromJson(json);
}

/// @nodoc
mixin _$GetAllUserAppointments {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllUserAppointmentsCopyWith<GetAllUserAppointments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllUserAppointmentsCopyWith<$Res> {
  factory $GetAllUserAppointmentsCopyWith(GetAllUserAppointments value,
          $Res Function(GetAllUserAppointments) then) =
      _$GetAllUserAppointmentsCopyWithImpl<$Res, GetAllUserAppointments>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetAllUserAppointmentsCopyWithImpl<$Res,
        $Val extends GetAllUserAppointments>
    implements $GetAllUserAppointmentsCopyWith<$Res> {
  _$GetAllUserAppointmentsCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetAllUserAppointmentsCopyWith<$Res>
    implements $GetAllUserAppointmentsCopyWith<$Res> {
  factory _$$_GetAllUserAppointmentsCopyWith(_$_GetAllUserAppointments value,
          $Res Function(_$_GetAllUserAppointments) then) =
      __$$_GetAllUserAppointmentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetAllUserAppointmentsCopyWithImpl<$Res>
    extends _$GetAllUserAppointmentsCopyWithImpl<$Res,
        _$_GetAllUserAppointments>
    implements _$$_GetAllUserAppointmentsCopyWith<$Res> {
  __$$_GetAllUserAppointmentsCopyWithImpl(_$_GetAllUserAppointments _value,
      $Res Function(_$_GetAllUserAppointments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GetAllUserAppointments(
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
class _$_GetAllUserAppointments implements _GetAllUserAppointments {
  const _$_GetAllUserAppointments(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_GetAllUserAppointments.fromJson(Map<String, dynamic> json) =>
      _$$_GetAllUserAppointmentsFromJson(json);

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
    return 'GetAllUserAppointments(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllUserAppointments &&
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
  _$$_GetAllUserAppointmentsCopyWith<_$_GetAllUserAppointments> get copyWith =>
      __$$_GetAllUserAppointmentsCopyWithImpl<_$_GetAllUserAppointments>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAllUserAppointmentsToJson(
      this,
    );
  }
}

abstract class _GetAllUserAppointments implements GetAllUserAppointments {
  const factory _GetAllUserAppointments(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_GetAllUserAppointments;

  factory _GetAllUserAppointments.fromJson(Map<String, dynamic> json) =
      _$_GetAllUserAppointments.fromJson;

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
  _$$_GetAllUserAppointmentsCopyWith<_$_GetAllUserAppointments> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Result>? get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<Result>? results,
      int? totalPages,
      int? currentPage,
      int? limit,
      int? totalResults});
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
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Result>? results,
      int? totalPages,
      int? currentPage,
      int? limit,
      int? totalResults});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_Data(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {final List<Result>? results,
      this.totalPages,
      this.currentPage,
      this.limit,
      this.totalResults})
      : _results = results;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? currentPage;
  @override
  final int? limit;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'Data(results: $results, totalPages: $totalPages, currentPage: $currentPage, limit: $limit, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      totalPages,
      currentPage,
      limit,
      totalResults);

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
  const factory _Data(
      {final List<Result>? results,
      final int? totalPages,
      final int? currentPage,
      final int? limit,
      final int? totalResults}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Result>? get results;
  @override
  int? get totalPages;
  @override
  int? get currentPage;
  @override
  int? get limit;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<Service>? get services => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  Beautician? get beautician => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get zipcode =>
      throw _privateConstructorUsedError; // Beautician? user,
  int? get amount => throw _privateConstructorUsedError;
  String? get timeSlot => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {List<Service>? services,
      String? status,
      String? paymentStatus,
      @JsonKey(name: "_id") String? id,
      Beautician? beautician,
      DateTime? date,
      String? zipcode,
      int? amount,
      String? timeSlot,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});

  $BeauticianCopyWith<$Res>? get beautician;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? id = freezed,
    Object? beautician = freezed,
    Object? date = freezed,
    Object? zipcode = freezed,
    Object? amount = freezed,
    Object? timeSlot = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as Beautician?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $BeauticianCopyWith<$Res>? get beautician {
    if (_value.beautician == null) {
      return null;
    }

    return $BeauticianCopyWith<$Res>(_value.beautician!, (value) {
      return _then(_value.copyWith(beautician: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Service>? services,
      String? status,
      String? paymentStatus,
      @JsonKey(name: "_id") String? id,
      Beautician? beautician,
      DateTime? date,
      String? zipcode,
      int? amount,
      String? timeSlot,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});

  @override
  $BeauticianCopyWith<$Res>? get beautician;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? id = freezed,
    Object? beautician = freezed,
    Object? date = freezed,
    Object? zipcode = freezed,
    Object? amount = freezed,
    Object? timeSlot = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Result(
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as Beautician?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Result implements _Result {
  const _$_Result(
      {final List<Service>? services,
      this.status,
      this.paymentStatus,
      @JsonKey(name: "_id") this.id,
      this.beautician,
      this.date,
      this.zipcode,
      this.amount,
      this.timeSlot,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v})
      : _services = services;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<Service>? _services;
  @override
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? paymentStatus;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final Beautician? beautician;
  @override
  final DateTime? date;
  @override
  final String? zipcode;
// Beautician? user,
  @override
  final int? amount;
  @override
  final String? timeSlot;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'Result(services: $services, status: $status, paymentStatus: $paymentStatus, id: $id, beautician: $beautician, date: $date, zipcode: $zipcode, amount: $amount, timeSlot: $timeSlot, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
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
      const DeepCollectionEquality().hash(_services),
      status,
      paymentStatus,
      id,
      beautician,
      date,
      zipcode,
      amount,
      timeSlot,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final List<Service>? services,
      final String? status,
      final String? paymentStatus,
      @JsonKey(name: "_id") final String? id,
      final Beautician? beautician,
      final DateTime? date,
      final String? zipcode,
      final int? amount,
      final String? timeSlot,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<Service>? get services;
  @override
  String? get status;
  @override
  String? get paymentStatus;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  Beautician? get beautician;
  @override
  DateTime? get date;
  @override
  String? get zipcode;
  @override // Beautician? user,
  int? get amount;
  @override
  String? get timeSlot;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Beautician _$BeauticianFromJson(Map<String, dynamic> json) {
  return _Beautician.fromJson(json);
}

/// @nodoc
mixin _$Beautician {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianCopyWith<Beautician> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianCopyWith<$Res> {
  factory $BeauticianCopyWith(
          Beautician value, $Res Function(Beautician) then) =
      _$BeauticianCopyWithImpl<$Res, Beautician>;
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class _$BeauticianCopyWithImpl<$Res, $Val extends Beautician>
    implements $BeauticianCopyWith<$Res> {
  _$BeauticianCopyWithImpl(this._value, this._then);

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
abstract class _$$_BeauticianCopyWith<$Res>
    implements $BeauticianCopyWith<$Res> {
  factory _$$_BeauticianCopyWith(
          _$_Beautician value, $Res Function(_$_Beautician) then) =
      __$$_BeauticianCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class __$$_BeauticianCopyWithImpl<$Res>
    extends _$BeauticianCopyWithImpl<$Res, _$_Beautician>
    implements _$$_BeauticianCopyWith<$Res> {
  __$$_BeauticianCopyWithImpl(
      _$_Beautician _value, $Res Function(_$_Beautician) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Beautician(
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
class _$_Beautician implements _Beautician {
  const _$_Beautician({this.name, this.id});

  factory _$_Beautician.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianFromJson(json);

  @override
  final String? name;
  @override
  final String? id;

  @override
  String toString() {
    return 'Beautician(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Beautician &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticianCopyWith<_$_Beautician> get copyWith =>
      __$$_BeauticianCopyWithImpl<_$_Beautician>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianToJson(
      this,
    );
  }
}

abstract class _Beautician implements Beautician {
  const factory _Beautician({final String? name, final String? id}) =
      _$_Beautician;

  factory _Beautician.fromJson(Map<String, dynamic> json) =
      _$_Beautician.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianCopyWith<_$_Beautician> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationInMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_category')
  String? get serviceCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_type')
  String? get serviceType => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {bool? isAvailable,
      String? name,
      int? price,
      String? description,
      int? durationInMinutes,
      @JsonKey(name: 'service_category') String? serviceCategory,
      @JsonKey(name: 'service_type') String? serviceType,
      String? beautician,
      String? id});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? durationInMinutes = freezed,
    Object? serviceCategory = freezed,
    Object? serviceType = freezed,
    Object? beautician = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceCategory: freezed == serviceCategory
          ? _value.serviceCategory
          : serviceCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isAvailable,
      String? name,
      int? price,
      String? description,
      int? durationInMinutes,
      @JsonKey(name: 'service_category') String? serviceCategory,
      @JsonKey(name: 'service_type') String? serviceType,
      String? beautician,
      String? id});
}

/// @nodoc
class __$$_ServiceCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$_Service>
    implements _$$_ServiceCopyWith<$Res> {
  __$$_ServiceCopyWithImpl(_$_Service _value, $Res Function(_$_Service) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? durationInMinutes = freezed,
    Object? serviceCategory = freezed,
    Object? serviceType = freezed,
    Object? beautician = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Service(
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceCategory: freezed == serviceCategory
          ? _value.serviceCategory
          : serviceCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
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
class _$_Service implements _Service {
  const _$_Service(
      {this.isAvailable,
      this.name,
      this.price,
      this.description,
      this.durationInMinutes,
      @JsonKey(name: 'service_category') this.serviceCategory,
      @JsonKey(name: 'service_type') this.serviceType,
      this.beautician,
      this.id});

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final bool? isAvailable;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? description;
  @override
  final int? durationInMinutes;
  @override
  @JsonKey(name: 'service_category')
  final String? serviceCategory;
  @override
  @JsonKey(name: 'service_type')
  final String? serviceType;
  @override
  final String? beautician;
  @override
  final String? id;

  @override
  String toString() {
    return 'Service(isAvailable: $isAvailable, name: $name, price: $price, description: $description, durationInMinutes: $durationInMinutes, serviceCategory: $serviceCategory, serviceType: $serviceType, beautician: $beautician, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.serviceCategory, serviceCategory) ||
                other.serviceCategory == serviceCategory) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isAvailable,
      name,
      price,
      description,
      durationInMinutes,
      serviceCategory,
      serviceType,
      beautician,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      __$$_ServiceCopyWithImpl<_$_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceToJson(
      this,
    );
  }
}

abstract class _Service implements Service {
  const factory _Service(
      {final bool? isAvailable,
      final String? name,
      final int? price,
      final String? description,
      final int? durationInMinutes,
      @JsonKey(name: 'service_category') final String? serviceCategory,
      @JsonKey(name: 'service_type') final String? serviceType,
      final String? beautician,
      final String? id}) = _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  bool? get isAvailable;
  @override
  String? get name;
  @override
  int? get price;
  @override
  String? get description;
  @override
  int? get durationInMinutes;
  @override
  @JsonKey(name: 'service_category')
  String? get serviceCategory;
  @override
  @JsonKey(name: 'service_type')
  String? get serviceType;
  @override
  String? get beautician;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
