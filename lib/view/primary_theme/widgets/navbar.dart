import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/routes/navigator_service.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/button_with_icon.dart';

class NavbarFreeWidget extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavbarFreeWidget({
    super.key,
    required this.scaffoldKey,
  });

  @override
  ConsumerState<NavbarFreeWidget> createState() => _NavbarFreeWidgetState();
}

class _NavbarFreeWidgetState extends ConsumerState<NavbarFreeWidget> {
  final NavigationService _navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 980
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
              ButtonWithIconWidget(
                iconUrl: "assets/icons/avatar.png",
                text: "Log In / Sign Up",
                textColor: kWhite,
                backgroundColor: Colors.transparent,
                onPressed: () {
                  context.go("/login");
                },
              ),
              SizedBox(
                width: 5.w,
              ),
              ButtonWithIconWidget(
                text: "List Your Business",
                textColor: kWhite,
                backgroundColor: kBlack,
                onPressed: () {
                  context.go("/help");
                },
              ),
              SizedBox(
                width: 5.w,
              ),
              ButtonWithIconWidget(
                iconUrl: "assets/icons/gift.png",
                text: "Get \$50",
                textColor: kBlack,
                backgroundColor: kWhite,
                onPressed: () {
                  context.go("/pricing");
                },
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
