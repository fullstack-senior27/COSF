import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/remote.dart';
import 'package:dartz/dartz.dart';

abstract class BaseNewsListRepo {
  Future<Either<ApiException, NewsListResponse>> getNewsList(
    String categoryName,
  );
}
