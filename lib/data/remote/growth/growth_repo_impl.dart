import 'package:cosmetropolis/core/api_client.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/growth/growth_repo.dart';
import 'package:cosmetropolis/data/remote/growth/models/beautician_balance.dart';
import 'package:cosmetropolis/data/remote/growth/models/beautician_earnings.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:dartz/dartz.dart';

class GrowthRepoImpl implements GrowthRepo {
  final ApiClient _apiClient;

  GrowthRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, BeauticianEarnings>> beauticianEarnings() async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}beautician/transactions-list?beauticianId=${SharedPreferenceService.getString(AppConstants.userId)}",
      );
      print("Sucess ====> ${response.toString()}");
      return Right(BeauticianEarnings.fromJson(response.data!));
    } catch (e) {
      print("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BeauticianBalance>> beauticianBalance() async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}beautician/connect_account/balance?beauticianId=${SharedPreferenceService.getString(AppConstants.userId)}",
      );
      print("Sucess ====> ${response.toString()}");
      return Right(BeauticianBalance.fromJson(response.data!));
    } catch (e) {
      print("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
