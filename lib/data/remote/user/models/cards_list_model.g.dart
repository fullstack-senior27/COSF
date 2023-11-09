// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardsListResponse _$$_CardsListResponseFromJson(Map<String, dynamic> json) =>
    _$_CardsListResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CardsListResponseToJson(
        _$_CardsListResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as String?,
      object: json['object'] as String?,
      addressCity: json['addressCity'],
      addressCountry: json['addressCountry'],
      addressLine1: json['addressLine1'],
      addressLine1Check: json['addressLine1Check'],
      addressLine2: json['addressLine2'],
      addressState: json['addressState'],
      addressZip: json['addressZip'],
      addressZipCheck: json['addressZipCheck'],
      brand: json['brand'] as String?,
      country: json['country'] as String?,
      customer: json['customer'] as String?,
      cvcCheck: json['cvcCheck'] as String?,
      dynamicLast4: json['dynamicLast4'],
      expMonth: json['expMonth'] as int?,
      expYear: json['expYear'] as int?,
      fingerprint: json['fingerprint'] as String?,
      funding: json['funding'] as String?,
      last4: json['last4'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      name: json['name'],
      tokenizationMethod: json['tokenizationMethod'],
      wallet: json['wallet'],
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'addressCity': instance.addressCity,
      'addressCountry': instance.addressCountry,
      'addressLine1': instance.addressLine1,
      'addressLine1Check': instance.addressLine1Check,
      'addressLine2': instance.addressLine2,
      'addressState': instance.addressState,
      'addressZip': instance.addressZip,
      'addressZipCheck': instance.addressZipCheck,
      'brand': instance.brand,
      'country': instance.country,
      'customer': instance.customer,
      'cvcCheck': instance.cvcCheck,
      'dynamicLast4': instance.dynamicLast4,
      'expMonth': instance.expMonth,
      'expYear': instance.expYear,
      'fingerprint': instance.fingerprint,
      'funding': instance.funding,
      'last4': instance.last4,
      'metadata': instance.metadata,
      'name': instance.name,
      'tokenizationMethod': instance.tokenizationMethod,
      'wallet': instance.wallet,
    };

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => _$_Metadata();

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{};
