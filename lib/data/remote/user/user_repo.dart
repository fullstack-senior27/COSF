import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/user/models/cards_list_model.dart';
import 'package:cosmetropolis/data/remote/user/models/create_card_model.dart';
import 'package:cosmetropolis/data/remote/user/models/edit_profile_user.dart';
import 'package:cosmetropolis/data/remote/user/models/profile_details_model.dart';
import 'package:cosmetropolis/data/remote/user/models/user_forgot_password.dart';
import 'package:cosmetropolis/data/remote/user/models/user_login_model.dart';
import 'package:cosmetropolis/data/remote/user/models/user_register_model.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepo {
  Future<Either<ApiException, UserRegisterResponse>> registerUser(
      UserRegisterRequest userRegisterRequest);

  Future<Either<ApiException, UserLoginResponse>> loginUser(
      UserLoginRequest userLoginRequest);

  Future<Either<ApiException, UserForgotPasswordResponse>> forgotPasswordUser(
      UserForgotPasswordRequest userLoginRequest, String token);

  Future<Either<ApiException, ProfileDetailsResponse>> getUserProfileDetails(
      String token);

  Future<Either<ApiException, USerEditProfile>> updateUserProfileDetails(
      USerEditProfile editProfile, String token);
  Future<Either<ApiException, CreateCardResponse>> addCard(
      CreateCardRequest addCardRequest, String token);

  Future<Either<ApiException, CardsListResponse>> getCardsList(String token);
}
