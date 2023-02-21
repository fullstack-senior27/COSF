import 'package:cosmetropolis/view/screens/landing/landing_view.dart';

import 'package:go_router/go_router.dart';

enum AppRoute { home, landing }

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  // GoRoute(
  //   path: '/',
  //   name: AppRoute.home.name,
  //   builder: (context, state) => const HomeView(),
  // ),
  GoRoute(
    path: '/',
    name: AppRoute.home.name,
    builder: (context, state) => const LandingView(),
  ),
];
