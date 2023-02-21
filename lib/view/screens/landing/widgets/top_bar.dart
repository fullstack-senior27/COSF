import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const TopBar(this.scaffoldKey, {super.key});

  @override
  ConsumerState<TopBar> createState() => _TopBarState();
}

class _TopBarState extends ConsumerState<TopBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    switch (AppConstants.isStylePrimary) {
      case true:
        return width > 770 ? primaryStyle() : primaryStyleRes();
      case false:
        return width > 770 ? secondaryStyle() : secondaryStyleRes();
      default:
        return width > 770 ? primaryStyle() : primaryStyleRes();
    }
  }

  Widget primaryStyle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Image.asset(
            "assets/images/logo_small.png",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
              value: AppConstants.isStylePrimary,
              onChanged: (value) {
                ref.read(styleProvider).toggleThemeMode();
                setState(() {});
              },
            ),
            SizedBox(
              width: 5.w,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {},
              child: Text(
                "List Your Business",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Daily Deals",
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Professionals",
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Gallery",
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Login",
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
          ],
        )
      ],
    );
  }

  Widget primaryStyleRes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Image.asset(
            "assets/images/logo_small.png",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
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
                color: kBlack,
                size: 30.sp,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget secondaryStyle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Image.asset(
            "assets/images/logo_small.png",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
              value: AppConstants.isStylePrimary,
              onChanged: (value) {
                ref.read(styleProvider).toggleThemeMode();
                setState(() {});
              },
            ),
            SizedBox(
              width: 5.w,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Set Up my Buisness",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Sign Up",
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
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
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
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
              style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFFBEAE5),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/gift_icon.png",
                    height: 12.h,
                    width: 12.h,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    "Get \$50",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      color: kBlack,
                      fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
          ],
        )
      ],
    );
  }

  Widget secondaryStyleRes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Image.asset(
            "assets/images/logo_small.png",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
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
                color: kBlack,
                size: 30.sp,
              ),
            )
          ],
        )
      ],
    );
  }
}
