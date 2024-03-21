import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/growth/models/beautician_balance.dart';
import 'package:cosmetropolis/data/remote/growth/models/beautician_earnings.dart';
import 'package:dartz/dartz.dart';

abstract class GrowthRepo {
  Future<Either<ApiException, BeauticianEarnings>> beauticianEarnings();

  Future<Either<ApiException, BeauticianBalance>> beauticianBalance();
}
