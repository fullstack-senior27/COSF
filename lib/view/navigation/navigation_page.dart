import 'package:cosmetropolis/view/primary_theme/screens/login_user/dashboard_login_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //! here we can change the body based on the theme and the user type
      body: DashboardLoginPage(),
      //  DashboardFreePage(),
    );
  }
}
