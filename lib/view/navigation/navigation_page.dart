import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationPage extends ConsumerStatefulWidget {
  const NavigationPage({super.key});

  @override
  ConsumerState<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends ConsumerState<NavigationPage> {
  @override
  void initState() {
    //  setDashBoardnav();
    super.initState();
  }

  void setDashBoardnav() {
    // if user is registerd in then set the dashboard for logged in user set the selected page to calendar
    ref.read(styleProvider).setSelectedPage("More");
    setState(() {});
    // if user is not registerd in then set the dashboard for unlogged in user set the selected page to home
    // ref.read(styleProvider).setSelectedPage("Home");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // ignore: avoid_print
        print("back button pressed");
        return false;
      },
      child: const Scaffold(

          //  DashboardLoginPage(),
          ),
    );
  }
}
