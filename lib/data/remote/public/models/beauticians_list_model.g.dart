// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beauticians_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeauticiansListResponse _$$_BeauticiansListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticiansListResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticiansListResponseToJson(
        _$_BeauticiansListResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
      limit: json['limit'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'results': instance.results,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'limit': instance.limit,
      'totalResults': instance.totalResults,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      role: json['role'] as String?,
      photos: json['photos'] as List<dynamic>?,
      profession: json['profession'] as String?,
      about: json['about'],
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
      availableDays: (json['availableDays'] as List<dynamic>?)
          ?.map((e) => AvailableDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      afternoon: (json['afternoon'] as List<dynamic>?)
          ?.map((e) => Afternoon.fromJson(e as Map<String, dynamic>))
          .toList(),
      evening: (json['evening'] as List<dynamic>?)
          ?.map((e) => Afternoon.fromJson(e as Map<String, dynamic>))
          .toList(),
      morning: (json['morning'] as List<dynamic>?)
          ?.map((e) => Afternoon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
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
      'availableDays': instance.availableDays,
      'afternoon': instance.afternoon,
      'evening': instance.evening,
      'morning': instance.morning,
    };

_$_AvailableDay _$$_AvailableDayFromJson(Map<String, dynamic> json) =>
    _$_AvailableDay(
      isAvailable: json['isAvailable'] as bool?,
      day: json['day'] as String?,
      id: json['_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_AvailableDayToJson(_$_AvailableDay instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'day': instance.day,
      '_id': instance.id,
      'date': instance.date?.toIso8601String(),
    };

_$_Afternoon _$$_AfternoonFromJson(Map<String, dynamic> json) => _$_Afternoon(
      isBooked: json['isBooked'] as bool?,
      time: json['time'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_AfternoonToJson(_$_Afternoon instance) =>
    <String, dynamic>{
      'isBooked': instance.isBooked,
      'time': instance.time,
      '_id': instance.id,
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
      rating: (json['rating'] as num?)?.toDouble(),
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

_$_BeauticiansFilterRequest _$$_BeauticiansFilterRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BeauticiansFilterRequest(
      filters: json['filters'] == null
          ? null
          : Filters.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeauticiansFilterRequestToJson(
        _$_BeauticiansFilterRequest instance) =>
    <String, dynamic>{
      'filters': instance.filters,
    };

_$_Filters _$$_FiltersFromJson(Map<String, dynamic> json) => _$_Filters(
      search: json['search'] as String?,
      location: json['location'] as String?,
      date: json['date'] as String?,
      avgRating: json['avgRating'] as int?,
      priceRange: json['price_range'] == null
          ? null
          : PriceRange.fromJson(json['price_range'] as Map<String, dynamic>),
      serviceType: json['service_type'] as String?,
      serviceCategory: json['service_category'] as String?,
      sortPrice: json['sort_price'] as String?,
    );

Map<String, dynamic> _$$_FiltersToJson(_$_Filters instance) =>
    <String, dynamic>{
      'search': instance.search,
      'location': instance.location,
      'date': instance.date,
      'avgRating': instance.avgRating,
      'price_range': instance.priceRange,
      'service_type': instance.serviceType,
      'service_category': instance.serviceCategory,
      'sort_price': instance.sortPrice,
    };

_$_PriceRange _$$_PriceRangeFromJson(Map<String, dynamic> json) =>
    _$_PriceRange(
      minPrice: json['minPrice'] as int?,
      maxPrice: json['maxPrice'] as int?,
    );

Map<String, dynamic> _$$_PriceRangeToJson(_$_PriceRange instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
    };
