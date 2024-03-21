import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart';
import 'package:cosmetropolis/data/remote/services/models/beautician_detail_model.dart';
import 'package:cosmetropolis/data/remote/services/models/services_model.dart';
import 'package:cosmetropolis/data/remote/services/services_repo.dart';
import 'package:cosmetropolis/utils/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ServicesRepoImpl implements ServicesRepo {
  @override
  Future<Either<ApiException, ServicesResponseModel>> getAllServices() async {
    try {
      final Response response = await ApiClient()
          .post("${AppConstants.baseUrl}beautician/get-all-service", {});
      print(response.data.toString());
      return Right(ServicesResponseModel.fromJson(
          response.data as Map<String, dynamic>,),);
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticiansListResponse>> getBeauticiansByFilter(
    BeauticiansFilterRequest beauticiansFilterRequestModel,
  ) async {
    try {
      final Response response = await ApiClient().post(
          "${AppConstants.baseUrl}beautician/list",
          beauticiansFilterRequestModel.toJson(),);
      print(response.data.toString());
      return Right(BeauticiansListResponse.fromJson(
          response.data as Map<String, dynamic>,),);
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianDetailResponse>> getBeauticianDetails(
    BeauticianDetailRequest request,
  ) async {
    try {
      final Response response = await ApiClient()
          .post("${AppConstants.baseUrl}beautician/profile", request.toJson());
      print(response.data.toString());
      return Right(BeauticianDetailResponse.fromJson(
          response.data as Map<String, dynamic>,),);
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
