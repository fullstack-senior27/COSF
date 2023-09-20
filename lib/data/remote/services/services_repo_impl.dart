import 'dart:developer';

import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/services/models/services_model.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/services/services_repo.dart';
import 'package:cosmetropolis/utils/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ServicesRepoImpl implements ServicesRepo {

  @override
  Future<Either<ApiException, ServicesResponseModel>> getAllServices() async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}beautician/get-all-service", {});
      print(response.data.toString());
      return Right(ServicesResponseModel.fromJson(response.data as Map<String, dynamic>));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}