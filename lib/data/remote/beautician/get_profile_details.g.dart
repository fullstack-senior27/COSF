// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianProfileRequest _$$_BeauticianProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianProfileRequest(
      beauticianId: json['beauticianId'] as String?,
    );

Map<String, dynamic> _$$_BeauticianProfileRequestToJson(
        _$_BeauticianProfileRequest instance) =>
    <String, dynamic>{
      'beauticianId': instance.beauticianId,
    };

_$_BeauticianProfileResponse _$$_BeauticianProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianProfileResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Datum.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticianProfileResponseToJson(
        _$_BeauticianProfileResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as String?,
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
      accountId: json['accountId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as List<dynamic>?,
      availability: (json['availability'] as List<dynamic>?)
          ?.map((e) => Availability.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      address: json['address'] as String?,
      blockedClients: (json['blockedClients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] as List<dynamic>?,
      serviceCategories: (json['serviceCategories'] as List<dynamic>?)
          ?.map((e) => ServiceCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingCount: json['ratingCount'] as int?,
      avgRating: (json['avgRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'role': instance.role,
      'photos': instance.photos,
      'profession': instance.profession,
      'about': instance.about,
      'website': instance.website,
      'isEmailVerified': instance.isEmailVerified,
      'speciality': instance.speciality,
      'accountId': instance.accountId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'availability': instance.availability,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'address': instance.address,
      'blockedClients': instance.blockedClients,
      'services': instance.services,
      'products': instance.products,
      'serviceCategories': instance.serviceCategories,
      'reviews': instance.reviews,
      'ratingCount': instance.ratingCount,
      'avgRating': instance.avgRating,
    };

_$_Availability _$$_AvailabilityFromJson(Map<String, dynamic> json) =>
    _$_Availability(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_AvailabilityToJson(_$_Availability instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isAvailable': instance.isAvailable,
      '_id': instance.id,
    };

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      id: json['_id'] as String?,
      beautician: json['beautician'] as String?,
      text: json['text'] as String?,
      rating: json['rating'] as int?,
      user: json['user'] as String?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      '_id': instance.id,
      'beautician': instance.beautician,
      'text': instance.text,
      'rating': instance.rating,
      'user': instance.user,
      '__v': instance.v,
    };

_$_ServiceCategory _$$_ServiceCategoryFromJson(Map<String, dynamic> json) =>
    _$_ServiceCategory(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_ServiceCategoryToJson(_$_ServiceCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['_id'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      serviceCategory: json['serviceCategory'] as String?,
      serviceType: json['serviceType'] as String?,
      beautician: json['beautician'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'durationInMinutes': instance.durationInMinutes,
      'serviceCategory': instance.serviceCategory,
      'serviceType': instance.serviceType,
      'beautician': instance.beautician,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
