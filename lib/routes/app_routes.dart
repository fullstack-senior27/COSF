import 'package:cosmetropolis/utils/text_editing/text_editing.dart';
import 'package:cosmetropolis/view/navigation/navigation_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/calendar_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/clients_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/dashboard_registered_user.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/growth_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/marketing_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/more_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/profile_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/promotions_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/beauticians_list_page/beauticians_list_page_view.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/dashboard_free.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/edit_profile.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/forgotpass_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/help_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/landing_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/login_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/pricing_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/service_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/signup_page.dart';
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
    ///=============== UNREGISTERED USER ===============///
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
    GoRoute(
      path: '/help',
      builder: (context, state) => const DashboardFreePage(child: HelpPage()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: HelpPage()))
    ),
    GoRoute(
      path: '/help/:nav',
      builder: (context, state) => DashboardFreePage(child: HelpPage(nav: int.parse(state.pathParameters['nav'].toString()),)),
      // pageBuilder: defaultPageBuilder(DashboardFreePage(child: HelpPage(nav: int.parse(state.pathParameters['nav'].toString()),)),)
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardFreePage(child: HomePageView()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: HomePageView())),
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
      builder: (context, state) => const DashboardFreePage(child: BeauticiansListPageView()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: BeauticiansListPageView())),
      routes: [
        GoRoute(
          path: 'service-details',
          builder: (context, state) => const DashboardFreePage(child: ServiceDetailsPage()),
          pageBuilder: defaultPageBuilder(const DashboardFreePage(child: ServiceDetailsPage())),
        )
      ]
    ),
    GoRoute(
      path: '/edit-profile',
      builder: (context, state) => const DashboardFreePage(child: EditProfile()),
      pageBuilder: defaultPageBuilder(const DashboardFreePage(child: EditProfile())),
    ),

    ///=============== REGISTERED USER ===============///
    GoRoute(
      path: '/text-editor',
      builder: (context, state) => DashboardFreePage(child: TextEditorPage()),
      pageBuilder: defaultPageBuilder(DashboardFreePage(child: TextEditorPage())),
    ),
    GoRoute(
      path: '/dashboard-login',
      builder: (context, state) => DashboardLoginPage(child: CalendarPage(),),
      pageBuilder: defaultPageBuilder(DashboardLoginPage(child: CalendarPage(),)),
      routes: [
        GoRoute(
          path: 'client',
          builder: (context, state) => DashboardLoginPage(child: ClintsPage(),),
          pageBuilder: defaultPageBuilder(DashboardLoginPage(child: ClintsPage(),)),
        ),
        GoRoute(
          path: 'growth',
          builder: (context, state) => DashboardLoginPage(child: GrowthPage(),),
          pageBuilder: defaultPageBuilder(DashboardLoginPage(child: GrowthPage(),)),
        ),
        GoRoute(
          path: 'marketing',
          builder: (context, state) => DashboardLoginPage(child: MarketingPage(),),
          pageBuilder: defaultPageBuilder(DashboardLoginPage(child: MarketingPage(),)),
        ),
        GoRoute(
          path: 'promotions',
          builder: (context, state) => DashboardLoginPage(child: PromotionsPage(),),
          pageBuilder: defaultPageBuilder(DashboardLoginPage(child: PromotionsPage(),)),
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) => DashboardLoginPage(child: ProfilePage(),),
          pageBuilder: defaultPageBuilder(DashboardLoginPage(child: ProfilePage(),)),
        ),
        GoRoute(
          path: 'more',
          builder: (context, state) => DashboardLoginPage(child: MorePage(),),
          pageBuilder: defaultPageBuilder(DashboardLoginPage(child: MorePage(),)),
        ),
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
  Widget child, {GoRouterState? state}
) => (BuildContext context, state) {
    return buildPageWithDefaultTransition<T>(
      context: context,
      state: state,
      child: child,
    );
  };