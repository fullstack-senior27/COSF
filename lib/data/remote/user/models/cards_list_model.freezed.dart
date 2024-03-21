// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardsListResponse _$CardsListResponseFromJson(Map<String, dynamic> json) {
  return _CardsListResponse.fromJson(json);
}

/// @nodoc
mixin _$CardsListResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardsListResponseCopyWith<CardsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsListResponseCopyWith<$Res> {
  factory $CardsListResponseCopyWith(
          CardsListResponse value, $Res Function(CardsListResponse) then) =
      _$CardsListResponseCopyWithImpl<$Res, CardsListResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$CardsListResponseCopyWithImpl<$Res, $Val extends CardsListResponse>
    implements $CardsListResponseCopyWith<$Res> {
  _$CardsListResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CardsListResponseCopyWith<$Res>
    implements $CardsListResponseCopyWith<$Res> {
  factory _$$_CardsListResponseCopyWith(_$_CardsListResponse value,
          $Res Function(_$_CardsListResponse) then) =
      __$$_CardsListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$_CardsListResponseCopyWithImpl<$Res>
    extends _$CardsListResponseCopyWithImpl<$Res, _$_CardsListResponse>
    implements _$$_CardsListResponseCopyWith<$Res> {
  __$$_CardsListResponseCopyWithImpl(
      _$_CardsListResponse _value, $Res Function(_$_CardsListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CardsListResponse(
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
class _$_CardsListResponse implements _CardsListResponse {
  const _$_CardsListResponse(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$_CardsListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CardsListResponseFromJson(json);

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
    return 'CardsListResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardsListResponse &&
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
  _$$_CardsListResponseCopyWith<_$_CardsListResponse> get copyWith =>
      __$$_CardsListResponseCopyWithImpl<_$_CardsListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardsListResponseToJson(
      this,
    );
  }
}

abstract class _CardsListResponse implements CardsListResponse {
  const factory _CardsListResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$_CardsListResponse;

  factory _CardsListResponse.fromJson(Map<String, dynamic> json) =
      _$_CardsListResponse.fromJson;

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
  _$$_CardsListResponseCopyWith<_$_CardsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  dynamic get addressCity => throw _privateConstructorUsedError;
  dynamic get addressCountry => throw _privateConstructorUsedError;
  dynamic get addressLine1 => throw _privateConstructorUsedError;
  dynamic get addressLine1Check => throw _privateConstructorUsedError;
  dynamic get addressLine2 => throw _privateConstructorUsedError;
  dynamic get addressState => throw _privateConstructorUsedError;
  dynamic get addressZip => throw _privateConstructorUsedError;
  dynamic get addressZipCheck => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get customer => throw _privateConstructorUsedError;
  String? get cvcCheck => throw _privateConstructorUsedError;
  dynamic get dynamicLast4 => throw _privateConstructorUsedError;
  int? get expMonth => throw _privateConstructorUsedError;
  int? get expYear => throw _privateConstructorUsedError;
  String? get fingerprint => throw _privateConstructorUsedError;
  String? get funding => throw _privateConstructorUsedError;
  String? get last4 => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get tokenizationMethod => throw _privateConstructorUsedError;
  dynamic get wallet => throw _privateConstructorUsedError;

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
      {String? id,
      String? object,
      dynamic addressCity,
      dynamic addressCountry,
      dynamic addressLine1,
      dynamic addressLine1Check,
      dynamic addressLine2,
      dynamic addressState,
      dynamic addressZip,
      dynamic addressZipCheck,
      String? brand,
      String? country,
      String? customer,
      String? cvcCheck,
      dynamic dynamicLast4,
      int? expMonth,
      int? expYear,
      String? fingerprint,
      String? funding,
      String? last4,
      Metadata? metadata,
      dynamic name,
      dynamic tokenizationMethod,
      dynamic wallet});

  $MetadataCopyWith<$Res>? get metadata;
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
    Object? id = freezed,
    Object? object = freezed,
    Object? addressCity = freezed,
    Object? addressCountry = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine1Check = freezed,
    Object? addressLine2 = freezed,
    Object? addressState = freezed,
    Object? addressZip = freezed,
    Object? addressZipCheck = freezed,
    Object? brand = freezed,
    Object? country = freezed,
    Object? customer = freezed,
    Object? cvcCheck = freezed,
    Object? dynamicLast4 = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? last4 = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? tokenizationMethod = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressCountry: freezed == addressCountry
          ? _value.addressCountry
          : addressCountry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressState: freezed == addressState
          ? _value.addressState
          : addressState // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZip: freezed == addressZip
          ? _value.addressZip
          : addressZip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZipCheck: freezed == addressZipCheck
          ? _value.addressZipCheck
          : addressZipCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
      dynamicLast4: freezed == dynamicLast4
          ? _value.dynamicLast4
          : dynamicLast4 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenizationMethod: freezed == tokenizationMethod
          ? _value.tokenizationMethod
          : tokenizationMethod // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
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
      {String? id,
      String? object,
      dynamic addressCity,
      dynamic addressCountry,
      dynamic addressLine1,
      dynamic addressLine1Check,
      dynamic addressLine2,
      dynamic addressState,
      dynamic addressZip,
      dynamic addressZipCheck,
      String? brand,
      String? country,
      String? customer,
      String? cvcCheck,
      dynamic dynamicLast4,
      int? expMonth,
      int? expYear,
      String? fingerprint,
      String? funding,
      String? last4,
      Metadata? metadata,
      dynamic name,
      dynamic tokenizationMethod,
      dynamic wallet});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? addressCity = freezed,
    Object? addressCountry = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine1Check = freezed,
    Object? addressLine2 = freezed,
    Object? addressState = freezed,
    Object? addressZip = freezed,
    Object? addressZipCheck = freezed,
    Object? brand = freezed,
    Object? country = freezed,
    Object? customer = freezed,
    Object? cvcCheck = freezed,
    Object? dynamicLast4 = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? last4 = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? tokenizationMethod = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressCountry: freezed == addressCountry
          ? _value.addressCountry
          : addressCountry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressState: freezed == addressState
          ? _value.addressState
          : addressState // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZip: freezed == addressZip
          ? _value.addressZip
          : addressZip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZipCheck: freezed == addressZipCheck
          ? _value.addressZipCheck
          : addressZipCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
      dynamicLast4: freezed == dynamicLast4
          ? _value.dynamicLast4
          : dynamicLast4 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenizationMethod: freezed == tokenizationMethod
          ? _value.tokenizationMethod
          : tokenizationMethod // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.id,
      this.object,
      this.addressCity,
      this.addressCountry,
      this.addressLine1,
      this.addressLine1Check,
      this.addressLine2,
      this.addressState,
      this.addressZip,
      this.addressZipCheck,
      this.brand,
      this.country,
      this.customer,
      this.cvcCheck,
      this.dynamicLast4,
      this.expMonth,
      this.expYear,
      this.fingerprint,
      this.funding,
      this.last4,
      this.metadata,
      this.name,
      this.tokenizationMethod,
      this.wallet});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final dynamic addressCity;
  @override
  final dynamic addressCountry;
  @override
  final dynamic addressLine1;
  @override
  final dynamic addressLine1Check;
  @override
  final dynamic addressLine2;
  @override
  final dynamic addressState;
  @override
  final dynamic addressZip;
  @override
  final dynamic addressZipCheck;
  @override
  final String? brand;
  @override
  final String? country;
  @override
  final String? customer;
  @override
  final String? cvcCheck;
  @override
  final dynamic dynamicLast4;
  @override
  final int? expMonth;
  @override
  final int? expYear;
  @override
  final String? fingerprint;
  @override
  final String? funding;
  @override
  final String? last4;
  @override
  final Metadata? metadata;
  @override
  final dynamic name;
  @override
  final dynamic tokenizationMethod;
  @override
  final dynamic wallet;

  @override
  String toString() {
    return 'Datum(id: $id, object: $object, addressCity: $addressCity, addressCountry: $addressCountry, addressLine1: $addressLine1, addressLine1Check: $addressLine1Check, addressLine2: $addressLine2, addressState: $addressState, addressZip: $addressZip, addressZipCheck: $addressZipCheck, brand: $brand, country: $country, customer: $customer, cvcCheck: $cvcCheck, dynamicLast4: $dynamicLast4, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, last4: $last4, metadata: $metadata, name: $name, tokenizationMethod: $tokenizationMethod, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality()
                .equals(other.addressCity, addressCity) &&
            const DeepCollectionEquality()
                .equals(other.addressCountry, addressCountry) &&
            const DeepCollectionEquality()
                .equals(other.addressLine1, addressLine1) &&
            const DeepCollectionEquality()
                .equals(other.addressLine1Check, addressLine1Check) &&
            const DeepCollectionEquality()
                .equals(other.addressLine2, addressLine2) &&
            const DeepCollectionEquality()
                .equals(other.addressState, addressState) &&
            const DeepCollectionEquality()
                .equals(other.addressZip, addressZip) &&
            const DeepCollectionEquality()
                .equals(other.addressZipCheck, addressZipCheck) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.cvcCheck, cvcCheck) ||
                other.cvcCheck == cvcCheck) &&
            const DeepCollectionEquality()
                .equals(other.dynamicLast4, dynamicLast4) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint) &&
            (identical(other.funding, funding) || other.funding == funding) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.tokenizationMethod, tokenizationMethod) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        object,
        const DeepCollectionEquality().hash(addressCity),
        const DeepCollectionEquality().hash(addressCountry),
        const DeepCollectionEquality().hash(addressLine1),
        const DeepCollectionEquality().hash(addressLine1Check),
        const DeepCollectionEquality().hash(addressLine2),
        const DeepCollectionEquality().hash(addressState),
        const DeepCollectionEquality().hash(addressZip),
        const DeepCollectionEquality().hash(addressZipCheck),
        brand,
        country,
        customer,
        cvcCheck,
        const DeepCollectionEquality().hash(dynamicLast4),
        expMonth,
        expYear,
        fingerprint,
        funding,
        last4,
        metadata,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(tokenizationMethod),
        const DeepCollectionEquality().hash(wallet)
      ]);

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
      {final String? id,
      final String? object,
      final dynamic addressCity,
      final dynamic addressCountry,
      final dynamic addressLine1,
      final dynamic addressLine1Check,
      final dynamic addressLine2,
      final dynamic addressState,
      final dynamic addressZip,
      final dynamic addressZipCheck,
      final String? brand,
      final String? country,
      final String? customer,
      final String? cvcCheck,
      final dynamic dynamicLast4,
      final int? expMonth,
      final int? expYear,
      final String? fingerprint,
      final String? funding,
      final String? last4,
      final Metadata? metadata,
      final dynamic name,
      final dynamic tokenizationMethod,
      final dynamic wallet}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  dynamic get addressCity;
  @override
  dynamic get addressCountry;
  @override
  dynamic get addressLine1;
  @override
  dynamic get addressLine1Check;
  @override
  dynamic get addressLine2;
  @override
  dynamic get addressState;
  @override
  dynamic get addressZip;
  @override
  dynamic get addressZipCheck;
  @override
  String? get brand;
  @override
  String? get country;
  @override
  String? get customer;
  @override
  String? get cvcCheck;
  @override
  dynamic get dynamicLast4;
  @override
  int? get expMonth;
  @override
  int? get expYear;
  @override
  String? get fingerprint;
  @override
  String? get funding;
  @override
  String? get last4;
  @override
  Metadata? get metadata;
  @override
  dynamic get name;
  @override
  dynamic get tokenizationMethod;
  @override
  dynamic get wallet;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MetadataCopyWith<$Res> {
  factory _$$_MetadataCopyWith(
          _$_Metadata value, $Res Function(_$_Metadata) then) =
      __$$_MetadataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MetadataCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$_Metadata>
    implements _$$_MetadataCopyWith<$Res> {
  __$$_MetadataCopyWithImpl(
      _$_Metadata _value, $Res Function(_$_Metadata) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Metadata implements _Metadata {
  const _$_Metadata();

  factory _$_Metadata.fromJson(Map<String, dynamic> json) =>
      _$$_MetadataFromJson(json);

  @override
  String toString() {
    return 'Metadata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Metadata);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetadataToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata() = _$_Metadata;

  factory _Metadata.fromJson(Map<String, dynamic> json) = _$_Metadata.fromJson;
}
