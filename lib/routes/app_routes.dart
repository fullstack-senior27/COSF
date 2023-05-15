import 'package:cosmetropolis/view/navigation/navigation_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { navigation }

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  // GoRoute(
  //   path: '/',
  //   name: AppRoute.home.name,
  //   builder: (context, state) => const HomeView(),
  // ),
  GoRoute(
    path: '/',
    name: AppRoute.navigation.name,
    builder: (context, state) => const NavigationPage(),
  ),
];
