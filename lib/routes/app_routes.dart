import 'package:cosmetropolis/view/navigation/navigation_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/beauticians_list_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/dashboard_free.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/forgotpass_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/help_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/home_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/landing_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/login_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/pricing_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/service_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/signup_page.dart';
import 'package:cosmetropolis/view/spalash_page.dart';
import 'package:flutter/material.dart';
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
final GoRouter routers = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const SplashPage(),
    // ),
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const DashboardFreePage(),
    // ),
    GoRoute(
      path: '/navigation',
      builder: (context, state) => const NavigationPage(),
      pageBuilder: defaultPageBuilder(const NavigationPage())
    ),

    //free user (without login)
    GoRoute(
      path: '/landing',
      builder: (context, state) => const DashboardFreePage(child: LandingPage()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: LandingPage()))
    ),
    GoRoute(
      path: '/pricing',
      builder: (context, state) => const PricingDetails(),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: PricingDetails()))
    ),
    // GoRoute(
    //   path: '/forgotPassword',
    //   builder: (context, state) => const FortgotPassPage(),
    // ),
    GoRoute(
      path: '/help',
      builder: (context, state) => const DashboardFreePage(child: HelpPage()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: HelpPage()))
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardFreePage(child: HomePage()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: HomePage())),
      // routes: [
      //   GoRoute(
      //     path: 'landing',
      //     builder: (context, state) => const LandingPage(),
      //   ),
      // ]
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const DashboardFreePage(child: LoginPage(),),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: LoginPage())),
      routes: [
        GoRoute(
          path: 'forgotPassword',
          builder: (context, state) => const FortgotPassPage(),
          pageBuilder: defaultPageBuilder(const FortgotPassPage()),
        )
      ]
    ),
    GoRoute(
      path: '/serviceDetails',
      builder: (context, state) => const ServiceDetailsPage(),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) => const DashboardFreePage(child: SignupPage(),),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: SignupPage()))
    ),
    GoRoute(
      path: '/blogs',
      builder: (context, state) => const DashboardFreePage(child: BlogPage()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: BlogPage())),
      routes: [
        GoRoute(
          path: 'blog-details',
          builder: (context, state) => const DashboardFreePage(child: BlogDetailsPage()),
          pageBuilder: defaultPageBuilder(const DashboardFreePage(child: BlogDetailsPage())),
        )
      ]
    ),
    GoRoute(
      path: '/beautician-listing',
      builder: (context, state) => const DashboardFreePage(child: BeauticiansListPage()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: BeauticiansListPage())),
      routes: [
        GoRoute(
          path: 'service-details',
          builder: (context, state) => const DashboardFreePage(child: ServiceDetailsPage()),
          pageBuilder: defaultPageBuilder(const DashboardFreePage(child: ServiceDetailsPage())),
        )
      ]
    ),
  ]
);





CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder<T>(
      Widget child) =>
  (BuildContext context, GoRouterState state) {
    return buildPageWithDefaultTransition<T>(
      context: context,
      state: state,
      child: child,
    );
  };