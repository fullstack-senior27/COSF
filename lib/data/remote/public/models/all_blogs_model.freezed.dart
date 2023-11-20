// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_blogs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogCategoryRequest _$BlogCategoryRequestFromJson(Map<String, dynamic> json) {
  return _BlogCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$BlogCategoryRequest {
  String? get blogCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCategoryRequestCopyWith<BlogCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCategoryRequestCopyWith<$Res> {
  factory $BlogCategoryRequestCopyWith(
          BlogCategoryRequest value, $Res Function(BlogCategoryRequest) then) =
      _$BlogCategoryRequestCopyWithImpl<$Res, BlogCategoryRequest>;
  @useResult
  $Res call({String? blogCategory});
}

/// @nodoc
class _$BlogCategoryRequestCopyWithImpl<$Res, $Val extends BlogCategoryRequest>
    implements $BlogCategoryRequestCopyWith<$Res> {
  _$BlogCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogCategory = freezed,
  }) {
    return _then(_value.copyWith(
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlogCategoryRequestCopyWith<$Res>
    implements $BlogCategoryRequestCopyWith<$Res> {
  factory _$$_BlogCategoryRequestCopyWith(_$_BlogCategoryRequest value,
          $Res Function(_$_BlogCategoryRequest) then) =
      __$$_BlogCategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? blogCategory});
}

/// @nodoc
class __$$_BlogCategoryRequestCopyWithImpl<$Res>
    extends _$BlogCategoryRequestCopyWithImpl<$Res, _$_BlogCategoryRequest>
    implements _$$_BlogCategoryRequestCopyWith<$Res> {
  __$$_BlogCategoryRequestCopyWithImpl(_$_BlogCategoryRequest _value,
      $Res Function(_$_BlogCategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogCategory = freezed,
  }) {
    return _then(_$_BlogCategoryRequest(
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlogCategoryRequest implements _BlogCategoryRequest {
  const _$_BlogCategoryRequest({this.blogCategory});

  factory _$_BlogCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BlogCategoryRequestFromJson(json);

  @override
  final String? blogCategory;

  @override
  String toString() {
    return 'BlogCategoryRequest(blogCategory: $blogCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogCategoryRequest &&
            (identical(other.blogCategory, blogCategory) ||
                other.blogCategory == blogCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blogCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlogCategoryRequestCopyWith<_$_BlogCategoryRequest> get copyWith =>
      __$$_BlogCategoryRequestCopyWithImpl<_$_BlogCategoryRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogCategoryRequestToJson(
      this,
    );
  }
}

abstract class _BlogCategoryRequest implements BlogCategoryRequest {
  const factory _BlogCategoryRequest({final String? blogCategory}) =
      _$_BlogCategoryRequest;

  factory _BlogCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_BlogCategoryRequest.fromJson;

  @override
  String? get blogCategory;
  @override
  @JsonKey(ignore: true)
  _$$_BlogCategoryRequestCopyWith<_$_BlogCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

AllBlogsResponse _$AllBlogsResponseFromJson(Map<String, dynamic> json) {
  return _AllBlogsResponse.fromJson(json);
}

/// @nodoc
mixin _$AllBlogsResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllBlogsResponseCopyWith<AllBlogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllBlogsResponseCopyWith<$Res> {
  factory $AllBlogsResponseCopyWith(
          AllBlogsResponse value, $Res Function(AllBlogsResponse) then) =
      _$AllBlogsResponseCopyWithImpl<$Res, AllBlogsResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AllBlogsResponseCopyWithImpl<$Res, $Val extends AllBlogsResponse>
    implements $AllBlogsResponseCopyWith<$Res> {
  _$AllBlogsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_AllBlogsResponseCopyWith<$Res>
    implements $AllBlogsResponseCopyWith<$Res> {
  factory _$$_AllBlogsResponseCopyWith(
          _$_AllBlogsResponse value, $Res Function(_$_AllBlogsResponse) then) =
      __$$_AllBlogsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AllBlogsResponseCopyWithImpl<$Res>
    extends _$AllBlogsResponseCopyWithImpl<$Res, _$_AllBlogsResponse>
    implements _$$_AllBlogsResponseCopyWith<$Res> {
  __$$_AllBlogsResponseCopyWithImpl(
      _$_AllBlogsResponse _value, $Res Function(_$_AllBlogsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_AllBlogsResponse(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllBlogsResponse implements _AllBlogsResponse {
  const _$_AllBlogsResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_AllBlogsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AllBlogsResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  @override
  final Data data;

  @override
  String toString() {
    return 'AllBlogsResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllBlogsResponse &&
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
  _$$_AllBlogsResponseCopyWith<_$_AllBlogsResponse> get copyWith =>
      __$$_AllBlogsResponseCopyWithImpl<_$_AllBlogsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllBlogsResponseToJson(
      this,
    );
  }
}

abstract class _AllBlogsResponse implements AllBlogsResponse {
  const factory _AllBlogsResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_AllBlogsResponse;

  factory _AllBlogsResponse.fromJson(Map<String, dynamic> json) =
      _$_AllBlogsResponse.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_AllBlogsResponseCopyWith<_$_AllBlogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Result> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

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
      int totalPages,
      int currentPage,
      int limit,
      int totalResults});
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
    Object? totalPages = null,
    Object? currentPage = null,
    Object? limit = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
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
      int totalPages,
      int currentPage,
      int limit,
      int totalResults});
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
    Object? totalPages = null,
    Object? currentPage = null,
    Object? limit = null,
    Object? totalResults = null,
  }) {
    return _then(_$_Data(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required final List<Result> results,
      required this.totalPages,
      required this.currentPage,
      required this.limit,
      required this.totalResults})
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
  final int totalPages;
  @override
  final int currentPage;
  @override
  final int limit;
  @override
  final int totalResults;

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
      required final int totalPages,
      required final int currentPage,
      required final int limit,
      required final int totalResults}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Result> get results;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  int get limit;
  @override
  int get totalResults;
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
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "blog_category")
  BlogCategory? get blogCategory => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String id,
      String title,
      String description,
      @JsonKey(name: "blog_category") BlogCategory? blogCategory,
      String? author,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: "__v") int v});

  $BlogCategoryCopyWith<$Res>? get blogCategory;
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
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? blogCategory = freezed,
    Object? author = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as BlogCategory?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlogCategoryCopyWith<$Res>? get blogCategory {
    if (_value.blogCategory == null) {
      return null;
    }

    return $BlogCategoryCopyWith<$Res>(_value.blogCategory!, (value) {
      return _then(_value.copyWith(blogCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String title,
      String description,
      @JsonKey(name: "blog_category") BlogCategory? blogCategory,
      String? author,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: "__v") int v});

  @override
  $BlogCategoryCopyWith<$Res>? get blogCategory;
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
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? blogCategory = freezed,
    Object? author = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$_Result(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as BlogCategory?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required this.description,
      @JsonKey(name: "blog_category") required this.blogCategory,
      this.author,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: "__v") required this.v});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: "blog_category")
  final BlogCategory? blogCategory;
  @override
  final String? author;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'Result(id: $id, title: $title, description: $description, blogCategory: $blogCategory, author: $author, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.blogCategory, blogCategory) ||
                other.blogCategory == blogCategory) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      blogCategory, author, createdAt, updatedAt, v);

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
      {@JsonKey(name: "_id") required final String id,
      required final String title,
      required final String description,
      @JsonKey(name: "blog_category") required final BlogCategory? blogCategory,
      final String? author,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: "blog_category")
  BlogCategory? get blogCategory;
  @override
  String? get author;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

BlogCategory _$BlogCategoryFromJson(Map<String, dynamic> json) {
  return _BlogCategory.fromJson(json);
}

/// @nodoc
mixin _$BlogCategory {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCategoryCopyWith<BlogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCategoryCopyWith<$Res> {
  factory $BlogCategoryCopyWith(
          BlogCategory value, $Res Function(BlogCategory) then) =
      _$BlogCategoryCopyWithImpl<$Res, BlogCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$BlogCategoryCopyWithImpl<$Res, $Val extends BlogCategory>
    implements $BlogCategoryCopyWith<$Res> {
  _$BlogCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlogCategoryCopyWith<$Res>
    implements $BlogCategoryCopyWith<$Res> {
  factory _$$_BlogCategoryCopyWith(
          _$_BlogCategory value, $Res Function(_$_BlogCategory) then) =
      __$$_BlogCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$_BlogCategoryCopyWithImpl<$Res>
    extends _$BlogCategoryCopyWithImpl<$Res, _$_BlogCategory>
    implements _$$_BlogCategoryCopyWith<$Res> {
  __$$_BlogCategoryCopyWithImpl(
      _$_BlogCategory _value, $Res Function(_$_BlogCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$_BlogCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlogCategory implements _BlogCategory {
  const _$_BlogCategory(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: "__v") required this.v});

  factory _$_BlogCategory.fromJson(Map<String, dynamic> json) =>
      _$$_BlogCategoryFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'BlogCategory(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogCategory &&
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
  _$$_BlogCategoryCopyWith<_$_BlogCategory> get copyWith =>
      __$$_BlogCategoryCopyWithImpl<_$_BlogCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogCategoryToJson(
      this,
    );
  }
}

abstract class _BlogCategory implements BlogCategory {
  const factory _BlogCategory(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$_BlogCategory;

  factory _BlogCategory.fromJson(Map<String, dynamic> json) =
      _$_BlogCategory.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$_BlogCategoryCopyWith<_$_BlogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
