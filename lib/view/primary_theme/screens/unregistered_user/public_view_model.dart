import 'package:cosmetropolis/data/remote/public/models/all_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/models/all_categories_model.dart';
import 'package:cosmetropolis/data/remote/public/models/blogs_details_model.dart';
import 'package:cosmetropolis/data/remote/public/models/related_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/public_repo.dart';
import 'package:cosmetropolis/domain/providers/repository_provider.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final publicViewModel = ChangeNotifierProvider(
  (ref) => PublicViewModel(
    ref.read(publicRepositoryProvider),
  ),
);

class PublicViewModel extends BaseViewModel<BaseScreenView> {
  final PublicRepo _publicRepository;
  PublicViewModel(this._publicRepository);

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  AllBlogsResponse? _allBlogsResponse;
  AllBlogsResponse? get allBlogsResponse => _allBlogsResponse;

  AllBlogCategoriesResponse? _allBlogCategoriesResponse;
  AllBlogCategoriesResponse? get allBlogCategoriesResponse =>
      _allBlogCategoriesResponse;

  BlogDetailsResponse? _blogDetailsResponse;
  BlogDetailsResponse? get blogDetailsResponse => _blogDetailsResponse;

  RelatedBlogsResponse? _relatedBlogsResponse;
  RelatedBlogsResponse? get relatedBlogsResponse => _relatedBlogsResponse;

  Future<void> getAllBlogs(int page, int limit) async {
    toggleLoading();
    await _publicRepository
        .getAllBlogs(page, limit)
        .then((value) => value.fold((l) {
              showSnackbar(l.message);
            }, (r) {
              // showSnackbar(r.message);
              _allBlogsResponse = r;
              notifyListeners();
            }),);
  }

  Future<void> getAllCategories() async {
    toggleLoading();
    await _publicRepository.getAllCategories().then((value) => value.fold((l) {
          showSnackbar(l.message);
        }, (r) {
          _allBlogCategoriesResponse = r;
          notifyListeners();
        }),);
  }

  Future<void> getBlogsByCategory(
      int page, int limit, BlogCategoryRequest blogCategoryRequest,) async {
    toggleLoading();
    await _publicRepository
        .getBlogsByCategory(page, limit, blogCategoryRequest)
        .then((value) => value.fold((l) {
              showSnackbar(l.message);
            }, (r) {
              // showSnackbar(r.message);
              _allBlogsResponse = r;
              notifyListeners();
            }),);
  }

  Future<void> getBlogDetails(String id, BuildContext context) async {
    toggleLoading();
    await _publicRepository.getBlogDetails(id).then((value) => value.fold((l) {
          showSnackbar(l.message);
        }, (r) {
          _blogDetailsResponse = r;
          // context.go("/blogs/blog-details", extra: _blogDetailsResponse?.data);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BlogDetailsPage(
              data: _blogDetailsResponse?.data,
            );
          },),);
          notifyListeners();
        }),);
  }

  Future<void> getRelatedBlogs(
    String id,
  ) async {
    toggleLoading();
    await _publicRepository.getRelatedBlogs(id).then((value) => value.fold((l) {
          showSnackbar(l.message);
        }, (r) {
          _relatedBlogsResponse = r;
          // context.go("/blogs/blog-details", extra: _blogDetailsResponse?.data);
          notifyListeners();
        }),);
  }
}
