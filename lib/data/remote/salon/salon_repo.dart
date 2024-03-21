import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/salon/models/salon_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalonRepo {
  Future<Either<ApiException, Salon>> getSalonById(String salonId);
  Future<Either<ApiException, SalonResponseModel>> getAllSalons(String searchKey);
}