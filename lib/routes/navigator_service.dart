import 'dart:developer';

import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    log("ROUTE NAME ====> $routeName");
    return navigatorKey.currentState!
        .pushNamed(Uri(path: routeName).toString());
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
