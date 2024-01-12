// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAppointmentRequest _$CreateAppointmentRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateAppointmentRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAppointmentRequest {
  String? get user => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get timeSlot => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAppointmentRequestCopyWith<CreateAppointmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppointmentRequestCopyWith<$Res> {
  factory $CreateAppointmentRequestCopyWith(CreateAppointmentRequest value,
          $Res Function(CreateAppointmentRequest) then) =
      _$CreateAppointmentRequestCopyWithImpl<$Res, CreateAppointmentRequest>;
  @useResult
  $Res call(
      {String? user,
      String? beautician,
      DateTime? date,
      String? timeSlot,
      String? zipcode,
      List<String>? services});
}

/// @nodoc
class _$CreateAppointmentRequestCopyWithImpl<$Res,
        $Val extends CreateAppointmentRequest>
    implements $CreateAppointmentRequestCopyWith<$Res> {
  _$CreateAppointmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? beautician = freezed,
    Object? date = freezed,
    Object? timeSlot = freezed,
    Object? zipcode = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAppointmentRequestCopyWith<$Res>
    implements $CreateAppointmentRequestCopyWith<$Res> {
  factory _$$_CreateAppointmentRequestCopyWith(
          _$_CreateAppointmentRequest value,
          $Res Function(_$_CreateAppointmentRequest) then) =
      __$$_CreateAppointmentRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user,
      String? beautician,
      DateTime? date,
      String? timeSlot,
      String? zipcode,
      List<String>? services});
}

/// @nodoc
class __$$_CreateAppointmentRequestCopyWithImpl<$Res>
    extends _$CreateAppointmentRequestCopyWithImpl<$Res,
        _$_CreateAppointmentRequest>
    implements _$$_CreateAppointmentRequestCopyWith<$Res> {
  __$$_CreateAppointmentRequestCopyWithImpl(_$_CreateAppointmentRequest _value,
      $Res Function(_$_CreateAppointmentRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? beautician = freezed,
    Object? date = freezed,
    Object? timeSlot = freezed,
    Object? zipcode = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_CreateAppointmentRequest(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAppointmentRequest implements _CreateAppointmentRequest {
  const _$_CreateAppointmentRequest(
      {this.user,
      this.beautician,
      this.date,
      this.timeSlot,
      this.zipcode,
      final List<String>? services})
      : _services = services;

  factory _$_CreateAppointmentRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAppointmentRequestFromJson(json);

  @override
  final String? user;
  @override
  final String? beautician;
  @override
  final DateTime? date;
  @override
  final String? timeSlot;
  @override
  final String? zipcode;
  final List<String>? _services;
  @override
  List<String>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateAppointmentRequest(user: $user, beautician: $beautician, date: $date, timeSlot: $timeSlot, zipcode: $zipcode, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAppointmentRequest &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, beautician, date, timeSlot,
      zipcode, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAppointmentRequestCopyWith<_$_CreateAppointmentRequest>
      get copyWith => __$$_CreateAppointmentRequestCopyWithImpl<
          _$_CreateAppointmentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAppointmentRequestToJson(
      this,
    );
  }
}

abstract class _CreateAppointmentRequest implements CreateAppointmentRequest {
  const factory _CreateAppointmentRequest(
      {final String? user,
      final String? beautician,
      final DateTime? date,
      final String? timeSlot,
      final String? zipcode,
      final List<String>? services}) = _$_CreateAppointmentRequest;

  factory _CreateAppointmentRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateAppointmentRequest.fromJson;

  @override
  String? get user;
  @override
  String? get beautician;
  @override
  DateTime? get date;
  @override
  String? get timeSlot;
  @override
  String? get zipcode;
  @override
  List<String>? get services;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAppointmentRequestCopyWith<_$_CreateAppointmentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

CreateAppointmentResponse _$CreateAppointmentResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateAppointmentResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateAppointmentResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAppointmentResponseCopyWith<CreateAppointmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppointmentResponseCopyWith<$Res> {
  factory $CreateAppointmentResponseCopyWith(CreateAppointmentResponse value,
          $Res Function(CreateAppointmentResponse) then) =
      _$CreateAppointmentResponseCopyWithImpl<$Res, CreateAppointmentResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateAppointmentResponseCopyWithImpl<$Res,
        $Val extends CreateAppointmentResponse>
    implements $CreateAppointmentResponseCopyWith<$Res> {
  _$CreateAppointmentResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateAppointmentResponseCopyWith<$Res>
    implements $CreateAppointmentResponseCopyWith<$Res> {
  factory _$$_CreateAppointmentResponseCopyWith(
          _$_CreateAppointmentResponse value,
          $Res Function(_$_CreateAppointmentResponse) then) =
      __$$_CreateAppointmentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreateAppointmentResponseCopyWithImpl<$Res>
    extends _$CreateAppointmentResponseCopyWithImpl<$Res,
        _$_CreateAppointmentResponse>
    implements _$$_CreateAppointmentResponseCopyWith<$Res> {
  __$$_CreateAppointmentResponseCopyWithImpl(
      _$_CreateAppointmentResponse _value,
      $Res Function(_$_CreateAppointmentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CreateAppointmentResponse(
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
class _$_CreateAppointmentResponse implements _CreateAppointmentResponse {
  const _$_CreateAppointmentResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_CreateAppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAppointmentResponseFromJson(json);

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
    return 'CreateAppointmentResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAppointmentResponse &&
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
  _$$_CreateAppointmentResponseCopyWith<_$_CreateAppointmentResponse>
      get copyWith => __$$_CreateAppointmentResponseCopyWithImpl<
          _$_CreateAppointmentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAppointmentResponseToJson(
      this,
    );
  }
}

abstract class _CreateAppointmentResponse implements CreateAppointmentResponse {
  const factory _CreateAppointmentResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_CreateAppointmentResponse;

  factory _CreateAppointmentResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateAppointmentResponse.fromJson;

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
  _$$_CreateAppointmentResponseCopyWith<_$_CreateAppointmentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<String>? get services => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

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
      {List<String>? services,
      String? status,
      String? paymentStatus,
      @JsonKey(name: "_id") String? id,
      String? beautician,
      DateTime? date,
      String? zipcode,
      String? user,
      int? amount,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
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
    Object? services = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? id = freezed,
    Object? beautician = freezed,
    Object? date = freezed,
    Object? zipcode = freezed,
    Object? user = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as String?,
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
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? services,
      String? status,
      String? paymentStatus,
      @JsonKey(name: "_id") String? id,
      String? beautician,
      DateTime? date,
      String? zipcode,
      String? user,
      int? amount,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Data(
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as String?,
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
class _$_Data implements _Data {
  const _$_Data(
      {final List<String>? services,
      this.status,
      this.paymentStatus,
      @JsonKey(name: "_id") this.id,
      this.beautician,
      this.date,
      this.zipcode,
      this.user,
      this.amount,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v})
      : _services = services;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<String>? _services;
  @override
  List<String>? get services {
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
  final String? beautician;
  @override
  final DateTime? date;
  @override
  final String? zipcode;
  @override
  final String? user;
  @override
  final int? amount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'Data(services: $services, status: $status, paymentStatus: $paymentStatus, id: $id, beautician: $beautician, date: $date, zipcode: $zipcode, user: $user, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
      createdAt,
      updatedAt,
      v);

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
      {final List<String>? services,
      final String? status,
      final String? paymentStatus,
      @JsonKey(name: "_id") final String? id,
      final String? beautician,
      final DateTime? date,
      final String? zipcode,
      final String? user,
      final int? amount,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<String>? get services;
  @override
  String? get status;
  @override
  String? get paymentStatus;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get beautician;
  @override
  DateTime? get date;
  @override
  String? get zipcode;
  @override
  String? get user;
  @override
  int? get amount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
