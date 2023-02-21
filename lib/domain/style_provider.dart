import 'package:cosmetropolis/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final styleProvider = ChangeNotifierProvider.autoDispose<StyleProvider>((ref) {
  return StyleProvider();
});

class StyleProvider extends ChangeNotifier {
  bool get isPrimaryTheme => AppConstants.isStylePrimary;

  void toggleThemeMode() {
    AppConstants.isStylePrimary = !AppConstants.isStylePrimary;

    notifyListeners();
  }
}
