import 'package:cosmetropolis/data/remote/beautician/beautician_repo.dart';
import 'package:cosmetropolis/data/remote/beautician/login.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:cosmetropolis/domain/providers/providers.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final beauticianViewModel = ChangeNotifierProvider(
  (ref) => BeauticianViewModel(
    ref.read(beauticianRepositoryProvider),
  ),
);

class BeauticianViewModel extends BaseViewModel<BaseScreenView> {
  final BeauticianRepo _beauticianRepo;
  BeauticianViewModel(this._beauticianRepo);

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  BeauticianRegisterResponseModel? _beauticianRegisterResponseModel;
  BeauticianRegisterResponseModel? get beauticianRegisterResponseModel =>
      _beauticianRegisterResponseModel;

  BeauticianLoginResponseModel? _beauticianLoginResponseModel;
  BeauticianLoginResponseModel? get beauticianLoginResponseModel =>
      _beauticianLoginResponseModel;

  Future<void> registerBeautician(
      BeauticianRegisterRequestModel beauticianRegisterRequestModel,
      BuildContext context) async {
    toggleLoading();
    await _beauticianRepo
        .beauticianRegister(beauticianRegisterRequestModel)
        .then((value) => value.fold((l) {
              showSnackbar(l.message);
            }, (r) {
              // showSnackbar(r.message);
              _beauticianRegisterResponseModel = r;
              context.go("/dashboard-login");
              notifyListeners();
            }));
  }

  Future<void> loginBeautician(
      BeauticianLoginRequestModel beauticianRegisterRequestModel,
      BuildContext context) async {
    toggleLoading();
    await _beauticianRepo
        .beauticianLogin(beauticianRegisterRequestModel)
        .then((value) => value.fold((l) {
              showSnackbar(l.message);
            }, (r) {
              // showSnackbar(r.message);
              _beauticianLoginResponseModel = r;
              context.go("/dashboard-login");
              notifyListeners();
            }));
  }
}
