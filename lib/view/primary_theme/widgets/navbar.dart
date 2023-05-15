import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarWidget extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavbarWidget({super.key, required this.scaffoldKey});

  @override
  ConsumerState<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends ConsumerState<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 920
        ? primaryStyle()
        : primaryStyleRes();
  }

  Widget primaryStyle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/logo_big.png",
            width: 60.w,
            height: 50.h,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Switch(
                inactiveThumbColor: kBlue,
                inactiveTrackColor: kWhite,
                activeColor: kWhite,
                activeTrackColor: kBlue,
                value: AppConstants.isStylePrimary,
                onChanged: (value) {
                  ref.read(styleProvider).toggleThemeMode();
                  setState(() {});
                },
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "I am a Beautician",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Sign Up",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Log In",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Help",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              SizedBox(
                width: 50.w,
                height: 35.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage("assets/icons/gift.png"),
                        color: kWhite,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "Get \$50 ",
                        style: GoogleFonts.urbanist(
                          color: kWhite,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget primaryStyleRes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Image.asset(
            "assets/icons/logo_small.png",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
              inactiveThumbColor: kBlue,
              inactiveTrackColor: kWhite,
              activeColor: kWhite,
              activeTrackColor: kBlue,
              value: AppConstants.isStylePrimary,
              onChanged: (value) {
                ref.read(styleProvider).toggleThemeMode();
                setState(() {});
              },
            ),
            IconButton(
              onPressed: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: kBlue,
                size: 30.sp,
              ),
            )
          ],
        )
      ],
    );
  }
}
