import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/help_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/landing_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/login_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const String HomeRoute = 'home';
const String LandingRoute = 'landing';
const String SignupRoute = 'signup';
const String LoginRoute = 'login';
const String HelpRoute = 'help';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomePageView(), settings);
    case LandingRoute:
      return _getPageRoute(const LandingPage(), settings);
    case SignupRoute:
      return _getPageRoute(const SignupPage(), settings);
    case LoginRoute:
      return _getPageRoute(const LoginPage(), settings);
    case HelpRoute:
      return _getPageRoute(const HelpPage(), settings);
    default:
      return _getPageRoute(const HomePageView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name ?? '/');
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
