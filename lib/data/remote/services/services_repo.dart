import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart';
import 'package:cosmetropolis/data/remote/services/models/beautician_detail_model.dart';
import 'package:cosmetropolis/data/remote/services/models/services_model.dart';
import 'package:dartz/dartz.dart';

abstract class ServicesRepo {
  Future<Either<ApiException, ServicesResponseModel>> getAllServices();
  Future<Either<ApiException, BeauticiansListResponse>> getBeauticiansByFilter(
    BeauticiansFilterRequest beauticiansFilterRequestModel,
  );

  Future<Either<ApiException, BeauticianDetailResponse>> getBeauticianDetails(
    BeauticianDetailRequest request,
  );
}
