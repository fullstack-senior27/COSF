import 'dart:developer';

import 'package:cosmetropolis/core/api_client.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/beautician/beautician_repo.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_availability.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:cosmetropolis/data/remote/beautician/update_profile_details.dart';
import 'package:dartz/dartz.dart';

import 'get_profile_details.dart';

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

  @override
  Future<Either<ApiException, BeauticianProfileResponse>>
      getBeauticianProfileDetails(
    BeauticianProfileRequest beauticianProfileRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
          "${AppConstants.baseUrl}beautician/profile",
          beauticianProfileRequest.toJson());
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianProfileResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianUpdateProfileResponse>>
      updateBeauticianProfile(
          BeauticianUpdateProfileRequest beauticianProfileRequest) async {
    try {
      final response = await _apiClient.patchWithToken(
          "${AppConstants.baseUrl}beautician/profile/edit",
          beauticianProfileRequest.toJson());
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianUpdateProfileResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianAvailabilityResponse>>
      updateBeauticianAvailability(
          BeauticianAvailabilityRequest beauticianAvailabilityRequest) async {
    try {
      final response = await _apiClient.patchWithToken(
          "${AppConstants.baseUrl}beautician/availability/add",
          beauticianAvailabilityRequest.toJson());
      log("Sucess ====> ${response.toString()}");
      return Right(BeauticianAvailabilityResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
