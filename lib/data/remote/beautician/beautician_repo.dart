import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_availability.dart';
import 'package:cosmetropolis/data/remote/beautician/get_profile_details.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:cosmetropolis/data/remote/beautician/update_profile_details.dart';
import 'package:dartz/dartz.dart';

abstract class BeauticianRepo {
  Future<Either<ApiException, BeauticianRegisterResponseModel>>
      beauticianRegister(
          BeauticianRegisterRequestModel beauticianRegisterRequestModel);

  Future<Either<ApiException, BeauticianLoginResponseModel>> beauticianLogin(
      BeauticianLoginRequestModel beauticianRegisterRequestModel);

  Future<Either<ApiException, BeauticianProfileResponse>>
      getBeauticianProfileDetails(
          BeauticianProfileRequest beauticianProfileRequest);

  Future<Either<ApiException, BeauticianUpdateProfileResponse>>
      updateBeauticianProfile(
          BeauticianUpdateProfileRequest beauticianProfileRequest);

  Future<Either<ApiException, BeauticianAvailabilityResponse>>
      updateBeauticianAvailability(
          BeauticianAvailabilityRequest beauticianAvailabilityRequest);
}
