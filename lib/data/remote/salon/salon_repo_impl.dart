import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/salon/models/salon_model.dart';
import 'package:cosmetropolis/data/remote/salon/salon_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SalonRepoImpl implements SalonRepo {

  @override
  Future<Either<ApiException, SalonResponseModel>> getAllSalons(String searchKey) {
    // TODO: implement getAllSalons
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, Salon>> getSalonById(String salonId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}beautician/get-salon-by-id/$salonId");
      print("Sucess ====> ${response.data}");
      return Right(Salon.fromJson(response.data['data'] as Map<String, dynamic>));
    } catch(e) {
      print("Error =====> $e");
      return Left(ApiException(e.toString()));
    }  
  }

}