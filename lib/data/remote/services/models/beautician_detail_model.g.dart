// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beautician_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticianDetailRequest _$$_BeauticianDetailRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianDetailRequest(
      beauticianId: json['beauticianId'] as String?,
    );

Map<String, dynamic> _$$_BeauticianDetailRequestToJson(
        _$_BeauticianDetailRequest instance) =>
    <String, dynamic>{
      'beauticianId': instance.beauticianId,
    };

_$_BeauticianDetailResponse _$$_BeauticianDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticianDetailResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticianDetailResponseToJson(
        _$_BeauticianDetailResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      role: json['role'] as String?,
      photos: json['photos'] as List<dynamic>?,
      profession: json['profession'] as String?,
      about: json['about'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      speciality: json['speciality'] as List<dynamic>?,
      accountId: json['accountId'] as String?,
      blockedClients: json['blockedClients'] as List<dynamic>?,
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
      avgRating: json['avgRating'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'role': instance.role,
      'photos': instance.photos,
      'profession': instance.profession,
      'about': instance.about,
      'website': instance.website,
      'address': instance.address,
      'isEmailVerified': instance.isEmailVerified,
      'speciality': instance.speciality,
      'accountId': instance.accountId,
      'blockedClients': instance.blockedClients,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'availability': instance.availability,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
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
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
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

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      image: json['image'],
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      customerId: json['customerId'] as String?,
      isOffline: json['isOffline'] as bool?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'image': instance.image,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'customerId': instance.customerId,
      'isOffline': instance.isOffline,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'id': instance.id,
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
      id: json['id'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      durationInMinutes: json['durationInMinutes'] as int?,
      serviceCategory: json['serviceCategory'] == null
          ? null
          : ServiceCategoryClass.fromJson(
              json['serviceCategory'] as Map<String, dynamic>),
      serviceType: json['serviceType'] == null
          ? null
          : ServiceCategoryClass.fromJson(
              json['serviceType'] as Map<String, dynamic>),
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
      'id': instance.id,
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

_$_ServiceCategoryClass _$$_ServiceCategoryClassFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceCategoryClass(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ServiceCategoryClassToJson(
        _$_ServiceCategoryClass instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
