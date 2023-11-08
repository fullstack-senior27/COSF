// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDetailsResponse _$ProfileDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetailsResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDetailsResponseCopyWith<ProfileDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailsResponseCopyWith<$Res> {
  factory $ProfileDetailsResponseCopyWith(ProfileDetailsResponse value,
          $Res Function(ProfileDetailsResponse) then) =
      _$ProfileDetailsResponseCopyWithImpl<$Res, ProfileDetailsResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileDetailsResponseCopyWithImpl<$Res,
        $Val extends ProfileDetailsResponse>
    implements $ProfileDetailsResponseCopyWith<$Res> {
  _$ProfileDetailsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileDetailsResponseCopyWith<$Res>
    implements $ProfileDetailsResponseCopyWith<$Res> {
  factory _$$_ProfileDetailsResponseCopyWith(_$_ProfileDetailsResponse value,
          $Res Function(_$_ProfileDetailsResponse) then) =
      __$$_ProfileDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ProfileDetailsResponseCopyWithImpl<$Res>
    extends _$ProfileDetailsResponseCopyWithImpl<$Res,
        _$_ProfileDetailsResponse>
    implements _$$_ProfileDetailsResponseCopyWith<$Res> {
  __$$_ProfileDetailsResponseCopyWithImpl(_$_ProfileDetailsResponse _value,
      $Res Function(_$_ProfileDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ProfileDetailsResponse(
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
class _$_ProfileDetailsResponse implements _ProfileDetailsResponse {
  const _$_ProfileDetailsResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDetailsResponseFromJson(json);

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
    return 'ProfileDetailsResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDetailsResponse &&
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
  _$$_ProfileDetailsResponseCopyWith<_$_ProfileDetailsResponse> get copyWith =>
      __$$_ProfileDetailsResponseCopyWithImpl<_$_ProfileDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDetailsResponseToJson(
      this,
    );
  }
}

abstract class _ProfileDetailsResponse implements ProfileDetailsResponse {
  const factory _ProfileDetailsResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_ProfileDetailsResponse;

  factory _ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileDetailsResponse.fromJson;

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
  _$$_ProfileDetailsResponseCopyWith<_$_ProfileDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  dynamic? get image => throw _privateConstructorUsedError;
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
      {dynamic? image,
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
              as dynamic?,
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
      {dynamic? image,
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
              as dynamic?,
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
  final dynamic? image;
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
      {final dynamic? image,
      final String? role,
      final bool? isEmailVerified,
      final String? customerId,
      final String? name,
      final String? phone,
      final String? email,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  dynamic? get image;
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
