import 'dart:developer';

import 'package:cosmetropolis/core/api_client.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/core/exceptions.dart';
import 'package:cosmetropolis/data/remote/public/models/all_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/models/all_categories_model.dart';
import 'package:cosmetropolis/data/remote/public/models/blogs_details_model.dart';
import 'package:cosmetropolis/data/remote/public/models/related_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/public_repo.dart';
import 'package:cosmetropolis/data/remote/services/models/service_categories_model.dart';
import 'package:cosmetropolis/data/remote/services/models/service_types_model.dart';
import 'package:dartz/dartz.dart';

class PublicRepoImpl implements PublicRepo {
  final ApiClient _apiClient;

  PublicRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, AllBlogsResponse>> getAllBlogs(
      int page, int limit,) async {
    try {
      final response =
          await _apiClient.postWithParams("${AppConstants.baseUrl}blogs", {}, {
        "page": page,
        "limit": limit,
      });
      log("Sucess ====> ${response.toString()}");
      return Right(AllBlogsResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AllBlogCategoriesResponse>>
      getAllCategories() async {
    try {
      final response =
          await _apiClient.get("${AppConstants.baseUrl}blogs/categories/all");
      log("Sucess ====> ${response.toString()}");
      return Right(AllBlogCategoriesResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AllBlogsResponse>> getBlogsByCategory(
      int page, int limit, BlogCategoryRequest blogCategoryRequest,) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}blogs",
        blogCategoryRequest.toJson(),
      );
      log("Sucess ====> ${response.toString()}");
      return Right(AllBlogsResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, BlogDetailsResponse>> getBlogDetails(
      String id,) async {
    try {
      final response = await _apiClient.get("${AppConstants.baseUrl}blogs/$id");
      log("Sucess ====> ${response.toString()}");
      return Right(BlogDetailsResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RelatedBlogsResponse>> getRelatedBlogs(
      String id,) async {
    try {
      final response =
          await _apiClient.get("${AppConstants.baseUrl}blogs/related/$id");
      log("Sucess ====> ${response.toString()}");
      return Right(RelatedBlogsResponse.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ServiceCategoriesList>>
      getServiceCategories() async {
    try {
      final response = await _apiClient
          .get("${AppConstants.baseUrl}services/categories/all");
      log("Sucess ====> ${response.toString()}");
      return Right(ServiceCategoriesList.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ServiceTypesList>> getServiceTypes() async {
    try {
      final response =
          await _apiClient.get("${AppConstants.baseUrl}services/types/all");
      log("Sucess ====> ${response.toString()}");
      return Right(ServiceTypesList.fromJson(response.data!));
    } catch (e) {
      log("Error =====> $e");
      return Left(ApiException(e.toString()));
    }
  }
}
