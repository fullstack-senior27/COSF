// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalonResponseModel _$SalonResponseModelFromJson(Map<String, dynamic> json) {
  return _SalonResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SalonResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Salon>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalonResponseModelCopyWith<SalonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalonResponseModelCopyWith<$Res> {
  factory $SalonResponseModelCopyWith(
          SalonResponseModel value, $Res Function(SalonResponseModel) then) =
      _$SalonResponseModelCopyWithImpl<$Res, SalonResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Salon>? data});
}

/// @nodoc
class _$SalonResponseModelCopyWithImpl<$Res, $Val extends SalonResponseModel>
    implements $SalonResponseModelCopyWith<$Res> {
  _$SalonResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Salon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalonResponseModelCopyWith<$Res>
    implements $SalonResponseModelCopyWith<$Res> {
  factory _$$_SalonResponseModelCopyWith(_$_SalonResponseModel value,
          $Res Function(_$_SalonResponseModel) then) =
      __$$_SalonResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Salon>? data});
}

/// @nodoc
class __$$_SalonResponseModelCopyWithImpl<$Res>
    extends _$SalonResponseModelCopyWithImpl<$Res, _$_SalonResponseModel>
    implements _$$_SalonResponseModelCopyWith<$Res> {
  __$$_SalonResponseModelCopyWithImpl(
      _$_SalonResponseModel _value, $Res Function(_$_SalonResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SalonResponseModel(
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
              as List<Salon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalonResponseModel implements _SalonResponseModel {
  const _$_SalonResponseModel(
      {this.code, this.message, this.isSuccess, final List<Salon>? data})
      : _data = data;

  factory _$_SalonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalonResponseModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Salon>? _data;
  @override
  List<Salon>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalonResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalonResponseModel &&
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
  _$$_SalonResponseModelCopyWith<_$_SalonResponseModel> get copyWith =>
      __$$_SalonResponseModelCopyWithImpl<_$_SalonResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalonResponseModelToJson(
      this,
    );
  }
}

abstract class _SalonResponseModel implements SalonResponseModel {
  const factory _SalonResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Salon>? data}) = _$_SalonResponseModel;

  factory _SalonResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SalonResponseModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Salon>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SalonResponseModelCopyWith<_$_SalonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Salon _$SalonFromJson(Map<String, dynamic> json) {
  return _Salon.fromJson(json);
}

/// @nodoc
mixin _$Salon {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  List<String>? get morning => throw _privateConstructorUsedError;
  List<String>? get afternoon => throw _privateConstructorUsedError;
  Beautician? get beautician => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  List<Service>? get services => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalonCopyWith<Salon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalonCopyWith<$Res> {
  factory $SalonCopyWith(Salon value, $Res Function(Salon) then) =
      _$SalonCopyWithImpl<$Res, Salon>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      bool? isVerified,
      List<String>? morning,
      List<String>? afternoon,
      Beautician? beautician,
      String? name,
      String? address,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      List<Service>? services,
      int? ratingCount,
      double? avgRating});

  $BeauticianCopyWith<$Res>? get beautician;
}

/// @nodoc
class _$SalonCopyWithImpl<$Res, $Val extends Salon>
    implements $SalonCopyWith<$Res> {
  _$SalonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isVerified = freezed,
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? beautician = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? services = freezed,
    Object? ratingCount = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      afternoon: freezed == afternoon
          ? _value.afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as Beautician?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeauticianCopyWith<$Res>? get beautician {
    if (_value.beautician == null) {
      return null;
    }

    return $BeauticianCopyWith<$Res>(_value.beautician!, (value) {
      return _then(_value.copyWith(beautician: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SalonCopyWith<$Res> implements $SalonCopyWith<$Res> {
  factory _$$_SalonCopyWith(_$_Salon value, $Res Function(_$_Salon) then) =
      __$$_SalonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      bool? isVerified,
      List<String>? morning,
      List<String>? afternoon,
      Beautician? beautician,
      String? name,
      String? address,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      List<Service>? services,
      int? ratingCount,
      double? avgRating});

  @override
  $BeauticianCopyWith<$Res>? get beautician;
}

/// @nodoc
class __$$_SalonCopyWithImpl<$Res> extends _$SalonCopyWithImpl<$Res, _$_Salon>
    implements _$$_SalonCopyWith<$Res> {
  __$$_SalonCopyWithImpl(_$_Salon _value, $Res Function(_$_Salon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isVerified = freezed,
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? beautician = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? services = freezed,
    Object? ratingCount = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_$_Salon(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      morning: freezed == morning
          ? _value._morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      afternoon: freezed == afternoon
          ? _value._afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as Beautician?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Salon implements _Salon {
  const _$_Salon(
      {@JsonKey(name: '_id') this.id,
      this.image,
      this.isVerified,
      final List<String>? morning,
      final List<String>? afternoon,
      this.beautician,
      this.name,
      this.address,
      this.createdAt,
      this.updatedAt,
      this.v,
      final List<Service>? services,
      this.ratingCount,
      this.avgRating})
      : _morning = morning,
        _afternoon = afternoon,
        _services = services;

  factory _$_Salon.fromJson(Map<String, dynamic> json) =>
      _$$_SalonFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final bool? isVerified;
  final List<String>? _morning;
  @override
  List<String>? get morning {
    final value = _morning;
    if (value == null) return null;
    if (_morning is EqualUnmodifiableListView) return _morning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _afternoon;
  @override
  List<String>? get afternoon {
    final value = _afternoon;
    if (value == null) return null;
    if (_afternoon is EqualUnmodifiableListView) return _afternoon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Beautician? beautician;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  final List<Service>? _services;
  @override
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? ratingCount;
  @override
  final double? avgRating;

  @override
  String toString() {
    return 'Salon(id: $id, image: $image, isVerified: $isVerified, morning: $morning, afternoon: $afternoon, beautician: $beautician, name: $name, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, services: $services, ratingCount: $ratingCount, avgRating: $avgRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Salon &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality().equals(other._morning, _morning) &&
            const DeepCollectionEquality()
                .equals(other._afternoon, _afternoon) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      isVerified,
      const DeepCollectionEquality().hash(_morning),
      const DeepCollectionEquality().hash(_afternoon),
      beautician,
      name,
      address,
      createdAt,
      updatedAt,
      v,
      const DeepCollectionEquality().hash(_services),
      ratingCount,
      avgRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalonCopyWith<_$_Salon> get copyWith =>
      __$$_SalonCopyWithImpl<_$_Salon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalonToJson(
      this,
    );
  }
}

abstract class _Salon implements Salon {
  const factory _Salon(
      {@JsonKey(name: '_id') final String? id,
      final String? image,
      final bool? isVerified,
      final List<String>? morning,
      final List<String>? afternoon,
      final Beautician? beautician,
      final String? name,
      final String? address,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v,
      final List<Service>? services,
      final int? ratingCount,
      final double? avgRating}) = _$_Salon;

  factory _Salon.fromJson(Map<String, dynamic> json) = _$_Salon.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get image;
  @override
  bool? get isVerified;
  @override
  List<String>? get morning;
  @override
  List<String>? get afternoon;
  @override
  Beautician? get beautician;
  @override
  String? get name;
  @override
  String? get address;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  List<Service>? get services;
  @override
  int? get ratingCount;
  @override
  double? get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$_SalonCopyWith<_$_Salon> get copyWith =>
      throw _privateConstructorUsedError;
}

Beautician _$BeauticianFromJson(Map<String, dynamic> json) {
  return _Beautician.fromJson(json);
}

/// @nodoc
mixin _$Beautician {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianCopyWith<Beautician> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianCopyWith<$Res> {
  factory $BeauticianCopyWith(
          Beautician value, $Res Function(Beautician) then) =
      _$BeauticianCopyWithImpl<$Res, Beautician>;
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? name,
      String? email,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$BeauticianCopyWithImpl<$Res, $Val extends Beautician>
    implements $BeauticianCopyWith<$Res> {
  _$BeauticianCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_BeauticianCopyWith<$Res>
    implements $BeauticianCopyWith<$Res> {
  factory _$$_BeauticianCopyWith(
          _$_Beautician value, $Res Function(_$_Beautician) then) =
      __$$_BeauticianCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? name,
      String? email,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$_BeauticianCopyWithImpl<$Res>
    extends _$BeauticianCopyWithImpl<$Res, _$_Beautician>
    implements _$$_BeauticianCopyWith<$Res> {
  __$$_BeauticianCopyWithImpl(
      _$_Beautician _value, $Res Function(_$_Beautician) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Beautician(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_Beautician implements _Beautician {
  const _$_Beautician(
      {this.id,
      this.image,
      this.name,
      this.email,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$_Beautician.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'Beautician(id: $id, image: $image, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Beautician &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, name, email, createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticianCopyWith<_$_Beautician> get copyWith =>
      __$$_BeauticianCopyWithImpl<_$_Beautician>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianToJson(
      this,
    );
  }
}

abstract class _Beautician implements Beautician {
  const factory _Beautician(
      {final String? id,
      final String? image,
      final String? name,
      final String? email,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$_Beautician;

  factory _Beautician.fromJson(Map<String, dynamic> json) =
      _$_Beautician.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get email;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianCopyWith<_$_Beautician> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get salon => throw _privateConstructorUsedError;
  String? get serviceType => throw _privateConstructorUsedError;

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
      {String? id,
      String? name,
      String? time,
      int? price,
      String? salon,
      String? serviceType});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? time = freezed,
    Object? price = freezed,
    Object? salon = freezed,
    Object? serviceType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      salon: freezed == salon
          ? _value.salon
          : salon // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? name,
      String? time,
      int? price,
      String? salon,
      String? serviceType});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? time = freezed,
    Object? price = freezed,
    Object? salon = freezed,
    Object? serviceType = freezed,
  }) {
    return _then(_$_Service(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      salon: freezed == salon
          ? _value.salon
          : salon // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Service implements _Service {
  const _$_Service(
      {this.id,
      this.name,
      this.time,
      this.price,
      this.salon,
      this.serviceType});

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? time;
  @override
  final int? price;
  @override
  final String? salon;
  @override
  final String? serviceType;

  @override
  String toString() {
    return 'Service(id: $id, name: $name, time: $time, price: $price, salon: $salon, serviceType: $serviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.salon, salon) || other.salon == salon) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, time, price, salon, serviceType);

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
      {final String? id,
      final String? name,
      final String? time,
      final int? price,
      final String? salon,
      final String? serviceType}) = _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get time;
  @override
  int? get price;
  @override
  String? get salon;
  @override
  String? get serviceType;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
