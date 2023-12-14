// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianUpdateProfileRequest _$$_BeauticianUpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianUpdateProfileRequest(
      address: json['address'] as String?,
      speciality: (json['speciality'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profession: json['profession'] as String?,
      website: json['website'] as String?,
      phone: json['phone'] as String?,
      about: json['about'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_BeauticianUpdateProfileRequestToJson(
        _$_BeauticianUpdateProfileRequest instance) =>
    <String, dynamic>{
      'address': instance.address,
      'speciality': instance.speciality,
      'profession': instance.profession,
      'website': instance.website,
      'phone': instance.phone,
      'about': instance.about,
      'email': instance.email,
    };

_$_BeauticianUpdateProfileResponse _$$_BeauticianUpdateProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianUpdateProfileResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticianUpdateProfileResponseToJson(
        _$_BeauticianUpdateProfileResponse instance) =>
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
      about: json['about'] as String?,
      website: json['website'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      speciality: (json['speciality'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceCategories: (json['serviceCategories'] as List<dynamic>?)
          ?.map((e) => ServiceCategory.fromJson(e as Map<String, dynamic>))
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
          ?.map((e) => Availability.fromJson(e as Map<String, dynamic>))
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

_$_Availability _$$_AvailabilityFromJson(Map<String, dynamic> json) =>
    _$_Availability(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_AvailabilityToJson(_$_Availability instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isAvailable': instance.isAvailable,
      'id': instance.id,
    };

_$_ServiceCategory _$$_ServiceCategoryFromJson(Map<String, dynamic> json) =>
    _$_ServiceCategory(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceCategoryToJson(_$_ServiceCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      isAvailable: json['isAvailable'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      serviceCategory: json['serviceCategory'] as String?,
      serviceType: json['serviceType'] as String?,
      beautician: json['beautician'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'durationInMinutes': instance.durationInMinutes,
      'serviceCategory': instance.serviceCategory,
      'serviceType': instance.serviceType,
      'beautician': instance.beautician,
      'id': instance.id,
    };
