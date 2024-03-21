// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_client_by_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetClientById _$GetClientByIdFromJson(Map<String, dynamic> json) {
  return _GetClientById.fromJson(json);
}

/// @nodoc
mixin _$GetClientById {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetClientByIdCopyWith<GetClientById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientByIdCopyWith<$Res> {
  factory $GetClientByIdCopyWith(
          GetClientById value, $Res Function(GetClientById) then) =
      _$GetClientByIdCopyWithImpl<$Res, GetClientById>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetClientByIdCopyWithImpl<$Res, $Val extends GetClientById>
    implements $GetClientByIdCopyWith<$Res> {
  _$GetClientByIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetClientByIdCopyWith<$Res>
    implements $GetClientByIdCopyWith<$Res> {
  factory _$$_GetClientByIdCopyWith(
          _$_GetClientById value, $Res Function(_$_GetClientById) then) =
      __$$_GetClientByIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetClientByIdCopyWithImpl<$Res>
    extends _$GetClientByIdCopyWithImpl<$Res, _$_GetClientById>
    implements _$$_GetClientByIdCopyWith<$Res> {
  __$$_GetClientByIdCopyWithImpl(
      _$_GetClientById _value, $Res Function(_$_GetClientById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GetClientById(
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
class _$_GetClientById implements _GetClientById {
  const _$_GetClientById({this.code, this.message, this.isSuccess, this.data});

  factory _$_GetClientById.fromJson(Map<String, dynamic> json) =>
      _$$_GetClientByIdFromJson(json);

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
    return 'GetClientById(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClientById &&
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
  _$$_GetClientByIdCopyWith<_$_GetClientById> get copyWith =>
      __$$_GetClientByIdCopyWithImpl<_$_GetClientById>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetClientByIdToJson(
      this,
    );
  }
}

abstract class _GetClientById implements GetClientById {
  const factory _GetClientById(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_GetClientById;

  factory _GetClientById.fromJson(Map<String, dynamic> json) =
      _$_GetClientById.fromJson;

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
  _$$_GetClientByIdCopyWith<_$_GetClientById> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Client? get client => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  List<ClientNote>? get clientNote => throw _privateConstructorUsedError;

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
      {Client? client, List<String>? photos, List<ClientNote>? clientNote});

  $ClientCopyWith<$Res>? get client;
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
    Object? client = freezed,
    Object? photos = freezed,
    Object? clientNote = freezed,
  }) {
    return _then(_value.copyWith(
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      clientNote: freezed == clientNote
          ? _value.clientNote
          : clientNote // ignore: cast_nullable_to_non_nullable
              as List<ClientNote>?,
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Client? client, List<String>? photos, List<ClientNote>? clientNote});

  @override
  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = freezed,
    Object? photos = freezed,
    Object? clientNote = freezed,
  }) {
    return _then(_$_Data(
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      clientNote: freezed == clientNote
          ? _value._clientNote
          : clientNote // ignore: cast_nullable_to_non_nullable
              as List<ClientNote>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.client,
      final List<String>? photos,
      final List<ClientNote>? clientNote})
      : _photos = photos,
        _clientNote = clientNote;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final Client? client;
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClientNote>? _clientNote;
  @override
  List<ClientNote>? get clientNote {
    final value = _clientNote;
    if (value == null) return null;
    if (_clientNote is EqualUnmodifiableListView) return _clientNote;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(client: $client, photos: $photos, clientNote: $clientNote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality()
                .equals(other._clientNote, _clientNote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      client,
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_clientNote));

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
      {final Client? client,
      final List<String>? photos,
      final List<ClientNote>? clientNote}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  Client? get client;
  @override
  List<String>? get photos;
  @override
  List<ClientNote>? get clientNote;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
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

ClientNote _$ClientNoteFromJson(Map<String, dynamic> json) {
  return _ClientNote.fromJson(json);
}

/// @nodoc
mixin _$ClientNote {
  String? get note => throw _privateConstructorUsedError;
  String? get formula => throw _privateConstructorUsedError;
  List<String>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get client => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientNoteCopyWith<ClientNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientNoteCopyWith<$Res> {
  factory $ClientNoteCopyWith(
          ClientNote value, $Res Function(ClientNote) then) =
      _$ClientNoteCopyWithImpl<$Res, ClientNote>;
  @useResult
  $Res call(
      {String? note,
      String? formula,
      List<String>? products,
      @JsonKey(name: "_id") String? id,
      String? client,
      String? beautician,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class _$ClientNoteCopyWithImpl<$Res, $Val extends ClientNote>
    implements $ClientNoteCopyWith<$Res> {
  _$ClientNoteCopyWithImpl(this._value, this._then);

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
    Object? id = freezed,
    Object? client = freezed,
    Object? beautician = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_ClientNoteCopyWith<$Res>
    implements $ClientNoteCopyWith<$Res> {
  factory _$$_ClientNoteCopyWith(
          _$_ClientNote value, $Res Function(_$_ClientNote) then) =
      __$$_ClientNoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? note,
      String? formula,
      List<String>? products,
      @JsonKey(name: "_id") String? id,
      String? client,
      String? beautician,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class __$$_ClientNoteCopyWithImpl<$Res>
    extends _$ClientNoteCopyWithImpl<$Res, _$_ClientNote>
    implements _$$_ClientNoteCopyWith<$Res> {
  __$$_ClientNoteCopyWithImpl(
      _$_ClientNote _value, $Res Function(_$_ClientNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? formula = freezed,
    Object? products = freezed,
    Object? id = freezed,
    Object? client = freezed,
    Object? beautician = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_ClientNote(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
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
class _$_ClientNote implements _ClientNote {
  const _$_ClientNote(
      {this.note,
      this.formula,
      final List<String>? products,
      @JsonKey(name: "_id") this.id,
      this.client,
      this.beautician,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v})
      : _products = products;

  factory _$_ClientNote.fromJson(Map<String, dynamic> json) =>
      _$$_ClientNoteFromJson(json);

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
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? client;
  @override
  final String? beautician;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'ClientNote(note: $note, formula: $formula, products: $products, id: $id, client: $client, beautician: $beautician, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientNote &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.formula, formula) || other.formula == formula) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
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
      note,
      formula,
      const DeepCollectionEquality().hash(_products),
      id,
      client,
      beautician,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientNoteCopyWith<_$_ClientNote> get copyWith =>
      __$$_ClientNoteCopyWithImpl<_$_ClientNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientNoteToJson(
      this,
    );
  }
}

abstract class _ClientNote implements ClientNote {
  const factory _ClientNote(
      {final String? note,
      final String? formula,
      final List<String>? products,
      @JsonKey(name: "_id") final String? id,
      final String? client,
      final String? beautician,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_ClientNote;

  factory _ClientNote.fromJson(Map<String, dynamic> json) =
      _$_ClientNote.fromJson;

  @override
  String? get note;
  @override
  String? get formula;
  @override
  List<String>? get products;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get client;
  @override
  String? get beautician;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_ClientNoteCopyWith<_$_ClientNote> get copyWith =>
      throw _privateConstructorUsedError;
}
