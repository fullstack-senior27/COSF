import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/services/models/services_model.dart';
import 'package:dartz/dartz.dart';

abstract class ServicesRepo {
  Future<Either<ApiException, ServicesResponseModel>> getAllServices();
}