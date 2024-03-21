import 'package:cosmetropolis/data/remote/growth/growth_repo.dart';
import 'package:cosmetropolis/data/remote/growth/models/beautician_balance.dart';
import 'package:cosmetropolis/data/remote/growth/models/beautician_earnings.dart';
import 'package:cosmetropolis/domain/providers/repository_provider.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final growthViewModel = ChangeNotifierProvider(
  (ref) => GrowthViewModel(
    ref.read(growthRepositoryProvider),
  ),
);

class GrowthViewModel extends BaseViewModel<BaseScreenView> {
  final GrowthRepo _growthRepository;

  GrowthViewModel(this._growthRepository);

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  BeauticianEarnings? _beauticianEarnings;
  BeauticianEarnings? get beauticianEarnings => _beauticianEarnings;

  BeauticianBalance? _beauticianBalance;
  BeauticianBalance? get beauticianBalance => _beauticianBalance;

  Future<void> getBeauticianEarnings(BuildContext context) async {
    await _growthRepository.beauticianEarnings().then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _beauticianEarnings = r;
              // showSnackbar(r.message!);
              // context.go('/login');
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getBeauticianBalance(BuildContext context) async {
    await _growthRepository.beauticianBalance().then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _beauticianBalance = r;
              // showSnackbar(r.message!);
              // context.go('/login');
              notifyListeners();
            },
          ),
        );
  }
}
