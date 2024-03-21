// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beautician_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianBalance _$$_BeauticianBalanceFromJson(Map<String, dynamic> json) =>
    _$_BeauticianBalance(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticianBalanceToJson(
        _$_BeauticianBalance instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      totalEarning: json['totalEarning'] as int?,
      withdrawBalance: json['withdrawBalance'] as int?,
      remainingAmount: json['remainingAmount'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'totalEarning': instance.totalEarning,
      'withdrawBalance': instance.withdrawBalance,
      'remainingAmount': instance.remainingAmount,
    };
