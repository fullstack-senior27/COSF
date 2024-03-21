// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianRegisterRequestModel _$BeauticianRegisterRequestModelFromJson(
    Map<String, dynamic> json) {
  return _BeauticianRegisterRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BeauticianRegisterRequestModel {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianRegisterRequestModelCopyWith<BeauticianRegisterRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianRegisterRequestModelCopyWith<$Res> {
  factory $BeauticianRegisterRequestModelCopyWith(
          BeauticianRegisterRequestModel value,
          $Res Function(BeauticianRegisterRequestModel) then) =
      _$BeauticianRegisterRequestModelCopyWithImpl<$Res,
          BeauticianRegisterRequestModel>;
  @useResult
  $Res call({String? name, String? email, String? password, String? role});
}

/// @nodoc
class _$BeauticianRegisterRequestModelCopyWithImpl<$Res,
        $Val extends BeauticianRegisterRequestModel>
    implements $BeauticianRegisterRequestModelCopyWith<$Res> {
  _$BeauticianRegisterRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_BeauticianRegisterRequestModelCopyWith<$Res>
    implements $BeauticianRegisterRequestModelCopyWith<$Res> {
  factory _$$_BeauticianRegisterRequestModelCopyWith(
          _$_BeauticianRegisterRequestModel value,
          $Res Function(_$_BeauticianRegisterRequestModel) then) =
      __$$_BeauticianRegisterRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? password, String? role});
}

/// @nodoc
class __$$_BeauticianRegisterRequestModelCopyWithImpl<$Res>
    extends _$BeauticianRegisterRequestModelCopyWithImpl<$Res,
        _$_BeauticianRegisterRequestModel>
    implements _$$_BeauticianRegisterRequestModelCopyWith<$Res> {
  __$$_BeauticianRegisterRequestModelCopyWithImpl(
      _$_BeauticianRegisterRequestModel _value,
      $Res Function(_$_BeauticianRegisterRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_BeauticianRegisterRequestModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_BeauticianRegisterRequestModel
    implements _BeauticianRegisterRequestModel {
  const _$_BeauticianRegisterRequestModel(
      {this.name, this.email, this.password, this.role});

  factory _$_BeauticianRegisterRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianRegisterRequestModelFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? role;

  @override
  String toString() {
    return 'BeauticianRegisterRequestModel(name: $name, email: $email, password: $password, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianRegisterRequestModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticianRegisterRequestModelCopyWith<_$_BeauticianRegisterRequestModel>
      get copyWith => __$$_BeauticianRegisterRequestModelCopyWithImpl<
          _$_BeauticianRegisterRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianRegisterRequestModelToJson(
      this,
    );
  }
}

abstract class _BeauticianRegisterRequestModel
    implements BeauticianRegisterRequestModel {
  const factory _BeauticianRegisterRequestModel(
      {final String? name,
      final String? email,
      final String? password,
      final String? role}) = _$_BeauticianRegisterRequestModel;

  factory _BeauticianRegisterRequestModel.fromJson(Map<String, dynamic> json) =
      _$_BeauticianRegisterRequestModel.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianRegisterRequestModelCopyWith<_$_BeauticianRegisterRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

BeauticianRegisterResponseModel _$BeauticianRegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BeauticianRegisterResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BeauticianRegisterResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianRegisterResponseModelCopyWith<BeauticianRegisterResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianRegisterResponseModelCopyWith<$Res> {
  factory $BeauticianRegisterResponseModelCopyWith(
          BeauticianRegisterResponseModel value,
          $Res Function(BeauticianRegisterResponseModel) then) =
      _$BeauticianRegisterResponseModelCopyWithImpl<$Res,
          BeauticianRegisterResponseModel>;
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
class _$BeauticianRegisterResponseModelCopyWithImpl<$Res,
        $Val extends BeauticianRegisterResponseModel>
    implements $BeauticianRegisterResponseModelCopyWith<$Res> {
  _$BeauticianRegisterResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_BeauticianRegisterResponseModelCopyWith<$Res>
    implements $BeauticianRegisterResponseModelCopyWith<$Res> {
  factory _$$_BeauticianRegisterResponseModelCopyWith(
          _$_BeauticianRegisterResponseModel value,
          $Res Function(_$_BeauticianRegisterResponseModel) then) =
      __$$_BeauticianRegisterResponseModelCopyWithImpl<$Res>;
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
class __$$_BeauticianRegisterResponseModelCopyWithImpl<$Res>
    extends _$BeauticianRegisterResponseModelCopyWithImpl<$Res,
        _$_BeauticianRegisterResponseModel>
    implements _$$_BeauticianRegisterResponseModelCopyWith<$Res> {
  __$$_BeauticianRegisterResponseModelCopyWithImpl(
      _$_BeauticianRegisterResponseModel _value,
      $Res Function(_$_BeauticianRegisterResponseModel) _then)
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
    return _then(_$_BeauticianRegisterResponseModel(
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
class _$_BeauticianRegisterResponseModel
    implements _BeauticianRegisterResponseModel {
  const _$_BeauticianRegisterResponseModel(
      {this.code,
      this.message,
      this.isSuccess,
      this.data,
      this.accessToken,
      this.refreshToken});

  factory _$_BeauticianRegisterResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianRegisterResponseModelFromJson(json);

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
    return 'BeauticianRegisterResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianRegisterResponseModel &&
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
  _$$_BeauticianRegisterResponseModelCopyWith<
          _$_BeauticianRegisterResponseModel>
      get copyWith => __$$_BeauticianRegisterResponseModelCopyWithImpl<
          _$_BeauticianRegisterResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianRegisterResponseModelToJson(
      this,
    );
  }
}

abstract class _BeauticianRegisterResponseModel
    implements BeauticianRegisterResponseModel {
  const factory _BeauticianRegisterResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data,
      final String? accessToken,
      final String? refreshToken}) = _$_BeauticianRegisterResponseModel;

  factory _BeauticianRegisterResponseModel.fromJson(Map<String, dynamic> json) =
      _$_BeauticianRegisterResponseModel.fromJson;

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
  _$$_BeauticianRegisterResponseModelCopyWith<
          _$_BeauticianRegisterResponseModel>
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
  dynamic get about => throw _privateConstructorUsedError;
  dynamic get website => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  List<dynamic>? get speciality => throw _privateConstructorUsedError;
  List<dynamic>? get services => throw _privateConstructorUsedError;
  List<dynamic>? get serviceCategories => throw _privateConstructorUsedError;
  List<dynamic>? get reviews => throw _privateConstructorUsedError;
  List<dynamic>? get products => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  List<dynamic>? get blockedClients => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  List<dynamic>? get availability => throw _privateConstructorUsedError;
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
      dynamic about,
      dynamic website,
      bool? isEmailVerified,
      List<dynamic>? speciality,
      List<dynamic>? services,
      List<dynamic>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      List<dynamic>? blockedClients,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<dynamic>? availability,
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
              as dynamic,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      speciality: freezed == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      serviceCategories: freezed == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as List<dynamic>?,
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
      dynamic about,
      dynamic website,
      bool? isEmailVerified,
      List<dynamic>? speciality,
      List<dynamic>? services,
      List<dynamic>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      List<dynamic>? blockedClients,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<dynamic>? availability,
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
              as dynamic,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      speciality: freezed == speciality
          ? _value._speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      serviceCategories: freezed == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as List<dynamic>?,
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
      final List<dynamic>? speciality,
      final List<dynamic>? services,
      final List<dynamic>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      this.accountId,
      final List<dynamic>? blockedClients,
      this.name,
      this.email,
      this.phone,
      final List<dynamic>? notes,
      final List<dynamic>? availability,
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
  final dynamic about;
  @override
  final dynamic website;
  @override
  final bool? isEmailVerified;
  final List<dynamic>? _speciality;
  @override
  List<dynamic>? get speciality {
    final value = _speciality;
    if (value == null) return null;
    if (_speciality is EqualUnmodifiableListView) return _speciality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _services;
  @override
  List<dynamic>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _serviceCategories;
  @override
  List<dynamic>? get serviceCategories {
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

  final List<dynamic>? _availability;
  @override
  List<dynamic>? get availability {
    final value = _availability;
    if (value == null) return null;
    if (_availability is EqualUnmodifiableListView) return _availability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? id;

  @override
  String toString() {
    return 'Data(image: $image, role: $role, photos: $photos, profession: $profession, about: $about, website: $website, isEmailVerified: $isEmailVerified, speciality: $speciality, services: $services, serviceCategories: $serviceCategories, reviews: $reviews, products: $products, accountId: $accountId, blockedClients: $blockedClients, name: $name, email: $email, phone: $phone, notes: $notes, availability: $availability, id: $id)';
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
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.website, website) &&
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
        const DeepCollectionEquality().hash(website),
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
      final dynamic about,
      final dynamic website,
      final bool? isEmailVerified,
      final List<dynamic>? speciality,
      final List<dynamic>? services,
      final List<dynamic>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      final String? accountId,
      final List<dynamic>? blockedClients,
      final String? name,
      final String? email,
      final String? phone,
      final List<dynamic>? notes,
      final List<dynamic>? availability,
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
  dynamic get about;
  @override
  dynamic get website;
  @override
  bool? get isEmailVerified;
  @override
  List<dynamic>? get speciality;
  @override
  List<dynamic>? get services;
  @override
  List<dynamic>? get serviceCategories;
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
  List<dynamic>? get availability;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
