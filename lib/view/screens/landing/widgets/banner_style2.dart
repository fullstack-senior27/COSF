import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BannerStyle2 extends StatefulWidget {
  const BannerStyle2({super.key});

  @override
  State<BannerStyle2> createState() => _BannerStyle2State();
}

class _BannerStyle2State extends State<BannerStyle2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: MediaQuery.of(context).size.width / 1.8,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset("assets/dummy/banner_1.png").image)),
      margin: EdgeInsets.only(
          top: 30,
          left: width >= 930 ? 200 : 100,
          right: width >= 930 ? 200 : 100),
      padding: EdgeInsets.symmetric(horizontal: 100),
    );
  }
}
