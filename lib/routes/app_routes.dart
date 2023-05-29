import 'package:cosmetropolis/view/navigation/navigation_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/blog_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/forgotpass_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/help_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/home_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/landing_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/login_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/service_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/free_user/signup_page.dart';
import 'package:cosmetropolis/view/spalash_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splash,
  navigation,
  // free user (without login)
  landing,
  blogDetails,
  forgotPassword,
  help,
  home,
  login,
  serviceDetails,
  signUp, 
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: '/navigation',
    name: AppRoute.navigation.name,
    builder: (context, state) => const NavigationPage(),
  ),

  //free user (without login)
  GoRoute(
    path: '/landing',
    name: AppRoute.landing.name,
    builder: (context, state) => const LandingPage(),
  ),
  GoRoute(
    path: '/blogDetails',
    name: AppRoute.blogDetails.name,
    builder: (context, state) => const BlogDetailsPage(),
  ),
  GoRoute(
    path: '/forgotPassword',
    name: AppRoute.forgotPassword.name,
    builder: (context, state) => const FortgotPassPage(),
  ),
  GoRoute(
    path: '/help',
    name: AppRoute.help.name,
    builder: (context, state) => const HelpPage(),
  ),
  GoRoute(
    path: '/home',
    name: AppRoute.home.name,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/login',
    name: AppRoute.login.name,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/serviceDetails',
    name: AppRoute.serviceDetails.name,
    builder: (context, state) => const ServiceDetailsPage(),
  ),
  GoRoute(
    path: '/signUp',
    name: AppRoute.signUp.name,
    builder: (context, state) => const SignupPage(),
  ),
];
