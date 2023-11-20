import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/public/models/all_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/models/all_categories_model.dart';
import 'package:cosmetropolis/data/remote/public/models/blogs_details_model.dart';
import 'package:cosmetropolis/data/remote/public/models/related_blogs_model.dart';
import 'package:dartz/dartz.dart';

abstract class PublicRepo {
  Future<Either<ApiException, AllBlogsResponse>> getAllBlogs(
      int page, int limit);

  Future<Either<ApiException, AllBlogCategoriesResponse>> getAllCategories();

  Future<Either<ApiException, AllBlogsResponse>> getBlogsByCategory(
      int page, int limit, BlogCategoryRequest blogCategoryRequest);

  Future<Either<ApiException, BlogDetailsResponse>> getBlogDetails(String id);

  Future<Either<ApiException, RelatedBlogsResponse>> getRelatedBlogs(String id);
}
