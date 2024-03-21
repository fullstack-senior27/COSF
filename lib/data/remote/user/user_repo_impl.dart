import 'dart:developer';

import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/user/models/cards_list_model.dart';
import 'package:cosmetropolis/data/remote/user/models/create_card_model.dart';
import 'package:cosmetropolis/data/remote/user/models/delete_card_model.dart';
import 'package:cosmetropolis/data/remote/user/models/edit_profile_user.dart';
import 'package:cosmetropolis/data/remote/user/models/get_all_user_appointments.dart';
import 'package:cosmetropolis/data/remote/user/models/profile_details_model.dart';
import 'package:cosmetropolis/data/remote/user/models/user_forgot_password.dart';
import 'package:cosmetropolis/data/remote/user/models/user_login_model.dart';
import 'package:cosmetropolis/data/remote/user/models/user_register_model.dart';
import 'package:cosmetropolis/data/remote/user/user_repo.dart';
import 'package:cosmetropolis/utils/logger.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/change_password_model.dart';
import 'package:dartz/dartz.dart';

class UserRepoImpl implements UserRepo {
  final ApiClient _apiClient;

  UserRepoImpl(this._apiClient);

  // @override
  // Future<Either<ApiException, SalonResponseModel>> getAllSalons(String searchKey) {
  //   // TODO: implement getAllSalons
  //   throw UnimplementedError();
  // }

  @override
  Future<Either<ApiException, UserRegisterResponse>> registerUser(
    UserRegisterRequest userRegisterRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}auth/register/user",
        userRegisterRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(UserRegisterResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserLoginResponse>> loginUser(
    UserLoginRequest userLoginRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}auth/login/user",
        userLoginRequest.toJson(),
      );

      return Right(UserLoginResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserForgotPasswordResponse>> forgotPasswordUser(
    UserForgotPasswordRequest userLoginRequest,
    String token,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}auth/forgot-password/user",
        userLoginRequest.toJson(),
      );
      log("Sucess ====> $response");
      return Right(UserForgotPasswordResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ProfileDetailsResponse>> getUserProfileDetails(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}users/profile",
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(ProfileDetailsResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, USerEditProfile>> updateUserProfileDetails(
    USerEditProfile editProfile,
    String token,
  ) async {
    try {
      final response = await _apiClient.patchWithToken(
        "${AppConstants.baseUrl}users/profile/update",
        editProfile.toJson(),
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(USerEditProfile.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateCardResponse>> addCard(
    CreateCardRequest addCardRequest,
    String token,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}users/card/create",
        addCardRequest.toJson(),
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(CreateCardResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CardsListResponse>> getCardsList(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}users/cards/list",
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(CardsListResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteCardResponse>> deleteCard(
    String tolken,
    String cardID,
  ) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}users/card/delete/$cardID",
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(DeleteCardResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ChangePasswordResponse>> changePassword(
    ChangePasswordRequest request,
    String token,
  ) async {
    try {
      final response = await _apiClient.patchWithToken(
        "${AppConstants.baseUrl}users/change_password",
        request.toJson(),
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(ChangePasswordResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetAllUserAppointments>> getAllAppointments(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}users/appointments/all",
      );
      Logger.printInfo("Sucess ====> $response");
      return Right(GetAllUserAppointments.fromJson(response.data!));
    } catch (e) {
      Logger.printWarning("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
