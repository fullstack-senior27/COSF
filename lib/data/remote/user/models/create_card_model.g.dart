// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCardRequest _$$_CreateCardRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateCardRequest(
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_CreateCardRequestToJson(
        _$_CreateCardRequest instance) =>
    <String, dynamic>{
      'card': instance.card,
      'email': instance.email,
    };

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      number: json['number'] as String?,
      expMonth: json['expMonth'] as int?,
      expYear: json['expYear'] as int?,
      cvc: json['cvc'] as String?,
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'number': instance.number,
      'expMonth': instance.expMonth,
      'expYear': instance.expYear,
      'cvc': instance.cvc,
    };

_$_CreateCardResponse _$$_CreateCardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCardResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateCardResponseToJson(
        _$_CreateCardResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
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
