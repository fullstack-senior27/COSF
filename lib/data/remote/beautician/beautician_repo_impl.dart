import 'dart:developer';

import 'package:cosmetropolis/core/api_client.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/beautician/beautician_repo.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:dartz/dartz.dart';

class BeauticianRepoImpl implements BeauticianRepo {
  final ApiClient _apiClient;

  BeauticianRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, BeauticianRegisterResponseModel>>
      beauticianRegister(
          BeauticianRegisterRequestModel beauticianRegisterRequestModel) async {
    try {
      final response = await _apiClient.post(
          "${AppConstants.baseUrl}auth/register/beautician",
          beauticianRegisterRequestModel.toJson());
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianRegisterResponseModel.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianLoginResponseModel>> beauticianLogin(
      BeauticianLoginRequestModel beauticianRegisterRequestModel) async {
    try {
      final response = await _apiClient.post(
          "${AppConstants.baseUrl}auth/login/beautician",
          beauticianRegisterRequestModel.toJson());
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianLoginResponseModel.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
