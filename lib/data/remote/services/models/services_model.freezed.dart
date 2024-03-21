// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicesResponseModel _$ServicesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ServicesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ServicesResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Service>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesResponseModelCopyWith<ServicesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesResponseModelCopyWith<$Res> {
  factory $ServicesResponseModelCopyWith(ServicesResponseModel value,
          $Res Function(ServicesResponseModel) then) =
      _$ServicesResponseModelCopyWithImpl<$Res, ServicesResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Service>? data});
}

/// @nodoc
class _$ServicesResponseModelCopyWithImpl<$Res,
        $Val extends ServicesResponseModel>
    implements $ServicesResponseModelCopyWith<$Res> {
  _$ServicesResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Service>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServicesResponseModelCopyWith<$Res>
    implements $ServicesResponseModelCopyWith<$Res> {
  factory _$$_ServicesResponseModelCopyWith(_$_ServicesResponseModel value,
          $Res Function(_$_ServicesResponseModel) then) =
      __$$_ServicesResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Service>? data});
}

/// @nodoc
class __$$_ServicesResponseModelCopyWithImpl<$Res>
    extends _$ServicesResponseModelCopyWithImpl<$Res, _$_ServicesResponseModel>
    implements _$$_ServicesResponseModelCopyWith<$Res> {
  __$$_ServicesResponseModelCopyWithImpl(_$_ServicesResponseModel _value,
      $Res Function(_$_ServicesResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ServicesResponseModel(
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
              as List<Service>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServicesResponseModel implements _ServicesResponseModel {
  const _$_ServicesResponseModel(
      {this.code, this.message, this.isSuccess, final List<Service>? data})
      : _data = data;

  factory _$_ServicesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServicesResponseModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Service>? _data;
  @override
  List<Service>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServicesResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesResponseModel &&
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
  _$$_ServicesResponseModelCopyWith<_$_ServicesResponseModel> get copyWith =>
      __$$_ServicesResponseModelCopyWithImpl<_$_ServicesResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicesResponseModelToJson(
      this,
    );
  }
}

abstract class _ServicesResponseModel implements ServicesResponseModel {
  const factory _ServicesResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Service>? data}) = _$_ServicesResponseModel;

  factory _ServicesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ServicesResponseModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Service>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesResponseModelCopyWith<_$_ServicesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String? get name => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  Salon? get salon => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_type')
  ServiceType? get serviceType => throw _privateConstructorUsedError;
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
      {String? name,
      String? time,
      int? price,
      Salon? salon,
      @JsonKey(name: 'service_type') ServiceType? serviceType,
      String? id});

  $SalonCopyWith<$Res>? get salon;
  $ServiceTypeCopyWith<$Res>? get serviceType;
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
    Object? name = freezed,
    Object? time = freezed,
    Object? price = freezed,
    Object? salon = freezed,
    Object? serviceType = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
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
              as Salon?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalonCopyWith<$Res>? get salon {
    if (_value.salon == null) {
      return null;
    }

    return $SalonCopyWith<$Res>(_value.salon!, (value) {
      return _then(_value.copyWith(salon: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceTypeCopyWith<$Res>? get serviceType {
    if (_value.serviceType == null) {
      return null;
    }

    return $ServiceTypeCopyWith<$Res>(_value.serviceType!, (value) {
      return _then(_value.copyWith(serviceType: value) as $Val);
    });
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
      {String? name,
      String? time,
      int? price,
      Salon? salon,
      @JsonKey(name: 'service_type') ServiceType? serviceType,
      String? id});

  @override
  $SalonCopyWith<$Res>? get salon;
  @override
  $ServiceTypeCopyWith<$Res>? get serviceType;
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
    Object? name = freezed,
    Object? time = freezed,
    Object? price = freezed,
    Object? salon = freezed,
    Object? serviceType = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Service(
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
              as Salon?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
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
      {this.name,
      this.time,
      this.price,
      this.salon,
      @JsonKey(name: 'service_type') this.serviceType,
      this.id});

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final String? name;
  @override
  final String? time;
  @override
  final int? price;
  @override
  final Salon? salon;
  @override
  @JsonKey(name: 'service_type')
  final ServiceType? serviceType;
  @override
  final String? id;

  @override
  String toString() {
    return 'Service(name: $name, time: $time, price: $price, salon: $salon, serviceType: $serviceType, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.salon, salon) || other.salon == salon) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, time, price, salon, serviceType, id);

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
      {final String? name,
      final String? time,
      final int? price,
      final Salon? salon,
      @JsonKey(name: 'service_type') final ServiceType? serviceType,
      final String? id}) = _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  String? get name;
  @override
  String? get time;
  @override
  int? get price;
  @override
  Salon? get salon;
  @override
  @JsonKey(name: 'service_type')
  ServiceType? get serviceType;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}

Salon _$SalonFromJson(Map<String, dynamic> json) {
  return _Salon.fromJson(json);
}

/// @nodoc
mixin _$Salon {
  List<dynamic>? get services => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  List<String>? get morning => throw _privateConstructorUsedError;
  List<String>? get afternoon => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

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
      {List<dynamic>? services,
      String? image,
      bool? isVerified,
      List<String>? morning,
      List<String>? afternoon,
      String? beautician,
      String? name,
      String? address,
      String? id});
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
    Object? services = freezed,
    Object? image = freezed,
    Object? isVerified = freezed,
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? beautician = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_SalonCopyWith<$Res> implements $SalonCopyWith<$Res> {
  factory _$$_SalonCopyWith(_$_Salon value, $Res Function(_$_Salon) then) =
      __$$_SalonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic>? services,
      String? image,
      bool? isVerified,
      List<String>? morning,
      List<String>? afternoon,
      String? beautician,
      String? name,
      String? address,
      String? id});
}

/// @nodoc
class __$$_SalonCopyWithImpl<$Res> extends _$SalonCopyWithImpl<$Res, _$_Salon>
    implements _$$_SalonCopyWith<$Res> {
  __$$_SalonCopyWithImpl(_$_Salon _value, $Res Function(_$_Salon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = freezed,
    Object? image = freezed,
    Object? isVerified = freezed,
    Object? morning = freezed,
    Object? afternoon = freezed,
    Object? beautician = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Salon(
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Salon implements _Salon {
  const _$_Salon(
      {final List<dynamic>? services,
      this.image,
      this.isVerified,
      final List<String>? morning,
      final List<String>? afternoon,
      this.beautician,
      this.name,
      this.address,
      this.id})
      : _services = services,
        _morning = morning,
        _afternoon = afternoon;

  factory _$_Salon.fromJson(Map<String, dynamic> json) =>
      _$$_SalonFromJson(json);

  final List<dynamic>? _services;
  @override
  List<dynamic>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final String? beautician;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? id;

  @override
  String toString() {
    return 'Salon(services: $services, image: $image, isVerified: $isVerified, morning: $morning, afternoon: $afternoon, beautician: $beautician, name: $name, address: $address, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Salon &&
            const DeepCollectionEquality().equals(other._services, _services) &&
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
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_services),
      image,
      isVerified,
      const DeepCollectionEquality().hash(_morning),
      const DeepCollectionEquality().hash(_afternoon),
      beautician,
      name,
      address,
      id);

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
      {final List<dynamic>? services,
      final String? image,
      final bool? isVerified,
      final List<String>? morning,
      final List<String>? afternoon,
      final String? beautician,
      final String? name,
      final String? address,
      final String? id}) = _$_Salon;

  factory _Salon.fromJson(Map<String, dynamic> json) = _$_Salon.fromJson;

  @override
  List<dynamic>? get services;
  @override
  String? get image;
  @override
  bool? get isVerified;
  @override
  List<String>? get morning;
  @override
  List<String>? get afternoon;
  @override
  String? get beautician;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_SalonCopyWith<_$_Salon> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceType _$ServiceTypeFromJson(Map<String, dynamic> json) {
  return _ServiceType.fromJson(json);
}

/// @nodoc
mixin _$ServiceType {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceTypeCopyWith<ServiceType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceTypeCopyWith<$Res> {
  factory $ServiceTypeCopyWith(
          ServiceType value, $Res Function(ServiceType) then) =
      _$ServiceTypeCopyWithImpl<$Res, ServiceType>;
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class _$ServiceTypeCopyWithImpl<$Res, $Val extends ServiceType>
    implements $ServiceTypeCopyWith<$Res> {
  _$ServiceTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$_ServiceTypeCopyWith<$Res>
    implements $ServiceTypeCopyWith<$Res> {
  factory _$$_ServiceTypeCopyWith(
          _$_ServiceType value, $Res Function(_$_ServiceType) then) =
      __$$_ServiceTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? id});
}

/// @nodoc
class __$$_ServiceTypeCopyWithImpl<$Res>
    extends _$ServiceTypeCopyWithImpl<$Res, _$_ServiceType>
    implements _$$_ServiceTypeCopyWith<$Res> {
  __$$_ServiceTypeCopyWithImpl(
      _$_ServiceType _value, $Res Function(_$_ServiceType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ServiceType(
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
class _$_ServiceType implements _ServiceType {
  const _$_ServiceType({this.name, this.id});

  factory _$_ServiceType.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceTypeFromJson(json);

  @override
  final String? name;
  @override
  final String? id;

  @override
  String toString() {
    return 'ServiceType(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceTypeCopyWith<_$_ServiceType> get copyWith =>
      __$$_ServiceTypeCopyWithImpl<_$_ServiceType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceTypeToJson(
      this,
    );
  }
}

abstract class _ServiceType implements ServiceType {
  const factory _ServiceType({final String? name, final String? id}) =
      _$_ServiceType;

  factory _ServiceType.fromJson(Map<String, dynamic> json) =
      _$_ServiceType.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceTypeCopyWith<_$_ServiceType> get copyWith =>
      throw _privateConstructorUsedError;
}
