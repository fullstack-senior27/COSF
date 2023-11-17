import 'package:cosmetropolis/data/remote/public/models/all_blogs_model.dart';
import 'package:cosmetropolis/data/remote/public/models/all_categories_model.dart';
import 'package:cosmetropolis/data/remote/public/public_repo.dart';
import 'package:cosmetropolis/domain/providers/repository_provider.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
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
            }));
  }

  Future<void> getAllCategories() async {
    toggleLoading();
    await _publicRepository.getAllCategories().then((value) => value.fold((l) {
          showSnackbar(l.message);
        }, (r) {
          _allBlogCategoriesResponse = r;
          notifyListeners();
        }));
  }
}
