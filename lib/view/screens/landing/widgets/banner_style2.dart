import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerStyle2 extends StatefulWidget {
  const BannerStyle2({super.key});

  @override
  State<BannerStyle2> createState() => _BannerStyle2State();
}

class _BannerStyle2State extends State<BannerStyle2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: width > 770
          ? EdgeInsets.symmetric(horizontal: 60.w)
          : EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        width: double.infinity,
        height: width > 770 ? 170.h : 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset("assets/dummy/banner_1.png").image,
          ),
        ),
      ),
    );
  }
}
