// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianAvailabilityRequest _$$_BeauticianAvailabilityRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianAvailabilityRequest(
      availableDays: (json['availableDays'] as List<dynamic>?)
          ?.map((e) => Availability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BeauticianAvailabilityRequestToJson(
        _$_BeauticianAvailabilityRequest instance) =>
    <String, dynamic>{
      'availableDays': instance.availableDays,
    };

_$_Availability _$$_AvailabilityFromJson(Map<String, dynamic> json) =>
    _$_Availability(
      day: json['day'] as String?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$_AvailabilityToJson(_$_Availability instance) =>
    <String, dynamic>{
      'day': instance.day,
      'isAvailable': instance.isAvailable,
    };

_$_BeauticianAvailabilityResponse _$$_BeauticianAvailabilityResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianAvailabilityResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticianAvailabilityResponseToJson(
        _$_BeauticianAvailabilityResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      image: json['image'],
      role: json['role'] as String?,
      photos: json['photos'] as List<dynamic>?,
      profession: json['profession'] as String?,
      about: json['about'],
      website: json['website'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      speciality: (json['speciality'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceCategories: (json['serviceCategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reviews: json['reviews'] as List<dynamic>?,
      products: json['products'] as List<dynamic>?,
      accountId: json['accountId'] as String?,
      blockedClients: json['blockedClients'] as List<dynamic>?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as List<dynamic>?,
      availability: (json['availability'] as List<dynamic>?)
          ?.map((e) => Availabilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] as String?,
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
      'address': instance.address,
      'id': instance.id,
    };

_$_Availabilities _$$_AvailabilitiesFromJson(Map<String, dynamic> json) =>
    _$_Availabilities(
      date: json['date'],
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_AvailabilitiesToJson(_$_Availabilities instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isAvailable': instance.isAvailable,
      'id': instance.id,
    };
