// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterRequest _$UserRegisterRequestFromJson(Map<String, dynamic> json) {
  return _UserRegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterRequestCopyWith<UserRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterRequestCopyWith<$Res> {
  factory $UserRegisterRequestCopyWith(
          UserRegisterRequest value, $Res Function(UserRegisterRequest) then) =
      _$UserRegisterRequestCopyWithImpl<$Res, UserRegisterRequest>;
  @useResult
  $Res call(
      {String? name,
      String? phone,
      String? email,
      String? password,
      String? role});
}

/// @nodoc
class _$UserRegisterRequestCopyWithImpl<$Res, $Val extends UserRegisterRequest>
    implements $UserRegisterRequestCopyWith<$Res> {
  _$UserRegisterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRegisterRequestCopyWith<$Res>
    implements $UserRegisterRequestCopyWith<$Res> {
  factory _$$_UserRegisterRequestCopyWith(_$_UserRegisterRequest value,
          $Res Function(_$_UserRegisterRequest) then) =
      __$$_UserRegisterRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? phone,
      String? email,
      String? password,
      String? role});
}

/// @nodoc
class __$$_UserRegisterRequestCopyWithImpl<$Res>
    extends _$UserRegisterRequestCopyWithImpl<$Res, _$_UserRegisterRequest>
    implements _$$_UserRegisterRequestCopyWith<$Res> {
  __$$_UserRegisterRequestCopyWithImpl(_$_UserRegisterRequest _value,
      $Res Function(_$_UserRegisterRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_UserRegisterRequest(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegisterRequest implements _UserRegisterRequest {
  const _$_UserRegisterRequest(
      {this.name, this.phone, this.email, this.password, this.role});

  factory _$_UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegisterRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? role;

  @override
  String toString() {
    return 'UserRegisterRequest(name: $name, phone: $phone, email: $email, password: $password, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegisterRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, email, password, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegisterRequestCopyWith<_$_UserRegisterRequest> get copyWith =>
      __$$_UserRegisterRequestCopyWithImpl<_$_UserRegisterRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegisterRequestToJson(
      this,
    );
  }
}

abstract class _UserRegisterRequest implements UserRegisterRequest {
  const factory _UserRegisterRequest(
      {final String? name,
      final String? phone,
      final String? email,
      final String? password,
      final String? role}) = _$_UserRegisterRequest;

  factory _UserRegisterRequest.fromJson(Map<String, dynamic> json) =
      _$_UserRegisterRequest.fromJson;

  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegisterRequestCopyWith<_$_UserRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRegisterResponse _$UserRegisterResponseFromJson(Map<String, dynamic> json) {
  return _UserRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterResponseCopyWith<UserRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterResponseCopyWith<$Res> {
  factory $UserRegisterResponseCopyWith(UserRegisterResponse value,
          $Res Function(UserRegisterResponse) then) =
      _$UserRegisterResponseCopyWithImpl<$Res, UserRegisterResponse>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      bool? isSuccess,
      Data? data,
      String? accessToken,
      String? refreshToken});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserRegisterResponseCopyWithImpl<$Res,
        $Val extends UserRegisterResponse>
    implements $UserRegisterResponseCopyWith<$Res> {
  _$UserRegisterResponseCopyWithImpl(this._value, this._then);

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
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
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
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_UserRegisterResponseCopyWith<$Res>
    implements $UserRegisterResponseCopyWith<$Res> {
  factory _$$_UserRegisterResponseCopyWith(_$_UserRegisterResponse value,
          $Res Function(_$_UserRegisterResponse) then) =
      __$$_UserRegisterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      bool? isSuccess,
      Data? data,
      String? accessToken,
      String? refreshToken});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserRegisterResponseCopyWithImpl<$Res>
    extends _$UserRegisterResponseCopyWithImpl<$Res, _$_UserRegisterResponse>
    implements _$$_UserRegisterResponseCopyWith<$Res> {
  __$$_UserRegisterResponseCopyWithImpl(_$_UserRegisterResponse _value,
      $Res Function(_$_UserRegisterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_UserRegisterResponse(
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
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegisterResponse implements _UserRegisterResponse {
  const _$_UserRegisterResponse(
      {this.code,
      this.message,
      this.isSuccess,
      this.data,
      this.accessToken,
      this.refreshToken});

  factory _$_UserRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegisterResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'UserRegisterResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegisterResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, isSuccess, data, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegisterResponseCopyWith<_$_UserRegisterResponse> get copyWith =>
      __$$_UserRegisterResponseCopyWithImpl<_$_UserRegisterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegisterResponseToJson(
      this,
    );
  }
}

abstract class _UserRegisterResponse implements UserRegisterResponse {
  const factory _UserRegisterResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data,
      final String? accessToken,
      final String? refreshToken}) = _$_UserRegisterResponse;

  factory _UserRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRegisterResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegisterResponseCopyWith<_$_UserRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  dynamic get image => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

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
      {dynamic image,
      String? role,
      bool? isEmailVerified,
      String? customerId,
      String? name,
      String? phone,
      String? email,
      String? id});
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
    Object? image = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? customerId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {dynamic image,
      String? role,
      bool? isEmailVerified,
      String? customerId,
      String? name,
      String? phone,
      String? email,
      String? id});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? customerId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Data(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_Data implements _Data {
  const _$_Data(
      {this.image,
      this.role,
      this.isEmailVerified,
      this.customerId,
      this.name,
      this.phone,
      this.email,
      this.id});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final dynamic image;
  @override
  final String? role;
  @override
  final bool? isEmailVerified;
  @override
  final String? customerId;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(image: $image, role: $role, isEmailVerified: $isEmailVerified, customerId: $customerId, name: $name, phone: $phone, email: $email, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
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
      name,
      phone,
      email,
      id);

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
      {final dynamic image,
      final String? role,
      final bool? isEmailVerified,
      final String? customerId,
      final String? name,
      final String? phone,
      final String? email,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  dynamic get image;
  @override
  String? get role;
  @override
  bool? get isEmailVerified;
  @override
  String? get customerId;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
