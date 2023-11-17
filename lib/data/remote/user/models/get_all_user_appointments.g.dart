// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_user_appointments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllUserAppointments _$$_GetAllUserAppointmentsFromJson(
        Map<String, dynamic> json) =>
    _$_GetAllUserAppointments(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetAllUserAppointmentsToJson(
        _$_GetAllUserAppointments instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
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
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      id: json['id'] as String?,
      beautician: json['beautician'] == null
          ? null
          : Beautician.fromJson(json['beautician'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      zipcode: json['zipcode'] as String?,
      user: json['user'] as String?,
      amount: json['amount'] as int?,
      startTime: json['startTime'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'services': instance.services,
      'status': instance.status,
      'paymentStatus': instance.paymentStatus,
      'id': instance.id,
      'beautician': instance.beautician,
      'date': instance.date?.toIso8601String(),
      'zipcode': instance.zipcode,
      'user': instance.user,
      'amount': instance.amount,
      'startTime': instance.startTime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };

_$_Beautician _$$_BeauticianFromJson(Map<String, dynamic> json) =>
    _$_Beautician(
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

Map<String, dynamic> _$$_BeauticianToJson(_$_Beautician instance) =>
    <String, dynamic>{
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
