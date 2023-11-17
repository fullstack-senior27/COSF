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
  String? get id => throw _privateConstructorUsedError;
  Beautician? get beautician => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
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
      String? id,
      Beautician? beautician,
      DateTime? date,
      String? zipcode,
      String? user,
      int? amount,
      String? startTime,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});

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
    Object? user = freezed,
    Object? amount = freezed,
    Object? startTime = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
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
      String? id,
      Beautician? beautician,
      DateTime? date,
      String? zipcode,
      String? user,
      int? amount,
      String? startTime,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});

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
    Object? user = freezed,
    Object? amount = freezed,
    Object? startTime = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
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
      this.id,
      this.beautician,
      this.date,
      this.zipcode,
      this.user,
      this.amount,
      this.startTime,
      this.createdAt,
      this.updatedAt,
      this.v})
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
  final String? id;
  @override
  final Beautician? beautician;
  @override
  final DateTime? date;
  @override
  final String? zipcode;
  @override
  final String? user;
  @override
  final int? amount;
  @override
  final String? startTime;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'Result(services: $services, status: $status, paymentStatus: $paymentStatus, id: $id, beautician: $beautician, date: $date, zipcode: $zipcode, user: $user, amount: $amount, startTime: $startTime, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
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
            (identical(other.user, user) || other.user == user) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
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
      user,
      amount,
      startTime,
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
      final String? id,
      final Beautician? beautician,
      final DateTime? date,
      final String? zipcode,
      final String? user,
      final int? amount,
      final String? startTime,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<Service>? get services;
  @override
  String? get status;
  @override
  String? get paymentStatus;
  @override
  String? get id;
  @override
  Beautician? get beautician;
  @override
  DateTime? get date;
  @override
  String? get zipcode;
  @override
  String? get user;
  @override
  int? get amount;
  @override
  String? get startTime;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
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
  dynamic get image => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<dynamic>? get photos => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  dynamic get about => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  List<String>? get speciality => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;
  List<String>? get serviceCategories => throw _privateConstructorUsedError;
  List<dynamic>? get reviews => throw _privateConstructorUsedError;
  List<dynamic>? get products => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  List<Availability>? get availability => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
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
  $Res call(
      {dynamic image,
      String? role,
      List<dynamic>? photos,
      String? profession,
      dynamic about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      List<String>? services,
      List<String>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availability>? availability,
      String? address,
      String? id});
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
    Object? image = freezed,
    Object? role = freezed,
    Object? photos = freezed,
    Object? profession = freezed,
    Object? about = freezed,
    Object? website = freezed,
    Object? isEmailVerified = freezed,
    Object? speciality = freezed,
    Object? services = freezed,
    Object? serviceCategories = freezed,
    Object? reviews = freezed,
    Object? products = freezed,
    Object? accountId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? availability = freezed,
    Object? address = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as dynamic,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      speciality: freezed == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serviceCategories: freezed == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<Availability>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {dynamic image,
      String? role,
      List<dynamic>? photos,
      String? profession,
      dynamic about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      List<String>? services,
      List<String>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availability>? availability,
      String? address,
      String? id});
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
    Object? image = freezed,
    Object? role = freezed,
    Object? photos = freezed,
    Object? profession = freezed,
    Object? about = freezed,
    Object? website = freezed,
    Object? isEmailVerified = freezed,
    Object? speciality = freezed,
    Object? services = freezed,
    Object? serviceCategories = freezed,
    Object? reviews = freezed,
    Object? products = freezed,
    Object? accountId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? availability = freezed,
    Object? address = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Beautician(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as dynamic,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      speciality: freezed == speciality
          ? _value._speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serviceCategories: freezed == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      availability: freezed == availability
          ? _value._availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<Availability>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
  const _$_Beautician(
      {this.image,
      this.role,
      final List<dynamic>? photos,
      this.profession,
      this.about,
      this.website,
      this.isEmailVerified,
      final List<String>? speciality,
      final List<String>? services,
      final List<String>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      this.accountId,
      this.name,
      this.email,
      this.phone,
      final List<dynamic>? notes,
      final List<Availability>? availability,
      this.address,
      this.id})
      : _photos = photos,
        _speciality = speciality,
        _services = services,
        _serviceCategories = serviceCategories,
        _reviews = reviews,
        _products = products,
        _notes = notes,
        _availability = availability;

  factory _$_Beautician.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianFromJson(json);

  @override
  final dynamic image;
  @override
  final String? role;
  final List<dynamic>? _photos;
  @override
  List<dynamic>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? profession;
  @override
  final dynamic about;
  @override
  final String? website;
  @override
  final bool? isEmailVerified;
  final List<String>? _speciality;
  @override
  List<String>? get speciality {
    final value = _speciality;
    if (value == null) return null;
    if (_speciality is EqualUnmodifiableListView) return _speciality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _services;
  @override
  List<String>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _serviceCategories;
  @override
  List<String>? get serviceCategories {
    final value = _serviceCategories;
    if (value == null) return null;
    if (_serviceCategories is EqualUnmodifiableListView)
      return _serviceCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _reviews;
  @override
  List<dynamic>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _products;
  @override
  List<dynamic>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? accountId;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  final List<dynamic>? _notes;
  @override
  List<dynamic>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Availability>? _availability;
  @override
  List<Availability>? get availability {
    final value = _availability;
    if (value == null) return null;
    if (_availability is EqualUnmodifiableListView) return _availability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? address;
  @override
  final String? id;

  @override
  String toString() {
    return 'Beautician(image: $image, role: $role, photos: $photos, profession: $profession, about: $about, website: $website, isEmailVerified: $isEmailVerified, speciality: $speciality, services: $services, serviceCategories: $serviceCategories, reviews: $reviews, products: $products, accountId: $accountId, name: $name, email: $email, phone: $phone, notes: $notes, availability: $availability, address: $address, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Beautician &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality()
                .equals(other._speciality, _speciality) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality()
                .equals(other._availability, _availability) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(image),
        role,
        const DeepCollectionEquality().hash(_photos),
        profession,
        const DeepCollectionEquality().hash(about),
        website,
        isEmailVerified,
        const DeepCollectionEquality().hash(_speciality),
        const DeepCollectionEquality().hash(_services),
        const DeepCollectionEquality().hash(_serviceCategories),
        const DeepCollectionEquality().hash(_reviews),
        const DeepCollectionEquality().hash(_products),
        accountId,
        name,
        email,
        phone,
        const DeepCollectionEquality().hash(_notes),
        const DeepCollectionEquality().hash(_availability),
        address,
        id
      ]);

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
  const factory _Beautician(
      {final dynamic image,
      final String? role,
      final List<dynamic>? photos,
      final String? profession,
      final dynamic about,
      final String? website,
      final bool? isEmailVerified,
      final List<String>? speciality,
      final List<String>? services,
      final List<String>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      final String? accountId,
      final String? name,
      final String? email,
      final String? phone,
      final List<dynamic>? notes,
      final List<Availability>? availability,
      final String? address,
      final String? id}) = _$_Beautician;

  factory _Beautician.fromJson(Map<String, dynamic> json) =
      _$_Beautician.fromJson;

  @override
  dynamic get image;
  @override
  String? get role;
  @override
  List<dynamic>? get photos;
  @override
  String? get profession;
  @override
  dynamic get about;
  @override
  String? get website;
  @override
  bool? get isEmailVerified;
  @override
  List<String>? get speciality;
  @override
  List<String>? get services;
  @override
  List<String>? get serviceCategories;
  @override
  List<dynamic>? get reviews;
  @override
  List<dynamic>? get products;
  @override
  String? get accountId;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  List<dynamic>? get notes;
  @override
  List<Availability>? get availability;
  @override
  String? get address;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianCopyWith<_$_Beautician> get copyWith =>
      throw _privateConstructorUsedError;
}

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
mixin _$Availability {
  DateTime? get date => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityCopyWith<Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) then) =
      _$AvailabilityCopyWithImpl<$Res, Availability>;
  @useResult
  $Res call(
      {DateTime? date,
      String? day,
      String? startTime,
      String? endTime,
      bool? isAvailable,
      String? id});
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res, $Val extends Availability>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isAvailable = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailabilityCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$$_AvailabilityCopyWith(
          _$_Availability value, $Res Function(_$_Availability) then) =
      __$$_AvailabilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      String? day,
      String? startTime,
      String? endTime,
      bool? isAvailable,
      String? id});
}

/// @nodoc
class __$$_AvailabilityCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res, _$_Availability>
    implements _$$_AvailabilityCopyWith<$Res> {
  __$$_AvailabilityCopyWithImpl(
      _$_Availability _value, $Res Function(_$_Availability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isAvailable = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Availability(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Availability implements _Availability {
  const _$_Availability(
      {this.date,
      this.day,
      this.startTime,
      this.endTime,
      this.isAvailable,
      this.id});

  factory _$_Availability.fromJson(Map<String, dynamic> json) =>
      _$$_AvailabilityFromJson(json);

  @override
  final DateTime? date;
  @override
  final String? day;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final bool? isAvailable;
  @override
  final String? id;

  @override
  String toString() {
    return 'Availability(date: $date, day: $day, startTime: $startTime, endTime: $endTime, isAvailable: $isAvailable, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Availability &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, day, startTime, endTime, isAvailable, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailabilityCopyWith<_$_Availability> get copyWith =>
      __$$_AvailabilityCopyWithImpl<_$_Availability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailabilityToJson(
      this,
    );
  }
}

abstract class _Availability implements Availability {
  const factory _Availability(
      {final DateTime? date,
      final String? day,
      final String? startTime,
      final String? endTime,
      final bool? isAvailable,
      final String? id}) = _$_Availability;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$_Availability.fromJson;

  @override
  DateTime? get date;
  @override
  String? get day;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  bool? get isAvailable;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AvailabilityCopyWith<_$_Availability> get copyWith =>
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
  String? get serviceCategory => throw _privateConstructorUsedError;
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
      String? serviceCategory,
      String? serviceType,
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
      String? serviceCategory,
      String? serviceType,
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
      this.serviceCategory,
      this.serviceType,
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
  final String? serviceCategory;
  @override
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
      final String? serviceCategory,
      final String? serviceType,
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
  String? get serviceCategory;
  @override
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
