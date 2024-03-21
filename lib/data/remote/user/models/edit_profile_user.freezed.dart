// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

USerEditProfile _$USerEditProfileFromJson(Map<String, dynamic> json) {
  return _USerEditProfile.fromJson(json);
}

/// @nodoc
mixin _$USerEditProfile {
  dynamic? get image => throw _privateConstructorUsedError; // String? role,
// bool? isEmailVerified,
// String? customerId,
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $USerEditProfileCopyWith<USerEditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USerEditProfileCopyWith<$Res> {
  factory $USerEditProfileCopyWith(
          USerEditProfile value, $Res Function(USerEditProfile) then) =
      _$USerEditProfileCopyWithImpl<$Res, USerEditProfile>;
  @useResult
  $Res call({dynamic? image, String? name, String? phone, String? email});
}

/// @nodoc
class _$USerEditProfileCopyWithImpl<$Res, $Val extends USerEditProfile>
    implements $USerEditProfileCopyWith<$Res> {
  _$USerEditProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_USerEditProfileCopyWith<$Res>
    implements $USerEditProfileCopyWith<$Res> {
  factory _$$_USerEditProfileCopyWith(
          _$_USerEditProfile value, $Res Function(_$_USerEditProfile) then) =
      __$$_USerEditProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic? image, String? name, String? phone, String? email});
}

/// @nodoc
class __$$_USerEditProfileCopyWithImpl<$Res>
    extends _$USerEditProfileCopyWithImpl<$Res, _$_USerEditProfile>
    implements _$$_USerEditProfileCopyWith<$Res> {
  __$$_USerEditProfileCopyWithImpl(
      _$_USerEditProfile _value, $Res Function(_$_USerEditProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_USerEditProfile(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_USerEditProfile implements _USerEditProfile {
  const _$_USerEditProfile({this.image, this.name, this.phone, this.email});

  factory _$_USerEditProfile.fromJson(Map<String, dynamic> json) =>
      _$$_USerEditProfileFromJson(json);

  @override
  final dynamic? image;
// String? role,
// bool? isEmailVerified,
// String? customerId,
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;

  @override
  String toString() {
    return 'USerEditProfile(image: $image, name: $name, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_USerEditProfile &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(image), name, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_USerEditProfileCopyWith<_$_USerEditProfile> get copyWith =>
      __$$_USerEditProfileCopyWithImpl<_$_USerEditProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_USerEditProfileToJson(
      this,
    );
  }
}

abstract class _USerEditProfile implements USerEditProfile {
  const factory _USerEditProfile(
      {final dynamic? image,
      final String? name,
      final String? phone,
      final String? email}) = _$_USerEditProfile;

  factory _USerEditProfile.fromJson(Map<String, dynamic> json) =
      _$_USerEditProfile.fromJson;

  @override
  dynamic? get image;
  @override // String? role,
// bool? isEmailVerified,
// String? customerId,
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_USerEditProfileCopyWith<_$_USerEditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
