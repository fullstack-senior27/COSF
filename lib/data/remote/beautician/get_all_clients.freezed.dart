// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_clients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllClients _$GetAllClientsFromJson(Map<String, dynamic> json) {
  return _GetAllClients.fromJson(json);
}

/// @nodoc
mixin _$GetAllClients {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllClientsCopyWith<GetAllClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllClientsCopyWith<$Res> {
  factory $GetAllClientsCopyWith(
          GetAllClients value, $Res Function(GetAllClients) then) =
      _$GetAllClientsCopyWithImpl<$Res, GetAllClients>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$GetAllClientsCopyWithImpl<$Res, $Val extends GetAllClients>
    implements $GetAllClientsCopyWith<$Res> {
  _$GetAllClientsCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetAllClientsCopyWith<$Res>
    implements $GetAllClientsCopyWith<$Res> {
  factory _$$_GetAllClientsCopyWith(
          _$_GetAllClients value, $Res Function(_$_GetAllClients) then) =
      __$$_GetAllClientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$_GetAllClientsCopyWithImpl<$Res>
    extends _$GetAllClientsCopyWithImpl<$Res, _$_GetAllClients>
    implements _$$_GetAllClientsCopyWith<$Res> {
  __$$_GetAllClientsCopyWithImpl(
      _$_GetAllClients _value, $Res Function(_$_GetAllClients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GetAllClients(
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
class _$_GetAllClients implements _GetAllClients {
  const _$_GetAllClients(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$_GetAllClients.fromJson(Map<String, dynamic> json) =>
      _$$_GetAllClientsFromJson(json);

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
    return 'GetAllClients(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllClients &&
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
  _$$_GetAllClientsCopyWith<_$_GetAllClients> get copyWith =>
      __$$_GetAllClientsCopyWithImpl<_$_GetAllClients>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAllClientsToJson(
      this,
    );
  }
}

abstract class _GetAllClients implements GetAllClients {
  const factory _GetAllClients(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$_GetAllClients;

  factory _GetAllClients.fromJson(Map<String, dynamic> json) =
      _$_GetAllClients.fromJson;

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
  _$$_GetAllClientsCopyWith<_$_GetAllClients> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  Client? get client => throw _privateConstructorUsedError;
  bool? get isBlocked => throw _privateConstructorUsedError;
  String? get reasonForBlocking => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  dynamic get offlineClient => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String? beautician,
      Client? client,
      bool? isBlocked,
      String? reasonForBlocking,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      dynamic offlineClient});

  $ClientCopyWith<$Res>? get client;
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
    Object? id = freezed,
    Object? beautician = freezed,
    Object? client = freezed,
    Object? isBlocked = freezed,
    Object? reasonForBlocking = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? offlineClient = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      reasonForBlocking: freezed == reasonForBlocking
          ? _value.reasonForBlocking
          : reasonForBlocking // ignore: cast_nullable_to_non_nullable
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
      offlineClient: freezed == offlineClient
          ? _value.offlineClient
          : offlineClient // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
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
      {@JsonKey(name: "_id") String? id,
      String? beautician,
      Client? client,
      bool? isBlocked,
      String? reasonForBlocking,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      dynamic offlineClient});

  @override
  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beautician = freezed,
    Object? client = freezed,
    Object? isBlocked = freezed,
    Object? reasonForBlocking = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? offlineClient = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      reasonForBlocking: freezed == reasonForBlocking
          ? _value.reasonForBlocking
          : reasonForBlocking // ignore: cast_nullable_to_non_nullable
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
      offlineClient: freezed == offlineClient
          ? _value.offlineClient
          : offlineClient // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {@JsonKey(name: "_id") this.id,
      this.beautician,
      this.client,
      this.isBlocked,
      this.reasonForBlocking,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v,
      this.offlineClient});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? beautician;
  @override
  final Client? client;
  @override
  final bool? isBlocked;
  @override
  final String? reasonForBlocking;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  final dynamic offlineClient;

  @override
  String toString() {
    return 'Datum(id: $id, beautician: $beautician, client: $client, isBlocked: $isBlocked, reasonForBlocking: $reasonForBlocking, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, offlineClient: $offlineClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.reasonForBlocking, reasonForBlocking) ||
                other.reasonForBlocking == reasonForBlocking) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            const DeepCollectionEquality()
                .equals(other.offlineClient, offlineClient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      beautician,
      client,
      isBlocked,
      reasonForBlocking,
      createdAt,
      updatedAt,
      v,
      const DeepCollectionEquality().hash(offlineClient));

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
      {@JsonKey(name: "_id") final String? id,
      final String? beautician,
      final Client? client,
      final bool? isBlocked,
      final String? reasonForBlocking,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v,
      final dynamic offlineClient}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get beautician;
  @override
  Client? get client;
  @override
  bool? get isBlocked;
  @override
  String? get reasonForBlocking;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  dynamic get offlineClient;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  dynamic get image => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  bool? get isOffline => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get homeNumber => throw _privateConstructorUsedError;
  String? get streetAddress => throw _privateConstructorUsedError;
  int? get apt => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call(
      {dynamic image,
      String? role,
      bool? isEmailVerified,
      String? customerId,
      bool? isOffline,
      String? name,
      String? email,
      String? phone,
      String? homeNumber,
      String? streetAddress,
      int? apt,
      String? city,
      String? state,
      String? zip,
      DateTime? birthday,
      String? id});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? customerId = freezed,
    Object? isOffline = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? homeNumber = freezed,
    Object? streetAddress = freezed,
    Object? apt = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zip = freezed,
    Object? birthday = freezed,
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
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOffline: freezed == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      homeNumber: freezed == homeNumber
          ? _value.homeNumber
          : homeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: freezed == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      apt: freezed == apt
          ? _value.apt
          : apt // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic image,
      String? role,
      bool? isEmailVerified,
      String? customerId,
      bool? isOffline,
      String? name,
      String? email,
      String? phone,
      String? homeNumber,
      String? streetAddress,
      int? apt,
      String? city,
      String? state,
      String? zip,
      DateTime? birthday,
      String? id});
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$_Client>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? customerId = freezed,
    Object? isOffline = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? homeNumber = freezed,
    Object? streetAddress = freezed,
    Object? apt = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zip = freezed,
    Object? birthday = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Client(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOffline: freezed == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      homeNumber: freezed == homeNumber
          ? _value.homeNumber
          : homeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: freezed == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      apt: freezed == apt
          ? _value.apt
          : apt // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Client implements _Client {
  const _$_Client(
      {this.image,
      this.role,
      this.isEmailVerified,
      this.customerId,
      this.isOffline,
      this.name,
      this.email,
      this.phone,
      this.homeNumber,
      this.streetAddress,
      this.apt,
      this.city,
      this.state,
      this.zip,
      this.birthday,
      this.id});

  factory _$_Client.fromJson(Map<String, dynamic> json) =>
      _$$_ClientFromJson(json);

  @override
  final dynamic image;
  @override
  final String? role;
  @override
  final bool? isEmailVerified;
  @override
  final String? customerId;
  @override
  final bool? isOffline;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? homeNumber;
  @override
  final String? streetAddress;
  @override
  final int? apt;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zip;
  @override
  final DateTime? birthday;
  @override
  final String? id;

  @override
  String toString() {
    return 'Client(image: $image, role: $role, isEmailVerified: $isEmailVerified, customerId: $customerId, isOffline: $isOffline, name: $name, email: $email, phone: $phone, homeNumber: $homeNumber, streetAddress: $streetAddress, apt: $apt, city: $city, state: $state, zip: $zip, birthday: $birthday, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Client &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.homeNumber, homeNumber) ||
                other.homeNumber == homeNumber) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.apt, apt) || other.apt == apt) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      role,
      isEmailVerified,
      customerId,
      isOffline,
      name,
      email,
      phone,
      homeNumber,
      streetAddress,
      apt,
      city,
      state,
      zip,
      birthday,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      __$$_ClientCopyWithImpl<_$_Client>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  const factory _Client(
      {final dynamic image,
      final String? role,
      final bool? isEmailVerified,
      final String? customerId,
      final bool? isOffline,
      final String? name,
      final String? email,
      final String? phone,
      final String? homeNumber,
      final String? streetAddress,
      final int? apt,
      final String? city,
      final String? state,
      final String? zip,
      final DateTime? birthday,
      final String? id}) = _$_Client;

  factory _Client.fromJson(Map<String, dynamic> json) = _$_Client.fromJson;

  @override
  dynamic get image;
  @override
  String? get role;
  @override
  bool? get isEmailVerified;
  @override
  String? get customerId;
  @override
  bool? get isOffline;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get homeNumber;
  @override
  String? get streetAddress;
  @override
  int? get apt;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zip;
  @override
  DateTime? get birthday;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      throw _privateConstructorUsedError;
}
