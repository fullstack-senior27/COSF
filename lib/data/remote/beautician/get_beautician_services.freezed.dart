// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_beautician_services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianServicesRequest _$BeauticianServicesRequestFromJson(
    Map<String, dynamic> json) {
  return _BeauticianServicesRequest.fromJson(json);
}

/// @nodoc
mixin _$BeauticianServicesRequest {
  String? get beauticianId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianServicesRequestCopyWith<BeauticianServicesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianServicesRequestCopyWith<$Res> {
  factory $BeauticianServicesRequestCopyWith(BeauticianServicesRequest value,
          $Res Function(BeauticianServicesRequest) then) =
      _$BeauticianServicesRequestCopyWithImpl<$Res, BeauticianServicesRequest>;
  @useResult
  $Res call({String? beauticianId});
}

/// @nodoc
class _$BeauticianServicesRequestCopyWithImpl<$Res,
        $Val extends BeauticianServicesRequest>
    implements $BeauticianServicesRequestCopyWith<$Res> {
  _$BeauticianServicesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beauticianId = freezed,
  }) {
    return _then(_value.copyWith(
      beauticianId: freezed == beauticianId
          ? _value.beauticianId
          : beauticianId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeauticianServicesRequestCopyWith<$Res>
    implements $BeauticianServicesRequestCopyWith<$Res> {
  factory _$$_BeauticianServicesRequestCopyWith(
          _$_BeauticianServicesRequest value,
          $Res Function(_$_BeauticianServicesRequest) then) =
      __$$_BeauticianServicesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? beauticianId});
}

/// @nodoc
class __$$_BeauticianServicesRequestCopyWithImpl<$Res>
    extends _$BeauticianServicesRequestCopyWithImpl<$Res,
        _$_BeauticianServicesRequest>
    implements _$$_BeauticianServicesRequestCopyWith<$Res> {
  __$$_BeauticianServicesRequestCopyWithImpl(
      _$_BeauticianServicesRequest _value,
      $Res Function(_$_BeauticianServicesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beauticianId = freezed,
  }) {
    return _then(_$_BeauticianServicesRequest(
      beauticianId: freezed == beauticianId
          ? _value.beauticianId
          : beauticianId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeauticianServicesRequest implements _BeauticianServicesRequest {
  const _$_BeauticianServicesRequest({this.beauticianId});

  factory _$_BeauticianServicesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianServicesRequestFromJson(json);

  @override
  final String? beauticianId;

  @override
  String toString() {
    return 'BeauticianServicesRequest(beauticianId: $beauticianId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianServicesRequest &&
            (identical(other.beauticianId, beauticianId) ||
                other.beauticianId == beauticianId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, beauticianId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticianServicesRequestCopyWith<_$_BeauticianServicesRequest>
      get copyWith => __$$_BeauticianServicesRequestCopyWithImpl<
          _$_BeauticianServicesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianServicesRequestToJson(
      this,
    );
  }
}

abstract class _BeauticianServicesRequest implements BeauticianServicesRequest {
  const factory _BeauticianServicesRequest({final String? beauticianId}) =
      _$_BeauticianServicesRequest;

  factory _BeauticianServicesRequest.fromJson(Map<String, dynamic> json) =
      _$_BeauticianServicesRequest.fromJson;

  @override
  String? get beauticianId;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianServicesRequestCopyWith<_$_BeauticianServicesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

BeauticianServicesResponse _$BeauticianServicesResponseFromJson(
    Map<String, dynamic> json) {
  return _BeauticianServicesResponse.fromJson(json);
}

/// @nodoc
mixin _$BeauticianServicesResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianServicesResponseCopyWith<BeauticianServicesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianServicesResponseCopyWith<$Res> {
  factory $BeauticianServicesResponseCopyWith(BeauticianServicesResponse value,
          $Res Function(BeauticianServicesResponse) then) =
      _$BeauticianServicesResponseCopyWithImpl<$Res,
          BeauticianServicesResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$BeauticianServicesResponseCopyWithImpl<$Res,
        $Val extends BeauticianServicesResponse>
    implements $BeauticianServicesResponseCopyWith<$Res> {
  _$BeauticianServicesResponseCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeauticianServicesResponseCopyWith<$Res>
    implements $BeauticianServicesResponseCopyWith<$Res> {
  factory _$$_BeauticianServicesResponseCopyWith(
          _$_BeauticianServicesResponse value,
          $Res Function(_$_BeauticianServicesResponse) then) =
      __$$_BeauticianServicesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$_BeauticianServicesResponseCopyWithImpl<$Res>
    extends _$BeauticianServicesResponseCopyWithImpl<$Res,
        _$_BeauticianServicesResponse>
    implements _$$_BeauticianServicesResponseCopyWith<$Res> {
  __$$_BeauticianServicesResponseCopyWithImpl(
      _$_BeauticianServicesResponse _value,
      $Res Function(_$_BeauticianServicesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeauticianServicesResponse(
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
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeauticianServicesResponse implements _BeauticianServicesResponse {
  const _$_BeauticianServicesResponse(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$_BeauticianServicesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianServicesResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BeauticianServicesResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianServicesResponse &&
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
  _$$_BeauticianServicesResponseCopyWith<_$_BeauticianServicesResponse>
      get copyWith => __$$_BeauticianServicesResponseCopyWithImpl<
          _$_BeauticianServicesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianServicesResponseToJson(
      this,
    );
  }
}

abstract class _BeauticianServicesResponse
    implements BeauticianServicesResponse {
  const factory _BeauticianServicesResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$_BeauticianServicesResponse;

  factory _BeauticianServicesResponse.fromJson(Map<String, dynamic> json) =
      _$_BeauticianServicesResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticianServicesResponseCopyWith<_$_BeauticianServicesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationInMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_category')
  Service? get serviceCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_type')
  Service? get serviceType => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {bool? isAvailable,
      String? name,
      int? price,
      String? description,
      int? durationInMinutes,
      @JsonKey(name: 'service_category') Service? serviceCategory,
      @JsonKey(name: 'service_type') Service? serviceType,
      String? beautician,
      String? id});

  $ServiceCopyWith<$Res>? get serviceCategory;
  $ServiceCopyWith<$Res>? get serviceType;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

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
              as Service?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as Service?,
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

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get serviceCategory {
    if (_value.serviceCategory == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.serviceCategory!, (value) {
      return _then(_value.copyWith(serviceCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get serviceType {
    if (_value.serviceType == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.serviceType!, (value) {
      return _then(_value.copyWith(serviceType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isAvailable,
      String? name,
      int? price,
      String? description,
      int? durationInMinutes,
      @JsonKey(name: 'service_category') Service? serviceCategory,
      @JsonKey(name: 'service_type') Service? serviceType,
      String? beautician,
      String? id});

  @override
  $ServiceCopyWith<$Res>? get serviceCategory;
  @override
  $ServiceCopyWith<$Res>? get serviceType;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
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
    return _then(_$_Datum(
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
              as Service?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as Service?,
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
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.isAvailable,
      this.name,
      this.price,
      this.description,
      this.durationInMinutes,
      @JsonKey(name: 'service_category') this.serviceCategory,
      @JsonKey(name: 'service_type') this.serviceType,
      this.beautician,
      this.id});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

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
  @JsonKey(name: 'service_category')
  final Service? serviceCategory;
  @override
  @JsonKey(name: 'service_type')
  final Service? serviceType;
  @override
  final String? beautician;
  @override
  final String? id;

  @override
  String toString() {
    return 'Datum(isAvailable: $isAvailable, name: $name, price: $price, description: $description, durationInMinutes: $durationInMinutes, serviceCategory: $serviceCategory, serviceType: $serviceType, beautician: $beautician, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
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
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final bool? isAvailable,
      final String? name,
      final int? price,
      final String? description,
      final int? durationInMinutes,
      @JsonKey(name: 'service_category') final Service? serviceCategory,
      @JsonKey(name: 'service_type') final Service? serviceType,
      final String? beautician,
      final String? id}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

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
  @JsonKey(name: 'service_category')
  Service? get serviceCategory;
  @override
  @JsonKey(name: 'service_type')
  Service? get serviceType;
  @override
  String? get beautician;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String? get name => throw _privateConstructorUsedError;
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
  $Res call({String? name, String? id});
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
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? id});
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
    Object? id = freezed,
  }) {
    return _then(_$_Service(
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
class _$_Service implements _Service {
  const _$_Service({this.name, this.id});

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final String? name;
  @override
  final String? id;

  @override
  String toString() {
    return 'Service(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

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
  const factory _Service({final String? name, final String? id}) = _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
