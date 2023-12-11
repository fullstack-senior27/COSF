// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianRegisterRequestModel _$$_BeauticianRegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianRegisterRequestModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_BeauticianRegisterRequestModelToJson(
        _$_BeauticianRegisterRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };

_$_BeauticianRegisterResponseModel _$$_BeauticianRegisterResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianRegisterResponseModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_BeauticianRegisterResponseModelToJson(
        _$_BeauticianRegisterResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      image: json['image'],
      role: json['role'] as String?,
      photos: json['photos'] as List<dynamic>?,
      profession: json['profession'] as String?,
      about: json['about'],
      website: json['website'],
      isEmailVerified: json['isEmailVerified'] as bool?,
      speciality: json['speciality'] as List<dynamic>?,
      services: json['services'] as List<dynamic>?,
      serviceCategories: json['serviceCategories'] as List<dynamic>?,
      reviews: json['reviews'] as List<dynamic>?,
      products: json['products'] as List<dynamic>?,
      accountId: json['accountId'] as String?,
      blockedClients: json['blockedClients'] as List<dynamic>?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as List<dynamic>?,
      availability: json['availability'] as List<dynamic>?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'image': instance.image,
      'role': instance.role,
      'photos': instance.photos,
      'profession': instance.profession,
      'about': instance.about,
      'website': instance.website,
      'isEmailVerified': instance.isEmailVerified,
      'speciality': instance.speciality,
      'services': instance.services,
      'serviceCategories': instance.serviceCategories,
      'reviews': instance.reviews,
      'products': instance.products,
      'accountId': instance.accountId,
      'blockedClients': instance.blockedClients,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'availability': instance.availability,
      'id': instance.id,
    };
