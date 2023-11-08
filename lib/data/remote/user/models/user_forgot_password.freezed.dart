// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_forgot_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserForgotPasswordRequest _$UserForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _UserForgotPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$UserForgotPasswordRequest {
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserForgotPasswordRequestCopyWith<UserForgotPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserForgotPasswordRequestCopyWith<$Res> {
  factory $UserForgotPasswordRequestCopyWith(UserForgotPasswordRequest value,
          $Res Function(UserForgotPasswordRequest) then) =
      _$UserForgotPasswordRequestCopyWithImpl<$Res, UserForgotPasswordRequest>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$UserForgotPasswordRequestCopyWithImpl<$Res,
        $Val extends UserForgotPasswordRequest>
    implements $UserForgotPasswordRequestCopyWith<$Res> {
  _$UserForgotPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserForgotPasswordRequestCopyWith<$Res>
    implements $UserForgotPasswordRequestCopyWith<$Res> {
  factory _$$_UserForgotPasswordRequestCopyWith(
          _$_UserForgotPasswordRequest value,
          $Res Function(_$_UserForgotPasswordRequest) then) =
      __$$_UserForgotPasswordRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$_UserForgotPasswordRequestCopyWithImpl<$Res>
    extends _$UserForgotPasswordRequestCopyWithImpl<$Res,
        _$_UserForgotPasswordRequest>
    implements _$$_UserForgotPasswordRequestCopyWith<$Res> {
  __$$_UserForgotPasswordRequestCopyWithImpl(
      _$_UserForgotPasswordRequest _value,
      $Res Function(_$_UserForgotPasswordRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_UserForgotPasswordRequest(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserForgotPasswordRequest implements _UserForgotPasswordRequest {
  const _$_UserForgotPasswordRequest({this.email});

  factory _$_UserForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UserForgotPasswordRequestFromJson(json);

  @override
  final String? email;

  @override
  String toString() {
    return 'UserForgotPasswordRequest(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserForgotPasswordRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserForgotPasswordRequestCopyWith<_$_UserForgotPasswordRequest>
      get copyWith => __$$_UserForgotPasswordRequestCopyWithImpl<
          _$_UserForgotPasswordRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserForgotPasswordRequestToJson(
      this,
    );
  }
}

abstract class _UserForgotPasswordRequest implements UserForgotPasswordRequest {
  const factory _UserForgotPasswordRequest({final String? email}) =
      _$_UserForgotPasswordRequest;

  factory _UserForgotPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$_UserForgotPasswordRequest.fromJson;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserForgotPasswordRequestCopyWith<_$_UserForgotPasswordRequest>
      get copyWith => throw _privateConstructorUsedError;
}

UserForgotPasswordResponse _$UserForgotPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _UserForgotPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$UserForgotPasswordResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserForgotPasswordResponseCopyWith<UserForgotPasswordResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserForgotPasswordResponseCopyWith<$Res> {
  factory $UserForgotPasswordResponseCopyWith(UserForgotPasswordResponse value,
          $Res Function(UserForgotPasswordResponse) then) =
      _$UserForgotPasswordResponseCopyWithImpl<$Res,
          UserForgotPasswordResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, String? data});
}

/// @nodoc
class _$UserForgotPasswordResponseCopyWithImpl<$Res,
        $Val extends UserForgotPasswordResponse>
    implements $UserForgotPasswordResponseCopyWith<$Res> {
  _$UserForgotPasswordResponseCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserForgotPasswordResponseCopyWith<$Res>
    implements $UserForgotPasswordResponseCopyWith<$Res> {
  factory _$$_UserForgotPasswordResponseCopyWith(
          _$_UserForgotPasswordResponse value,
          $Res Function(_$_UserForgotPasswordResponse) then) =
      __$$_UserForgotPasswordResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, String? data});
}

/// @nodoc
class __$$_UserForgotPasswordResponseCopyWithImpl<$Res>
    extends _$UserForgotPasswordResponseCopyWithImpl<$Res,
        _$_UserForgotPasswordResponse>
    implements _$$_UserForgotPasswordResponseCopyWith<$Res> {
  __$$_UserForgotPasswordResponseCopyWithImpl(
      _$_UserForgotPasswordResponse _value,
      $Res Function(_$_UserForgotPasswordResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserForgotPasswordResponse(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserForgotPasswordResponse implements _UserForgotPasswordResponse {
  const _$_UserForgotPasswordResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_UserForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserForgotPasswordResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final String? data;

  @override
  String toString() {
    return 'UserForgotPasswordResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserForgotPasswordResponse &&
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
  _$$_UserForgotPasswordResponseCopyWith<_$_UserForgotPasswordResponse>
      get copyWith => __$$_UserForgotPasswordResponseCopyWithImpl<
          _$_UserForgotPasswordResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserForgotPasswordResponseToJson(
      this,
    );
  }
}

abstract class _UserForgotPasswordResponse
    implements UserForgotPasswordResponse {
  const factory _UserForgotPasswordResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final String? data}) = _$_UserForgotPasswordResponse;

  factory _UserForgotPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$_UserForgotPasswordResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserForgotPasswordResponseCopyWith<_$_UserForgotPasswordResponse>
      get copyWith => throw _privateConstructorUsedError;
}
