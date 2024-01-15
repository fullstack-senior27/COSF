// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beautician_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeauticianBalance _$BeauticianBalanceFromJson(Map<String, dynamic> json) {
  return _BeauticianBalance.fromJson(json);
}

/// @nodoc
mixin _$BeauticianBalance {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeauticianBalanceCopyWith<BeauticianBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeauticianBalanceCopyWith<$Res> {
  factory $BeauticianBalanceCopyWith(
          BeauticianBalance value, $Res Function(BeauticianBalance) then) =
      _$BeauticianBalanceCopyWithImpl<$Res, BeauticianBalance>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BeauticianBalanceCopyWithImpl<$Res, $Val extends BeauticianBalance>
    implements $BeauticianBalanceCopyWith<$Res> {
  _$BeauticianBalanceCopyWithImpl(this._value, this._then);

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
abstract class _$$_BeauticianBalanceCopyWith<$Res>
    implements $BeauticianBalanceCopyWith<$Res> {
  factory _$$_BeauticianBalanceCopyWith(_$_BeauticianBalance value,
          $Res Function(_$_BeauticianBalance) then) =
      __$$_BeauticianBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BeauticianBalanceCopyWithImpl<$Res>
    extends _$BeauticianBalanceCopyWithImpl<$Res, _$_BeauticianBalance>
    implements _$$_BeauticianBalanceCopyWith<$Res> {
  __$$_BeauticianBalanceCopyWithImpl(
      _$_BeauticianBalance _value, $Res Function(_$_BeauticianBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeauticianBalance(
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
class _$_BeauticianBalance implements _BeauticianBalance {
  const _$_BeauticianBalance(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_BeauticianBalance.fromJson(Map<String, dynamic> json) =>
      _$$_BeauticianBalanceFromJson(json);

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
    return 'BeauticianBalance(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeauticianBalance &&
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
  _$$_BeauticianBalanceCopyWith<_$_BeauticianBalance> get copyWith =>
      __$$_BeauticianBalanceCopyWithImpl<_$_BeauticianBalance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeauticianBalanceToJson(
      this,
    );
  }
}

abstract class _BeauticianBalance implements BeauticianBalance {
  const factory _BeauticianBalance(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_BeauticianBalance;

  factory _BeauticianBalance.fromJson(Map<String, dynamic> json) =
      _$_BeauticianBalance.fromJson;

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
  _$$_BeauticianBalanceCopyWith<_$_BeauticianBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get totalEarning => throw _privateConstructorUsedError;
  int? get withdrawBalance => throw _privateConstructorUsedError;
  int? get remainingAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int? totalEarning, int? withdrawBalance, int? remainingAmount});
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
    Object? totalEarning = freezed,
    Object? withdrawBalance = freezed,
    Object? remainingAmount = freezed,
  }) {
    return _then(_value.copyWith(
      totalEarning: freezed == totalEarning
          ? _value.totalEarning
          : totalEarning // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawBalance: freezed == withdrawBalance
          ? _value.withdrawBalance
          : withdrawBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
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
  $Res call({int? totalEarning, int? withdrawBalance, int? remainingAmount});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEarning = freezed,
    Object? withdrawBalance = freezed,
    Object? remainingAmount = freezed,
  }) {
    return _then(_$_Data(
      totalEarning: freezed == totalEarning
          ? _value.totalEarning
          : totalEarning // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawBalance: freezed == withdrawBalance
          ? _value.withdrawBalance
          : withdrawBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.totalEarning, this.withdrawBalance, this.remainingAmount});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? totalEarning;
  @override
  final int? withdrawBalance;
  @override
  final int? remainingAmount;

  @override
  String toString() {
    return 'Data(totalEarning: $totalEarning, withdrawBalance: $withdrawBalance, remainingAmount: $remainingAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.totalEarning, totalEarning) ||
                other.totalEarning == totalEarning) &&
            (identical(other.withdrawBalance, withdrawBalance) ||
                other.withdrawBalance == withdrawBalance) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalEarning, withdrawBalance, remainingAmount);

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
      {final int? totalEarning,
      final int? withdrawBalance,
      final int? remainingAmount}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get totalEarning;
  @override
  int? get withdrawBalance;
  @override
  int? get remainingAmount;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
