// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_blogs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelatedBlogsResponse _$RelatedBlogsResponseFromJson(Map<String, dynamic> json) {
  return _RelatedBlogsResponse.fromJson(json);
}

/// @nodoc
mixin _$RelatedBlogsResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedBlogsResponseCopyWith<RelatedBlogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedBlogsResponseCopyWith<$Res> {
  factory $RelatedBlogsResponseCopyWith(RelatedBlogsResponse value,
          $Res Function(RelatedBlogsResponse) then) =
      _$RelatedBlogsResponseCopyWithImpl<$Res, RelatedBlogsResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Datum> data});
}

/// @nodoc
class _$RelatedBlogsResponseCopyWithImpl<$Res,
        $Val extends RelatedBlogsResponse>
    implements $RelatedBlogsResponseCopyWith<$Res> {
  _$RelatedBlogsResponseCopyWithImpl(this._value, this._then);

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
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedBlogsResponseCopyWith<$Res>
    implements $RelatedBlogsResponseCopyWith<$Res> {
  factory _$$_RelatedBlogsResponseCopyWith(_$_RelatedBlogsResponse value,
          $Res Function(_$_RelatedBlogsResponse) then) =
      __$$_RelatedBlogsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Datum> data});
}

/// @nodoc
class __$$_RelatedBlogsResponseCopyWithImpl<$Res>
    extends _$RelatedBlogsResponseCopyWithImpl<$Res, _$_RelatedBlogsResponse>
    implements _$$_RelatedBlogsResponseCopyWith<$Res> {
  __$$_RelatedBlogsResponseCopyWithImpl(_$_RelatedBlogsResponse _value,
      $Res Function(_$_RelatedBlogsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_RelatedBlogsResponse(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedBlogsResponse implements _RelatedBlogsResponse {
  const _$_RelatedBlogsResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required final List<Datum> data})
      : _data = data;

  factory _$_RelatedBlogsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedBlogsResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  final List<Datum> _data;
  @override
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RelatedBlogsResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedBlogsResponse &&
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
  _$$_RelatedBlogsResponseCopyWith<_$_RelatedBlogsResponse> get copyWith =>
      __$$_RelatedBlogsResponseCopyWithImpl<_$_RelatedBlogsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedBlogsResponseToJson(
      this,
    );
  }
}

abstract class _RelatedBlogsResponse implements RelatedBlogsResponse {
  const factory _RelatedBlogsResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final List<Datum> data}) = _$_RelatedBlogsResponse;

  factory _RelatedBlogsResponse.fromJson(Map<String, dynamic> json) =
      _$_RelatedBlogsResponse.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  List<Datum> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedBlogsResponseCopyWith<_$_RelatedBlogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  BlogCategory? get blogCategory => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? description,
      BlogCategory? blogCategory,
      String? author,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});

  $BlogCategoryCopyWith<$Res>? get blogCategory;
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
    Object? title = freezed,
    Object? description = freezed,
    Object? blogCategory = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as BlogCategory?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? description,
      BlogCategory? blogCategory,
      String? author,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});

  @override
  $BlogCategoryCopyWith<$Res>? get blogCategory;
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
    Object? title = freezed,
    Object? description = freezed,
    Object? blogCategory = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as BlogCategory?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
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
class _$_Datum implements _Datum {
  const _$_Datum(
      {@JsonKey(name: "_id") this.id,
      this.title,
      this.description,
      this.blogCategory,
      this.author,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final BlogCategory? blogCategory;
  @override
  final String? author;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'Datum(id: $id, title: $title, description: $description, blogCategory: $blogCategory, author: $author, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
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
      {@JsonKey(name: "_id") final String? id,
      final String? title,
      final String? description,
      final BlogCategory? blogCategory,
      final String? author,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  BlogCategory? get blogCategory;
  @override
  String? get author;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

BlogCategory _$BlogCategoryFromJson(Map<String, dynamic> json) {
  return _BlogCategory.fromJson(json);
}

/// @nodoc
mixin _$BlogCategory {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
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
abstract class _$$_BlogCategoryCopyWith<$Res>
    implements $BlogCategoryCopyWith<$Res> {
  factory _$$_BlogCategoryCopyWith(
          _$_BlogCategory value, $Res Function(_$_BlogCategory) then) =
      __$$_BlogCategoryCopyWithImpl<$Res>;
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
class __$$_BlogCategoryCopyWithImpl<$Res>
    extends _$BlogCategoryCopyWithImpl<$Res, _$_BlogCategory>
    implements _$$_BlogCategoryCopyWith<$Res> {
  __$$_BlogCategoryCopyWithImpl(
      _$_BlogCategory _value, $Res Function(_$_BlogCategory) _then)
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
    return _then(_$_BlogCategory(
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
class _$_BlogCategory implements _BlogCategory {
  const _$_BlogCategory(
      {@JsonKey(name: "_id") this.id,
      this.name,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "__v") this.v});

  factory _$_BlogCategory.fromJson(Map<String, dynamic> json) =>
      _$$_BlogCategoryFromJson(json);

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
      {@JsonKey(name: "_id") final String? id,
      final String? name,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$_BlogCategory;

  factory _BlogCategory.fromJson(Map<String, dynamic> json) =
      _$_BlogCategory.fromJson;

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
  _$$_BlogCategoryCopyWith<_$_BlogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
