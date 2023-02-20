import 'package:cosmetropolis/view/screens/landing/widgets/search_bar.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: ListView(children: [const TopBar(), SearchBar()]),
    );
  }
}
