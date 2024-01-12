// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beauticians_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticiansListResponse _$BeauticiansListResponseFromJson(
    Map<String, dynamic> json) {
  return _BeauticiansListResponse.fromJson(json);
}

/// @nodoc
mixin _$BeauticiansListResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticiansListResponseCopyWith<BeauticiansListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticiansListResponseCopyWith<$Res> {
  factory $BeauticiansListResponseCopyWith(BeauticiansListResponse value,
          $Res Function(BeauticiansListResponse) then) =
      _$BeauticiansListResponseCopyWithImpl<$Res, BeauticiansListResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$BeauticiansListResponseCopyWithImpl<$Res,
        $Val extends BeauticiansListResponse>
    implements $BeauticiansListResponseCopyWith<$Res> {
  _$BeauticiansListResponseCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BeauticiansListResponseCopyWith<$Res>
    implements $BeauticiansListResponseCopyWith<$Res> {
  factory _$$_BeauticiansListResponseCopyWith(_$_BeauticiansListResponse value,
          $Res Function(_$_BeauticiansListResponse) then) =
      __$$_BeauticiansListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_BeauticiansListResponseCopyWithImpl<$Res>
    extends _$BeauticiansListResponseCopyWithImpl<$Res,
        _$_BeauticiansListResponse>
    implements _$$_BeauticiansListResponseCopyWith<$Res> {
  __$$_BeauticiansListResponseCopyWithImpl(_$_BeauticiansListResponse _value,
      $Res Function(_$_BeauticiansListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = null,
  }) {
    return _then(_$_BeauticiansListResponse(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeauticiansListResponse implements _BeauticiansListResponse {
  const _$_BeauticiansListResponse(
      {this.code, this.message, this.isSuccess, required this.data});

  factory _$_BeauticiansListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticiansListResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data data;

  @override
  String toString() {
    return 'BeauticiansListResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticiansListResponse &&
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
  _$$_BeauticiansListResponseCopyWith<_$_BeauticiansListResponse>
      get copyWith =>
          __$$_BeauticiansListResponseCopyWithImpl<_$_BeauticiansListResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticiansListResponseToJson(
      this,
    );
  }
}

abstract class _BeauticiansListResponse implements BeauticiansListResponse {
  const factory _BeauticiansListResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      required final Data data}) = _$_BeauticiansListResponse;

  factory _BeauticiansListResponse.fromJson(Map<String, dynamic> json) =
      _$_BeauticiansListResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticiansListResponseCopyWith<_$_BeauticiansListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Result> get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

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
      {List<Result> results,
      int? totalPages,
      int? currentPage,
      int? limit,
      int? totalResults});
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
    Object? results = null,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {List<Result> results,
      int? totalPages,
      int? currentPage,
      int? limit,
      int? totalResults});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_Data(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required final List<Result> results,
      this.totalPages,
      this.currentPage,
      this.limit,
      this.totalResults})
      : _results = results;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int? totalPages;
  @override
  final int? currentPage;
  @override
  final int? limit;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'Data(results: $results, totalPages: $totalPages, currentPage: $currentPage, limit: $limit, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      totalPages,
      currentPage,
      limit,
      totalResults);

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
      {required final List<Result> results,
      final int? totalPages,
      final int? currentPage,
      final int? limit,
      final int? totalResults}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Result> get results;
  @override
  int? get totalPages;
  @override
  int? get currentPage;
  @override
  int? get limit;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<dynamic>? get photos => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  dynamic get about => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  List<String>? get speciality => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  List<Availability>? get availability => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<String>? get blockedClients => throw _privateConstructorUsedError;
  List<Service>? get services => throw _privateConstructorUsedError;
  List<dynamic>? get products => throw _privateConstructorUsedError;
  List<ServiceCategory>? get serviceCategories =>
      throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;
  List<AvailableDay>? get availableDays => throw _privateConstructorUsedError;
  List<Afternoon>? get afternoon => throw _privateConstructorUsedError;
  List<Afternoon>? get evening => throw _privateConstructorUsedError;
  List<Afternoon>? get morning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? image,
      String? role,
      List<dynamic>? photos,
      String? profession,
      dynamic about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      String? accountId,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availability>? availability,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      String? address,
      List<String>? blockedClients,
      List<Service>? services,
      List<dynamic>? products,
      List<ServiceCategory>? serviceCategories,
      List<Review>? reviews,
      int? ratingCount,
      double? avgRating,
      List<AvailableDay>? availableDays,
      List<Afternoon>? afternoon,
      List<Afternoon>? evening,
      List<Afternoon>? morning});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? role = freezed,
    Object? photos = freezed,
    Object? profession = freezed,
    Object? about = freezed,
    Object? website = freezed,
    Object? isEmailVerified = freezed,
    Object? speciality = freezed,
    Object? accountId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? availability = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? address = freezed,
    Object? blockedClients = freezed,
    Object? services = freezed,
    Object? products = freezed,
    Object? serviceCategories = freezed,
    Object? reviews = freezed,
    Object? ratingCount = freezed,
    Object? avgRating = freezed,
    Object? availableDays = freezed,
    Object? afternoon = freezed,
    Object? evening = freezed,
    Object? morning = freezed,
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
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedClients: freezed == blockedClients
          ? _value.blockedClients
          : blockedClients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      serviceCategories: freezed == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      availableDays: freezed == availableDays
          ? _value.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<AvailableDay>?,
      afternoon: freezed == afternoon
          ? _value.afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      evening: freezed == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? image,
      String? role,
      List<dynamic>? photos,
      String? profession,
      dynamic about,
      String? website,
      bool? isEmailVerified,
      List<String>? speciality,
      String? accountId,
      String? name,
      String? email,
      String? phone,
      List<dynamic>? notes,
      List<Availability>? availability,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      String? address,
      List<String>? blockedClients,
      List<Service>? services,
      List<dynamic>? products,
      List<ServiceCategory>? serviceCategories,
      List<Review>? reviews,
      int? ratingCount,
      double? avgRating,
      List<AvailableDay>? availableDays,
      List<Afternoon>? afternoon,
      List<Afternoon>? evening,
      List<Afternoon>? morning});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? role = freezed,
    Object? photos = freezed,
    Object? profession = freezed,
    Object? about = freezed,
    Object? website = freezed,
    Object? isEmailVerified = freezed,
    Object? speciality = freezed,
    Object? accountId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? availability = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? address = freezed,
    Object? blockedClients = freezed,
    Object? services = freezed,
    Object? products = freezed,
    Object? serviceCategories = freezed,
    Object? reviews = freezed,
    Object? ratingCount = freezed,
    Object? avgRating = freezed,
    Object? availableDays = freezed,
    Object? afternoon = freezed,
    Object? evening = freezed,
    Object? morning = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedClients: freezed == blockedClients
          ? _value._blockedClients
          : blockedClients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      serviceCategories: freezed == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      availableDays: freezed == availableDays
          ? _value._availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<AvailableDay>?,
      afternoon: freezed == afternoon
          ? _value._afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      evening: freezed == evening
          ? _value._evening
          : evening // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
      morning: freezed == morning
          ? _value._morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<Afternoon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {@JsonKey(name: "_id") this.id,
      this.image,
      this.role,
      final List<dynamic>? photos,
      this.profession,
      this.about,
      this.website,
      this.isEmailVerified,
      final List<String>? speciality,
      this.accountId,
      this.name,
      this.email,
      this.phone,
      final List<dynamic>? notes,
      final List<Availability>? availability,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v,
      this.address,
      final List<String>? blockedClients,
      final List<Service>? services,
      final List<dynamic>? products,
      final List<ServiceCategory>? serviceCategories,
      final List<Review>? reviews,
      this.ratingCount,
      this.avgRating,
      final List<AvailableDay>? availableDays,
      final List<Afternoon>? afternoon,
      final List<Afternoon>? evening,
      final List<Afternoon>? morning})
      : _photos = photos,
        _speciality = speciality,
        _notes = notes,
        _availability = availability,
        _blockedClients = blockedClients,
        _services = services,
        _products = products,
        _serviceCategories = serviceCategories,
        _reviews = reviews,
        _availableDays = availableDays,
        _afternoon = afternoon,
        _evening = evening,
        _morning = morning;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? image;
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

  @override
  final String? accountId;
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
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  final String? address;
  final List<String>? _blockedClients;
  @override
  List<String>? get blockedClients {
    final value = _blockedClients;
    if (value == null) return null;
    if (_blockedClients is EqualUnmodifiableListView) return _blockedClients;
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

  final List<dynamic>? _products;
  @override
  List<dynamic>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
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

  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? ratingCount;
  @override
  final double? avgRating;
  final List<AvailableDay>? _availableDays;
  @override
  List<AvailableDay>? get availableDays {
    final value = _availableDays;
    if (value == null) return null;
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Afternoon>? _afternoon;
  @override
  List<Afternoon>? get afternoon {
    final value = _afternoon;
    if (value == null) return null;
    if (_afternoon is EqualUnmodifiableListView) return _afternoon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Afternoon>? _evening;
  @override
  List<Afternoon>? get evening {
    final value = _evening;
    if (value == null) return null;
    if (_evening is EqualUnmodifiableListView) return _evening;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Afternoon>? _morning;
  @override
  List<Afternoon>? get morning {
    final value = _morning;
    if (value == null) return null;
    if (_morning is EqualUnmodifiableListView) return _morning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, image: $image, role: $role, photos: $photos, profession: $profession, about: $about, website: $website, isEmailVerified: $isEmailVerified, speciality: $speciality, accountId: $accountId, name: $name, email: $email, phone: $phone, notes: $notes, availability: $availability, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, address: $address, blockedClients: $blockedClients, services: $services, products: $products, serviceCategories: $serviceCategories, reviews: $reviews, ratingCount: $ratingCount, avgRating: $avgRating, availableDays: $availableDays, afternoon: $afternoon, evening: $evening, morning: $morning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
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
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality()
                .equals(other._availability, _availability) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._blockedClients, _blockedClients) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            const DeepCollectionEquality()
                .equals(other._availableDays, _availableDays) &&
            const DeepCollectionEquality()
                .equals(other._afternoon, _afternoon) &&
            const DeepCollectionEquality().equals(other._evening, _evening) &&
            const DeepCollectionEquality().equals(other._morning, _morning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        role,
        const DeepCollectionEquality().hash(_photos),
        profession,
        const DeepCollectionEquality().hash(about),
        website,
        isEmailVerified,
        const DeepCollectionEquality().hash(_speciality),
        accountId,
        name,
        email,
        phone,
        const DeepCollectionEquality().hash(_notes),
        const DeepCollectionEquality().hash(_availability),
        createdAt,
        updatedAt,
        v,
        address,
        const DeepCollectionEquality().hash(_blockedClients),
        const DeepCollectionEquality().hash(_services),
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_serviceCategories),
        const DeepCollectionEquality().hash(_reviews),
        ratingCount,
        avgRating,
        const DeepCollectionEquality().hash(_availableDays),
        const DeepCollectionEquality().hash(_afternoon),
        const DeepCollectionEquality().hash(_evening),
        const DeepCollectionEquality().hash(_morning)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: "_id") final String? id,
      final String? image,
      final String? role,
      final List<dynamic>? photos,
      final String? profession,
      final dynamic about,
      final String? website,
      final bool? isEmailVerified,
      final List<String>? speciality,
      final String? accountId,
      final String? name,
      final String? email,
      final String? phone,
      final List<dynamic>? notes,
      final List<Availability>? availability,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v,
      final String? address,
      final List<String>? blockedClients,
      final List<Service>? services,
      final List<dynamic>? products,
      final List<ServiceCategory>? serviceCategories,
      final List<Review>? reviews,
      final int? ratingCount,
      final double? avgRating,
      final List<AvailableDay>? availableDays,
      final List<Afternoon>? afternoon,
      final List<Afternoon>? evening,
      final List<Afternoon>? morning}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get image;
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
  String? get accountId;
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
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  String? get address;
  @override
  List<String>? get blockedClients;
  @override
  List<Service>? get services;
  @override
  List<dynamic>? get products;
  @override
  List<ServiceCategory>? get serviceCategories;
  @override
  List<Review>? get reviews;
  @override
  int? get ratingCount;
  @override
  double? get avgRating;
  @override
  List<AvailableDay>? get availableDays;
  @override
  List<Afternoon>? get afternoon;
  @override
  List<Afternoon>? get evening;
  @override
  List<Afternoon>? get morning;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableDay _$AvailableDayFromJson(Map<String, dynamic> json) {
  return _AvailableDay.fromJson(json);
}

/// @nodoc
mixin _$AvailableDay {
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableDayCopyWith<AvailableDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableDayCopyWith<$Res> {
  factory $AvailableDayCopyWith(
          AvailableDay value, $Res Function(AvailableDay) then) =
      _$AvailableDayCopyWithImpl<$Res, AvailableDay>;
  @useResult
  $Res call(
      {bool? isAvailable,
      String? day,
      @JsonKey(name: '_id') String? id,
      DateTime? date});
}

/// @nodoc
class _$AvailableDayCopyWithImpl<$Res, $Val extends AvailableDay>
    implements $AvailableDayCopyWith<$Res> {
  _$AvailableDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? day = freezed,
    Object? id = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableDayCopyWith<$Res>
    implements $AvailableDayCopyWith<$Res> {
  factory _$$_AvailableDayCopyWith(
          _$_AvailableDay value, $Res Function(_$_AvailableDay) then) =
      __$$_AvailableDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isAvailable,
      String? day,
      @JsonKey(name: '_id') String? id,
      DateTime? date});
}

/// @nodoc
class __$$_AvailableDayCopyWithImpl<$Res>
    extends _$AvailableDayCopyWithImpl<$Res, _$_AvailableDay>
    implements _$$_AvailableDayCopyWith<$Res> {
  __$$_AvailableDayCopyWithImpl(
      _$_AvailableDay _value, $Res Function(_$_AvailableDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? day = freezed,
    Object? id = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_AvailableDay(
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableDay implements _AvailableDay {
  const _$_AvailableDay(
      {this.isAvailable, this.day, @JsonKey(name: '_id') this.id, this.date});

  factory _$_AvailableDay.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableDayFromJson(json);

  @override
  final bool? isAvailable;
  @override
  final String? day;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'AvailableDay(isAvailable: $isAvailable, day: $day, id: $id, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableDay &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAvailable, day, id, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableDayCopyWith<_$_AvailableDay> get copyWith =>
      __$$_AvailableDayCopyWithImpl<_$_AvailableDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableDayToJson(
      this,
    );
  }
}

abstract class _AvailableDay implements AvailableDay {
  const factory _AvailableDay(
      {final bool? isAvailable,
      final String? day,
      @JsonKey(name: '_id') final String? id,
      final DateTime? date}) = _$_AvailableDay;

  factory _AvailableDay.fromJson(Map<String, dynamic> json) =
      _$_AvailableDay.fromJson;

  @override
  bool? get isAvailable;
  @override
  String? get day;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableDayCopyWith<_$_AvailableDay> get copyWith =>
      throw _privateConstructorUsedError;
}

Afternoon _$AfternoonFromJson(Map<String, dynamic> json) {
  return _Afternoon.fromJson(json);
}

/// @nodoc
mixin _$Afternoon {
  bool? get isBooked => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AfternoonCopyWith<Afternoon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AfternoonCopyWith<$Res> {
  factory $AfternoonCopyWith(Afternoon value, $Res Function(Afternoon) then) =
      _$AfternoonCopyWithImpl<$Res, Afternoon>;
  @useResult
  $Res call({bool? isBooked, String? time, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$AfternoonCopyWithImpl<$Res, $Val extends Afternoon>
    implements $AfternoonCopyWith<$Res> {
  _$AfternoonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBooked = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AfternoonCopyWith<$Res> implements $AfternoonCopyWith<$Res> {
  factory _$$_AfternoonCopyWith(
          _$_Afternoon value, $Res Function(_$_Afternoon) then) =
      __$$_AfternoonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isBooked, String? time, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_AfternoonCopyWithImpl<$Res>
    extends _$AfternoonCopyWithImpl<$Res, _$_Afternoon>
    implements _$$_AfternoonCopyWith<$Res> {
  __$$_AfternoonCopyWithImpl(
      _$_Afternoon _value, $Res Function(_$_Afternoon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBooked = freezed,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Afternoon(
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
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
class _$_Afternoon implements _Afternoon {
  const _$_Afternoon({this.isBooked, this.time, @JsonKey(name: '_id') this.id});

  factory _$_Afternoon.fromJson(Map<String, dynamic> json) =>
      _$$_AfternoonFromJson(json);

  @override
  final bool? isBooked;
  @override
  final String? time;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Afternoon(isBooked: $isBooked, time: $time, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Afternoon &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isBooked, time, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AfternoonCopyWith<_$_Afternoon> get copyWith =>
      __$$_AfternoonCopyWithImpl<_$_Afternoon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AfternoonToJson(
      this,
    );
  }
}

abstract class _Afternoon implements Afternoon {
  const factory _Afternoon(
      {final bool? isBooked,
      final String? time,
      @JsonKey(name: '_id') final String? id}) = _$_Afternoon;

  factory _Afternoon.fromJson(Map<String, dynamic> json) =
      _$_Afternoon.fromJson;

  @override
  bool? get isBooked;
  @override
  String? get time;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AfternoonCopyWith<_$_Afternoon> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: "_id")
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
      @JsonKey(name: "_id") String? id});
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
      @JsonKey(name: "_id") String? id});
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
      @JsonKey(name: "_id") this.id});

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
  @JsonKey(name: "_id")
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
      @JsonKey(name: "_id") final String? id}) = _$_Availability;

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
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AvailabilityCopyWith<_$_Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? beautician,
      String? text,
      double? rating,
      String? user,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beautician = freezed,
    Object? text = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? beautician,
      String? text,
      double? rating,
      String? user,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beautician = freezed,
    Object? text = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Review(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beautician: freezed == beautician
          ? _value.beautician
          : beautician // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {@JsonKey(name: "_id") this.id,
      this.beautician,
      this.text,
      this.rating,
      this.user,
      @JsonKey(name: "__v") this.v});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? beautician;
  @override
  final String? text;
  @override
  final double? rating;
  @override
  final String? user;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'Review(id: $id, beautician: $beautician, text: $text, rating: $rating, user: $user, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beautician, beautician) ||
                other.beautician == beautician) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, beautician, text, rating, user, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: "_id") final String? id,
      final String? beautician,
      final String? text,
      final double? rating,
      final String? user,
      @JsonKey(name: "__v") final int? v}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get beautician;
  @override
  String? get text;
  @override
  double? get rating;
  @override
  String? get user;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceCategory _$ServiceCategoryFromJson(Map<String, dynamic> json) {
  return _ServiceCategory.fromJson(json);
}

/// @nodoc
mixin _$ServiceCategory {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
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
abstract class _$$_ServiceCategoryCopyWith<$Res>
    implements $ServiceCategoryCopyWith<$Res> {
  factory _$$_ServiceCategoryCopyWith(
          _$_ServiceCategory value, $Res Function(_$_ServiceCategory) then) =
      __$$_ServiceCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_ServiceCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_ServiceCategory implements _ServiceCategory {
  const _$_ServiceCategory(
      {@JsonKey(name: "_id") this.id,
      this.name,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v});

  factory _$_ServiceCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceCategoryFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? name;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'ServiceCategory(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdAt, updatedAt, v);

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
  const factory _ServiceCategory(
      {@JsonKey(name: "_id") final String? id,
      final String? name,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_ServiceCategory;

  factory _ServiceCategory.fromJson(Map<String, dynamic> json) =
      _$_ServiceCategory.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get name;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
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
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  bool? get isAvailable => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationInMinutes => throw _privateConstructorUsedError;
  String? get serviceCategory => throw _privateConstructorUsedError;
  String? get serviceType => throw _privateConstructorUsedError;
  String? get beautician => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      bool? isAvailable,
      String? name,
      int? price,
      String? description,
      int? durationInMinutes,
      String? serviceCategory,
      String? serviceType,
      String? beautician,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
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
    Object? isAvailable = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? durationInMinutes = freezed,
    Object? serviceCategory = freezed,
    Object? serviceType = freezed,
    Object? beautician = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      bool? isAvailable,
      String? name,
      int? price,
      String? description,
      int? durationInMinutes,
      String? serviceCategory,
      String? serviceType,
      String? beautician,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
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
    Object? isAvailable = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? durationInMinutes = freezed,
    Object? serviceCategory = freezed,
    Object? serviceType = freezed,
    Object? beautician = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Service(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Service implements _Service {
  const _$_Service(
      {@JsonKey(name: "_id") this.id,
      this.isAvailable,
      this.name,
      this.price,
      this.description,
      this.durationInMinutes,
      this.serviceCategory,
      this.serviceType,
      this.beautician,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v});

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'Service(id: $id, isAvailable: $isAvailable, name: $name, price: $price, description: $description, durationInMinutes: $durationInMinutes, serviceCategory: $serviceCategory, serviceType: $serviceType, beautician: $beautician, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isAvailable,
      name,
      price,
      description,
      durationInMinutes,
      serviceCategory,
      serviceType,
      beautician,
      createdAt,
      updatedAt,
      v);

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
      {@JsonKey(name: "_id") final String? id,
      final bool? isAvailable,
      final String? name,
      final int? price,
      final String? description,
      final int? durationInMinutes,
      final String? serviceCategory,
      final String? serviceType,
      final String? beautician,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
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
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}

BeauticiansFilterRequest _$BeauticiansFilterRequestFromJson(
    Map<String, dynamic> json) {
  return _BeauticiansFilterRequest.fromJson(json);
}

/// @nodoc
mixin _$BeauticiansFilterRequest {
  Filters? get filters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticiansFilterRequestCopyWith<BeauticiansFilterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticiansFilterRequestCopyWith<$Res> {
  factory $BeauticiansFilterRequestCopyWith(BeauticiansFilterRequest value,
          $Res Function(BeauticiansFilterRequest) then) =
      _$BeauticiansFilterRequestCopyWithImpl<$Res, BeauticiansFilterRequest>;
  @useResult
  $Res call({Filters? filters});

  $FiltersCopyWith<$Res>? get filters;
}

/// @nodoc
class _$BeauticiansFilterRequestCopyWithImpl<$Res,
        $Val extends BeauticiansFilterRequest>
    implements $BeauticiansFilterRequestCopyWith<$Res> {
  _$BeauticiansFilterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Filters?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FiltersCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $FiltersCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BeauticiansFilterRequestCopyWith<$Res>
    implements $BeauticiansFilterRequestCopyWith<$Res> {
  factory _$$_BeauticiansFilterRequestCopyWith(
          _$_BeauticiansFilterRequest value,
          $Res Function(_$_BeauticiansFilterRequest) then) =
      __$$_BeauticiansFilterRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filters? filters});

  @override
  $FiltersCopyWith<$Res>? get filters;
}

/// @nodoc
class __$$_BeauticiansFilterRequestCopyWithImpl<$Res>
    extends _$BeauticiansFilterRequestCopyWithImpl<$Res,
        _$_BeauticiansFilterRequest>
    implements _$$_BeauticiansFilterRequestCopyWith<$Res> {
  __$$_BeauticiansFilterRequestCopyWithImpl(_$_BeauticiansFilterRequest _value,
      $Res Function(_$_BeauticiansFilterRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_$_BeauticiansFilterRequest(
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Filters?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeauticiansFilterRequest implements _BeauticiansFilterRequest {
  const _$_BeauticiansFilterRequest({this.filters});

  factory _$_BeauticiansFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticiansFilterRequestFromJson(json);

  @override
  final Filters? filters;

  @override
  String toString() {
    return 'BeauticiansFilterRequest(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticiansFilterRequest &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeauticiansFilterRequestCopyWith<_$_BeauticiansFilterRequest>
      get copyWith => __$$_BeauticiansFilterRequestCopyWithImpl<
          _$_BeauticiansFilterRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticiansFilterRequestToJson(
      this,
    );
  }
}

abstract class _BeauticiansFilterRequest implements BeauticiansFilterRequest {
  const factory _BeauticiansFilterRequest({final Filters? filters}) =
      _$_BeauticiansFilterRequest;

  factory _BeauticiansFilterRequest.fromJson(Map<String, dynamic> json) =
      _$_BeauticiansFilterRequest.fromJson;

  @override
  Filters? get filters;
  @override
  @JsonKey(ignore: true)
  _$$_BeauticiansFilterRequestCopyWith<_$_BeauticiansFilterRequest>
      get copyWith => throw _privateConstructorUsedError;
}

Filters _$FiltersFromJson(Map<String, dynamic> json) {
  return _Filters.fromJson(json);
}

/// @nodoc
mixin _$Filters {
  String? get search => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: "price_range")
  PriceRange? get priceRange => throw _privateConstructorUsedError;
  @JsonKey(name: "service_type")
  String? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "service_category")
  String? get serviceCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_price")
  String? get sortPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltersCopyWith<Filters> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersCopyWith<$Res> {
  factory $FiltersCopyWith(Filters value, $Res Function(Filters) then) =
      _$FiltersCopyWithImpl<$Res, Filters>;
  @useResult
  $Res call(
      {String? search,
      String? location,
      String? date,
      int? avgRating,
      @JsonKey(name: "price_range") PriceRange? priceRange,
      @JsonKey(name: "service_type") String? serviceType,
      @JsonKey(name: "service_category") String? serviceCategory,
      @JsonKey(name: "sort_price") String? sortPrice});

  $PriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class _$FiltersCopyWithImpl<$Res, $Val extends Filters>
    implements $FiltersCopyWith<$Res> {
  _$FiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? location = freezed,
    Object? date = freezed,
    Object? avgRating = freezed,
    Object? priceRange = freezed,
    Object? serviceType = freezed,
    Object? serviceCategory = freezed,
    Object? sortPrice = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCategory: freezed == serviceCategory
          ? _value.serviceCategory
          : serviceCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      sortPrice: freezed == sortPrice
          ? _value.sortPrice
          : sortPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $PriceRangeCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FiltersCopyWith<$Res> implements $FiltersCopyWith<$Res> {
  factory _$$_FiltersCopyWith(
          _$_Filters value, $Res Function(_$_Filters) then) =
      __$$_FiltersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? search,
      String? location,
      String? date,
      int? avgRating,
      @JsonKey(name: "price_range") PriceRange? priceRange,
      @JsonKey(name: "service_type") String? serviceType,
      @JsonKey(name: "service_category") String? serviceCategory,
      @JsonKey(name: "sort_price") String? sortPrice});

  @override
  $PriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class __$$_FiltersCopyWithImpl<$Res>
    extends _$FiltersCopyWithImpl<$Res, _$_Filters>
    implements _$$_FiltersCopyWith<$Res> {
  __$$_FiltersCopyWithImpl(_$_Filters _value, $Res Function(_$_Filters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? location = freezed,
    Object? date = freezed,
    Object? avgRating = freezed,
    Object? priceRange = freezed,
    Object? serviceType = freezed,
    Object? serviceCategory = freezed,
    Object? sortPrice = freezed,
  }) {
    return _then(_$_Filters(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCategory: freezed == serviceCategory
          ? _value.serviceCategory
          : serviceCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      sortPrice: freezed == sortPrice
          ? _value.sortPrice
          : sortPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Filters implements _Filters {
  const _$_Filters(
      {this.search,
      this.location,
      this.date,
      this.avgRating,
      @JsonKey(name: "price_range") this.priceRange,
      @JsonKey(name: "service_type") this.serviceType,
      @JsonKey(name: "service_category") this.serviceCategory,
      @JsonKey(name: "sort_price") this.sortPrice});

  factory _$_Filters.fromJson(Map<String, dynamic> json) =>
      _$$_FiltersFromJson(json);

  @override
  final String? search;
  @override
  final String? location;
  @override
  final String? date;
  @override
  final int? avgRating;
  @override
  @JsonKey(name: "price_range")
  final PriceRange? priceRange;
  @override
  @JsonKey(name: "service_type")
  final String? serviceType;
  @override
  @JsonKey(name: "service_category")
  final String? serviceCategory;
  @override
  @JsonKey(name: "sort_price")
  final String? sortPrice;

  @override
  String toString() {
    return 'Filters(search: $search, location: $location, date: $date, avgRating: $avgRating, priceRange: $priceRange, serviceType: $serviceType, serviceCategory: $serviceCategory, sortPrice: $sortPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filters &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.serviceCategory, serviceCategory) ||
                other.serviceCategory == serviceCategory) &&
            (identical(other.sortPrice, sortPrice) ||
                other.sortPrice == sortPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, search, location, date,
      avgRating, priceRange, serviceType, serviceCategory, sortPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FiltersCopyWith<_$_Filters> get copyWith =>
      __$$_FiltersCopyWithImpl<_$_Filters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiltersToJson(
      this,
    );
  }
}

abstract class _Filters implements Filters {
  const factory _Filters(
      {final String? search,
      final String? location,
      final String? date,
      final int? avgRating,
      @JsonKey(name: "price_range") final PriceRange? priceRange,
      @JsonKey(name: "service_type") final String? serviceType,
      @JsonKey(name: "service_category") final String? serviceCategory,
      @JsonKey(name: "sort_price") final String? sortPrice}) = _$_Filters;

  factory _Filters.fromJson(Map<String, dynamic> json) = _$_Filters.fromJson;

  @override
  String? get search;
  @override
  String? get location;
  @override
  String? get date;
  @override
  int? get avgRating;
  @override
  @JsonKey(name: "price_range")
  PriceRange? get priceRange;
  @override
  @JsonKey(name: "service_type")
  String? get serviceType;
  @override
  @JsonKey(name: "service_category")
  String? get serviceCategory;
  @override
  @JsonKey(name: "sort_price")
  String? get sortPrice;
  @override
  @JsonKey(ignore: true)
  _$$_FiltersCopyWith<_$_Filters> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) {
  return _PriceRange.fromJson(json);
}

/// @nodoc
mixin _$PriceRange {
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
          PriceRange value, $Res Function(PriceRange) then) =
      _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({int? minPrice, int? maxPrice});
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_value.copyWith(
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceRangeCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$_PriceRangeCopyWith(
          _$_PriceRange value, $Res Function(_$_PriceRange) then) =
      __$$_PriceRangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? minPrice, int? maxPrice});
}

/// @nodoc
class __$$_PriceRangeCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$_PriceRange>
    implements _$$_PriceRangeCopyWith<$Res> {
  __$$_PriceRangeCopyWithImpl(
      _$_PriceRange _value, $Res Function(_$_PriceRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_$_PriceRange(
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceRange implements _PriceRange {
  const _$_PriceRange({this.minPrice, this.maxPrice});

  factory _$_PriceRange.fromJson(Map<String, dynamic> json) =>
      _$$_PriceRangeFromJson(json);

  @override
  final int? minPrice;
  @override
  final int? maxPrice;

  @override
  String toString() {
    return 'PriceRange(minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceRange &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceRangeCopyWith<_$_PriceRange> get copyWith =>
      __$$_PriceRangeCopyWithImpl<_$_PriceRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceRangeToJson(
      this,
    );
  }
}

abstract class _PriceRange implements PriceRange {
  const factory _PriceRange({final int? minPrice, final int? maxPrice}) =
      _$_PriceRange;

  factory _PriceRange.fromJson(Map<String, dynamic> json) =
      _$_PriceRange.fromJson;

  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  @JsonKey(ignore: true)
  _$$_PriceRangeCopyWith<_$_PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}
