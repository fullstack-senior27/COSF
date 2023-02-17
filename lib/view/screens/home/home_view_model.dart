import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/helpers/base_view_model.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModel = ChangeNotifierProvider((ref) => HomeViewModel());

class HomeViewModel extends BaseViewModel<BaseScreenView> {
  void showSnackbar(String message) {
    view?.showSnackbar("wohooo!!!!");
  }

  // void navigateToSecondScreen() {
  //   view?.navigateToScreen(AppRoute.secondScreen);
  // }
}
