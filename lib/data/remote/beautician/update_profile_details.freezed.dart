// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianUpdateProfileRequest _$BeauticianUpdateProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _BeauticianUpdateProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$BeauticianUpdateProfileRequest {
  String? get address => throw _privateConstructorUsedError;
  List<String>? get speciality => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianUpdateProfileRequestCopyWith<BeauticianUpdateProfileRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianUpdateProfileRequestCopyWith<$Res> {
  factory $BeauticianUpdateProfileRequestCopyWith(
          BeauticianUpdateProfileRequest value,
          $Res Function(BeauticianUpdateProfileRequest) then) =
      _$BeauticianUpdateProfileRequestCopyWithImpl<$Res,
          BeauticianUpdateProfileRequest>;
  @useResult
  $Res call(
      {String? address,
      List<String>? speciality,
      String? profession,
      String? website,
      String? phone,
      String? about,
      String? email});
}

/// @nodoc
class _$BeauticianUpdateProfileRequestCopyWithImpl<$Res,
        $Val extends BeauticianUpdateProfileRequest>
    implements $BeauticianUpdateProfileRequestCopyWith<$Res> {
  _$BeauticianUpdateProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? speciality = freezed,
    Object? profession = freezed,
    Object? website = freezed,
    Object? phone = freezed,
    Object? about = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      speciality: freezed == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeauticianUpdateProfileRequestCopyWith<$Res>
    implements $BeauticianUpdateProfileRequestCopyWith<$Res> {
  factory _$$_BeauticianUpdateProfileRequestCopyWith(
          _$_BeauticianUpdateProfileRequest value,
          $Res Function(_$_BeauticianUpdateProfileRequest) then) =
      __$$_BeauticianUpdateProfileRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address,
      List<String>? speciality,
      String? profession,
      String? website,
      String? phone,
      String? about,
      String? email});
}

/// @nodoc
class __$$_BeauticianUpdateProfileRequestCopyWithImpl<$Res>
    extends _$BeauticianUpdateProfileRequestCopyWithImpl<$Res,
        _$_BeauticianUpdateProfileRequest>
    implements _$$_BeauticianUpdateProfileRequestCopyWith<$Res> {
  __$$_BeauticianUpdateProfileRequestCopyWithImpl(
      _$_BeauticianUpdateProfileRequest _value,
      $Res Function(_$_BeauticianUpdateProfileRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? speciality = freezed,
    Object? profession = freezed,
    Object? website = freezed,
    Object? phone = freezed,
    Object? about = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_BeauticianUpdateProfileRequest(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      speciality: freezed == speciality
          ? _value._speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
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
class _$_BeauticianUpdateProfileRequest
    implements _BeauticianUpdateProfileRequest {
  const _$_BeauticianUpdateProfileRequest(
      {this.address,
      final List<String>? speciality,
      this.profession,
      this.website,
      this.phone,
      this.about,
      this.email})
      : _speciality = speciality;

  factory _$_BeauticianUpdateProfileRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianUpdateProfileRequestFromJson(json);

  @override
  final String? address;
  final List<String>? _speciality;
  @override
  List<String>? get speciality {
    final value = _speciality;
    if (value == null) return null;
    if (_speciality is EqualUnmodifiableListView) return _speciality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? profession;
  @override
  final String? website;
  @override
  final String? phone;
  @override
  final String? about;
  @override
  final String? email;

  @override
  String toString() {
    return 'BeauticianUpdateProfileRequest(address: $address, speciality: $speciality, profession: $profession, website: $website, phone: $phone, about: $about, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianUpdateProfileRequest &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._speciality, _speciality) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      const DeepCollectionEquality().hash(_speciality),
      profession,
      website,
      phone,
      about,
      email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticianUpdateProfileRequestCopyWith<_$_BeauticianUpdateProfileRequest>
      get copyWith => __$$_BeauticianUpdateProfileRequestCopyWithImpl<
          _$_BeauticianUpdateProfileRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianUpdateProfileRequestToJson(
      this,
    );
  }
}

abstract class _BeauticianUpdateProfileRequest
    implements BeauticianUpdateProfileRequest {
  const factory _BeauticianUpdateProfileRequest(
      {final String? address,
      final List<String>? speciality,
      final String? profession,
      final String? website,
      final String? phone,
      final String? about,
      final String? email}) = _$_BeauticianUpdateProfileRequest;

  factory _BeauticianUpdateProfileRequest.fromJson(Map<String, dynamic> json) =
      _$_BeauticianUpdateProfileRequest.fromJson;

  @override
  String? get address;
  @override
  List<String>? get speciality;
  @override
  String? get profession;
  @override
  String? get website;
  @override
  String? get phone;
  @override
  String? get about;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianUpdateProfileRequestCopyWith<_$_BeauticianUpdateProfileRequest>
      get copyWith => throw _privateConstructorUsedError;
}

BeauticianUpdateProfileResponse _$BeauticianUpdateProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _BeauticianUpdateProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$BeauticianUpdateProfileResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianUpdateProfileResponseCopyWith<BeauticianUpdateProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianUpdateProfileResponseCopyWith<$Res> {
  factory $BeauticianUpdateProfileResponseCopyWith(
          BeauticianUpdateProfileResponse value,
          $Res Function(BeauticianUpdateProfileResponse) then) =
      _$BeauticianUpdateProfileResponseCopyWithImpl<$Res,
          BeauticianUpdateProfileResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BeauticianUpdateProfileResponseCopyWithImpl<$Res,
        $Val extends BeauticianUpdateProfileResponse>
    implements $BeauticianUpdateProfileResponseCopyWith<$Res> {
  _$BeauticianUpdateProfileResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_BeauticianUpdateProfileResponseCopyWith<$Res>
    implements $BeauticianUpdateProfileResponseCopyWith<$Res> {
  factory _$$_BeauticianUpdateProfileResponseCopyWith(
          _$_BeauticianUpdateProfileResponse value,
          $Res Function(_$_BeauticianUpdateProfileResponse) then) =
      __$$_BeauticianUpdateProfileResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BeauticianUpdateProfileResponseCopyWithImpl<$Res>
    extends _$BeauticianUpdateProfileResponseCopyWithImpl<$Res,
        _$_BeauticianUpdateProfileResponse>
    implements _$$_BeauticianUpdateProfileResponseCopyWith<$Res> {
  __$$_BeauticianUpdateProfileResponseCopyWithImpl(
      _$_BeauticianUpdateProfileResponse _value,
      $Res Function(_$_BeauticianUpdateProfileResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeauticianUpdateProfileResponse(
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
class _$_BeauticianUpdateProfileResponse
    implements _BeauticianUpdateProfileResponse {
  const _$_BeauticianUpdateProfileResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_BeauticianUpdateProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianUpdateProfileResponseFromJson(json);

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
    return 'BeauticianUpdateProfileResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianUpdateProfileResponse &&
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
  _$$_BeauticianUpdateProfileResponseCopyWith<
          _$_BeauticianUpdateProfileResponse>
      get copyWith => __$$_BeauticianUpdateProfileResponseCopyWithImpl<
          _$_BeauticianUpdateProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianUpdateProfileResponseToJson(
      this,
    );
  }
}

abstract class _BeauticianUpdateProfileResponse
    implements BeauticianUpdateProfileResponse {
  const factory _BeauticianUpdateProfileResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_BeauticianUpdateProfileResponse;

  factory _BeauticianUpdateProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_BeauticianUpdateProfileResponse.fromJson;

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
  _$$_BeauticianUpdateProfileResponseCopyWith<
          _$_BeauticianUpdateProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  dynamic get image => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<dynamic>? get photos => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  List<String>? get speciality => throw _privateConstructorUsedError;
  List<Service>? get services => throw _privateConstructorUsedError;
  List<ServiceCategory>? get serviceCategories =>
      throw _privateConstructorUsedError;
  List<dynamic>? get reviews => throw _privateConstructorUsedError;
  List<dynamic>? get products => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  List<dynamic>? get blockedClients => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  List<Availability>? get availability => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
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
      List<dynamic>? photos,
      String? profession,
      String? about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      List<Service>? services,
      List<ServiceCategory>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      List<dynamic>? blockedClients,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availability>? availability,
      String? address,
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
    Object? blockedClients = freezed,
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
              as String?,
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
              as List<Service>?,
      serviceCategories: freezed == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>?,
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
      blockedClients: freezed == blockedClients
          ? _value.blockedClients
          : blockedClients // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic image,
      String? role,
      List<dynamic>? photos,
      String? profession,
      String? about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      List<Service>? services,
      List<ServiceCategory>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      List<dynamic>? blockedClients,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availability>? availability,
      String? address,
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
    Object? blockedClients = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? availability = freezed,
    Object? address = freezed,
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
              as String?,
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
              as List<Service>?,
      serviceCategories: freezed == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>?,
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
      blockedClients: freezed == blockedClients
          ? _value._blockedClients
          : blockedClients // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
class _$_Data implements _Data {
  const _$_Data(
      {this.image,
      this.role,
      final List<dynamic>? photos,
      this.profession,
      this.about,
      this.website,
      this.isEmailVerified,
      final List<String>? speciality,
      final List<Service>? services,
      final List<ServiceCategory>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      this.accountId,
      final List<dynamic>? blockedClients,
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
        _blockedClients = blockedClients,
        _notes = notes,
        _availability = availability;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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
  final String? about;
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

  final List<Service>? _services;
  @override
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ServiceCategory>? _serviceCategories;
  @override
  List<ServiceCategory>? get serviceCategories {
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
  final List<dynamic>? _blockedClients;
  @override
  List<dynamic>? get blockedClients {
    final value = _blockedClients;
    if (value == null) return null;
    if (_blockedClients is EqualUnmodifiableListView) return _blockedClients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'Data(image: $image, role: $role, photos: $photos, profession: $profession, about: $about, website: $website, isEmailVerified: $isEmailVerified, speciality: $speciality, services: $services, serviceCategories: $serviceCategories, reviews: $reviews, products: $products, accountId: $accountId, blockedClients: $blockedClients, name: $name, email: $email, phone: $phone, notes: $notes, availability: $availability, address: $address, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.about, about) || other.about == about) &&
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
            const DeepCollectionEquality()
                .equals(other._blockedClients, _blockedClients) &&
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
        about,
        website,
        isEmailVerified,
        const DeepCollectionEquality().hash(_speciality),
        const DeepCollectionEquality().hash(_services),
        const DeepCollectionEquality().hash(_serviceCategories),
        const DeepCollectionEquality().hash(_reviews),
        const DeepCollectionEquality().hash(_products),
        accountId,
        const DeepCollectionEquality().hash(_blockedClients),
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
      final List<dynamic>? photos,
      final String? profession,
      final String? about,
      final String? website,
      final bool? isEmailVerified,
      final List<String>? speciality,
      final List<Service>? services,
      final List<ServiceCategory>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      final String? accountId,
      final List<dynamic>? blockedClients,
      final String? name,
      final String? email,
      final String? phone,
      final List<dynamic>? notes,
      final List<Availability>? availability,
      final String? address,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  dynamic get image;
  @override
  String? get role;
  @override
  List<dynamic>? get photos;
  @override
  String? get profession;
  @override
  String? get about;
  @override
  String? get website;
  @override
  bool? get isEmailVerified;
  @override
  List<String>? get speciality;
  @override
  List<Service>? get services;
  @override
  List<ServiceCategory>? get serviceCategories;
  @override
  List<dynamic>? get reviews;
  @override
  List<dynamic>? get products;
  @override
  String? get accountId;
  @override
  List<dynamic>? get blockedClients;
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
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
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

ServiceCategory _$ServiceCategoryFromJson(Map<String, dynamic> json) {
  return _ServiceCategory.fromJson(json);
}

/// @nodoc
mixin _$ServiceCategory {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCategoryCopyWith<ServiceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCategoryCopyWith<$Res> {
  factory $ServiceCategoryCopyWith(
          ServiceCategory value, $Res Function(ServiceCategory) then) =
      _$ServiceCategoryCopyWithImpl<$Res, ServiceCategory>;
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class _$ServiceCategoryCopyWithImpl<$Res, $Val extends ServiceCategory>
    implements $ServiceCategoryCopyWith<$Res> {
  _$ServiceCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$_ServiceCategoryCopyWith<$Res>
    implements $ServiceCategoryCopyWith<$Res> {
  factory _$$_ServiceCategoryCopyWith(
          _$_ServiceCategory value, $Res Function(_$_ServiceCategory) then) =
      __$$_ServiceCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class __$$_ServiceCategoryCopyWithImpl<$Res>
    extends _$ServiceCategoryCopyWithImpl<$Res, _$_ServiceCategory>
    implements _$$_ServiceCategoryCopyWith<$Res> {
  __$$_ServiceCategoryCopyWithImpl(
      _$_ServiceCategory _value, $Res Function(_$_ServiceCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ServiceCategory(
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
class _$_ServiceCategory implements _ServiceCategory {
  const _$_ServiceCategory({this.name, this.id});

  factory _$_ServiceCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceCategoryFromJson(json);

  @override
  final String? name;
  @override
  final String? id;

  @override
  String toString() {
    return 'ServiceCategory(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceCategory &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceCategoryCopyWith<_$_ServiceCategory> get copyWith =>
      __$$_ServiceCategoryCopyWithImpl<_$_ServiceCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceCategoryToJson(
      this,
    );
  }
}

abstract class _ServiceCategory implements ServiceCategory {
  const factory _ServiceCategory({final String? name, final String? id}) =
      _$_ServiceCategory;

  factory _ServiceCategory.fromJson(Map<String, dynamic> json) =
      _$_ServiceCategory.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCategoryCopyWith<_$_ServiceCategory> get copyWith =>
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
