// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianAvailabilityRequest _$BeauticianAvailabilityRequestFromJson(
    Map<String, dynamic> json) {
  return _BeauticianAvailabilityRequest.fromJson(json);
}

/// @nodoc
mixin _$BeauticianAvailabilityRequest {
  List<Availability>? get availability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianAvailabilityRequestCopyWith<BeauticianAvailabilityRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianAvailabilityRequestCopyWith<$Res> {
  factory $BeauticianAvailabilityRequestCopyWith(
          BeauticianAvailabilityRequest value,
          $Res Function(BeauticianAvailabilityRequest) then) =
      _$BeauticianAvailabilityRequestCopyWithImpl<$Res,
          BeauticianAvailabilityRequest>;
  @useResult
  $Res call({List<Availability>? availability});
}

/// @nodoc
class _$BeauticianAvailabilityRequestCopyWithImpl<$Res,
        $Val extends BeauticianAvailabilityRequest>
    implements $BeauticianAvailabilityRequestCopyWith<$Res> {
  _$BeauticianAvailabilityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availability = freezed,
  }) {
    return _then(_value.copyWith(
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<Availability>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeauticianAvailabilityRequestCopyWith<$Res>
    implements $BeauticianAvailabilityRequestCopyWith<$Res> {
  factory _$$_BeauticianAvailabilityRequestCopyWith(
          _$_BeauticianAvailabilityRequest value,
          $Res Function(_$_BeauticianAvailabilityRequest) then) =
      __$$_BeauticianAvailabilityRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Availability>? availability});
}

/// @nodoc
class __$$_BeauticianAvailabilityRequestCopyWithImpl<$Res>
    extends _$BeauticianAvailabilityRequestCopyWithImpl<$Res,
        _$_BeauticianAvailabilityRequest>
    implements _$$_BeauticianAvailabilityRequestCopyWith<$Res> {
  __$$_BeauticianAvailabilityRequestCopyWithImpl(
      _$_BeauticianAvailabilityRequest _value,
      $Res Function(_$_BeauticianAvailabilityRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availability = freezed,
  }) {
    return _then(_$_BeauticianAvailabilityRequest(
      availability: freezed == availability
          ? _value._availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<Availability>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeauticianAvailabilityRequest
    implements _BeauticianAvailabilityRequest {
  const _$_BeauticianAvailabilityRequest(
      {final List<Availability>? availability})
      : _availability = availability;

  factory _$_BeauticianAvailabilityRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianAvailabilityRequestFromJson(json);

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
  String toString() {
    return 'BeauticianAvailabilityRequest(availability: $availability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianAvailabilityRequest &&
            const DeepCollectionEquality()
                .equals(other._availability, _availability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availability));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticianAvailabilityRequestCopyWith<_$_BeauticianAvailabilityRequest>
      get copyWith => __$$_BeauticianAvailabilityRequestCopyWithImpl<
          _$_BeauticianAvailabilityRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianAvailabilityRequestToJson(
      this,
    );
  }
}

abstract class _BeauticianAvailabilityRequest
    implements BeauticianAvailabilityRequest {
  const factory _BeauticianAvailabilityRequest(
          {final List<Availability>? availability}) =
      _$_BeauticianAvailabilityRequest;

  factory _BeauticianAvailabilityRequest.fromJson(Map<String, dynamic> json) =
      _$_BeauticianAvailabilityRequest.fromJson;

  @override
  List<Availability>? get availability;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianAvailabilityRequestCopyWith<_$_BeauticianAvailabilityRequest>
      get copyWith => throw _privateConstructorUsedError;
}

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
mixin _$Availability {
  String? get day => throw _privateConstructorUsedError;
  bool? get isAvailable => throw _privateConstructorUsedError;

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
  $Res call({String? day, bool? isAvailable});
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
    Object? day = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({String? day, bool? isAvailable});
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
    Object? day = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_$_Availability(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Availability implements _Availability {
  const _$_Availability({this.day, this.isAvailable});

  factory _$_Availability.fromJson(Map<String, dynamic> json) =>
      _$$_AvailabilityFromJson(json);

  @override
  final String? day;
  @override
  final bool? isAvailable;

  @override
  String toString() {
    return 'Availability(day: $day, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Availability &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, isAvailable);

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
  const factory _Availability({final String? day, final bool? isAvailable}) =
      _$_Availability;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$_Availability.fromJson;

  @override
  String? get day;
  @override
  bool? get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_AvailabilityCopyWith<_$_Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

BeauticianAvailabilityResponse _$BeauticianAvailabilityResponseFromJson(
    Map<String, dynamic> json) {
  return _BeauticianAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$BeauticianAvailabilityResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianAvailabilityResponseCopyWith<BeauticianAvailabilityResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianAvailabilityResponseCopyWith<$Res> {
  factory $BeauticianAvailabilityResponseCopyWith(
          BeauticianAvailabilityResponse value,
          $Res Function(BeauticianAvailabilityResponse) then) =
      _$BeauticianAvailabilityResponseCopyWithImpl<$Res,
          BeauticianAvailabilityResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BeauticianAvailabilityResponseCopyWithImpl<$Res,
        $Val extends BeauticianAvailabilityResponse>
    implements $BeauticianAvailabilityResponseCopyWith<$Res> {
  _$BeauticianAvailabilityResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_BeauticianAvailabilityResponseCopyWith<$Res>
    implements $BeauticianAvailabilityResponseCopyWith<$Res> {
  factory _$$_BeauticianAvailabilityResponseCopyWith(
          _$_BeauticianAvailabilityResponse value,
          $Res Function(_$_BeauticianAvailabilityResponse) then) =
      __$$_BeauticianAvailabilityResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BeauticianAvailabilityResponseCopyWithImpl<$Res>
    extends _$BeauticianAvailabilityResponseCopyWithImpl<$Res,
        _$_BeauticianAvailabilityResponse>
    implements _$$_BeauticianAvailabilityResponseCopyWith<$Res> {
  __$$_BeauticianAvailabilityResponseCopyWithImpl(
      _$_BeauticianAvailabilityResponse _value,
      $Res Function(_$_BeauticianAvailabilityResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeauticianAvailabilityResponse(
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
class _$_BeauticianAvailabilityResponse
    implements _BeauticianAvailabilityResponse {
  const _$_BeauticianAvailabilityResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_BeauticianAvailabilityResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_BeauticianAvailabilityResponseFromJson(json);

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
    return 'BeauticianAvailabilityResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianAvailabilityResponse &&
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
  _$$_BeauticianAvailabilityResponseCopyWith<_$_BeauticianAvailabilityResponse>
      get copyWith => __$$_BeauticianAvailabilityResponseCopyWithImpl<
          _$_BeauticianAvailabilityResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianAvailabilityResponseToJson(
      this,
    );
  }
}

abstract class _BeauticianAvailabilityResponse
    implements BeauticianAvailabilityResponse {
  const factory _BeauticianAvailabilityResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_BeauticianAvailabilityResponse;

  factory _BeauticianAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$_BeauticianAvailabilityResponse.fromJson;

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
  _$$_BeauticianAvailabilityResponseCopyWith<_$_BeauticianAvailabilityResponse>
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
  String? get website => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  List<String>? get speciality => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;
  List<String>? get serviceCategories => throw _privateConstructorUsedError;
  List<dynamic>? get reviews => throw _privateConstructorUsedError;
  List<dynamic>? get products => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  List<dynamic>? get blockedClients => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  List<Availabilities>? get availability => throw _privateConstructorUsedError;
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
      dynamic about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      List<String>? services,
      List<String>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      List<dynamic>? blockedClients,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availabilities>? availability,
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
              as List<Availabilities>?,
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
      dynamic about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      List<String>? services,
      List<String>? serviceCategories,
      List<dynamic>? reviews,
      List<dynamic>? products,
      String? accountId,
      List<dynamic>? blockedClients,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availabilities>? availability,
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
              as List<Availabilities>?,
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
      final List<String>? services,
      final List<String>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      this.accountId,
      final List<dynamic>? blockedClients,
      this.name,
      this.email,
      this.phone,
      final List<dynamic>? notes,
      final List<Availabilities>? availability,
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

  final List<Availabilities>? _availability;
  @override
  List<Availabilities>? get availability {
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
        const DeepCollectionEquality().hash(about),
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
      final dynamic about,
      final String? website,
      final bool? isEmailVerified,
      final List<String>? speciality,
      final List<String>? services,
      final List<String>? serviceCategories,
      final List<dynamic>? reviews,
      final List<dynamic>? products,
      final String? accountId,
      final List<dynamic>? blockedClients,
      final String? name,
      final String? email,
      final String? phone,
      final List<dynamic>? notes,
      final List<Availabilities>? availability,
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
  List<Availabilities>? get availability;
  @override
  String? get address;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Availabilities _$AvailabilitiesFromJson(Map<String, dynamic> json) {
  return _Availabilities.fromJson(json);
}

/// @nodoc
mixin _$Availabilities {
  dynamic get date => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilitiesCopyWith<Availabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilitiesCopyWith<$Res> {
  factory $AvailabilitiesCopyWith(
          Availabilities value, $Res Function(Availabilities) then) =
      _$AvailabilitiesCopyWithImpl<$Res, Availabilities>;
  @useResult
  $Res call(
      {dynamic date,
      String? day,
      String? startTime,
      String? endTime,
      bool? isAvailable,
      String? id});
}

/// @nodoc
class _$AvailabilitiesCopyWithImpl<$Res, $Val extends Availabilities>
    implements $AvailabilitiesCopyWith<$Res> {
  _$AvailabilitiesCopyWithImpl(this._value, this._then);

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
              as dynamic,
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
abstract class _$$_AvailabilitiesCopyWith<$Res>
    implements $AvailabilitiesCopyWith<$Res> {
  factory _$$_AvailabilitiesCopyWith(
          _$_Availabilities value, $Res Function(_$_Availabilities) then) =
      __$$_AvailabilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic date,
      String? day,
      String? startTime,
      String? endTime,
      bool? isAvailable,
      String? id});
}

/// @nodoc
class __$$_AvailabilitiesCopyWithImpl<$Res>
    extends _$AvailabilitiesCopyWithImpl<$Res, _$_Availabilities>
    implements _$$_AvailabilitiesCopyWith<$Res> {
  __$$_AvailabilitiesCopyWithImpl(
      _$_Availabilities _value, $Res Function(_$_Availabilities) _then)
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
    return _then(_$_Availabilities(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$_Availabilities implements _Availabilities {
  const _$_Availabilities(
      {this.date,
      this.day,
      this.startTime,
      this.endTime,
      this.isAvailable,
      this.id});

  factory _$_Availabilities.fromJson(Map<String, dynamic> json) =>
      _$$_AvailabilitiesFromJson(json);

  @override
  final dynamic date;
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
    return 'Availabilities(date: $date, day: $day, startTime: $startTime, endTime: $endTime, isAvailable: $isAvailable, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Availabilities &&
            const DeepCollectionEquality().equals(other.date, date) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      day,
      startTime,
      endTime,
      isAvailable,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailabilitiesCopyWith<_$_Availabilities> get copyWith =>
      __$$_AvailabilitiesCopyWithImpl<_$_Availabilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailabilitiesToJson(
      this,
    );
  }
}

abstract class _Availabilities implements Availabilities {
  const factory _Availabilities(
      {final dynamic date,
      final String? day,
      final String? startTime,
      final String? endTime,
      final bool? isAvailable,
      final String? id}) = _$_Availabilities;

  factory _Availabilities.fromJson(Map<String, dynamic> json) =
      _$_Availabilities.fromJson;

  @override
  dynamic get date;
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
  _$$_AvailabilitiesCopyWith<_$_Availabilities> get copyWith =>
      throw _privateConstructorUsedError;
}
