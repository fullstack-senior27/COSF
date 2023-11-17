import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/public/models/all_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/models/all_categories_model.dart';
import 'package:dartz/dartz.dart';

abstract class PublicRepo {
  Future<Either<ApiException, AllBlogsResponse>> getAllBlogs(
      int page, int limit);

  Future<Either<ApiException, AllBlogCategoriesResponse>> getAllCategories();
}
