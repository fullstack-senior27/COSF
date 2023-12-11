import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:dartz/dartz.dart';

abstract class BeauticianRepo {
  Future<Either<ApiException, BeauticianRegisterResponseModel>>
      beauticianRegister(
          BeauticianRegisterRequestModel beauticianRegisterRequestModel);

  Future<Either<ApiException, BeauticianLoginResponseModel>> beauticianLogin(
      BeauticianLoginRequestModel beauticianRegisterRequestModel);
}
