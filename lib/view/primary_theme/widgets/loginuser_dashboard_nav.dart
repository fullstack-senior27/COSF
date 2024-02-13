import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarLoginUserDashboardWidget extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavbarLoginUserDashboardWidget({
    super.key,
    required this.scaffoldKey,
  });

  @override
  ConsumerState<NavbarLoginUserDashboardWidget> createState() =>
      _NavbarLoginUserDashboardWidgetState();
}

class _NavbarLoginUserDashboardWidgetState
    extends ConsumerState<NavbarLoginUserDashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 1100
        ? Column(
            children: [
              primaryStyle(),
              Divider(
                color: kGrey.withOpacity(0.5),
                thickness: 1,
              ),
            ],
          )
        : Column(
            children: [
              primaryStyleRes(),
              Divider(
                color: kGrey.withOpacity(0.5),
                thickness: 1,
              ),
            ],
          );
  }

  Widget primaryStyle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/logo_big.webp",
            width: 60.w,
            height: 50.h,
            fit: BoxFit.contain,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10.w,
              ),
              TextButton(
                onPressed: () {
                  context.go('/dashboard-login');
                },
                child: Text(
                  "Calendar",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "Calendar"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  // ref.read(styleProvider).setSelectedPage("Clients");
                  // setState(() {});
                  context.go('/dashboard-login/client');
                },
                child: Text(
                  "Clients",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "Clients"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  // ref.read(styleProvider).setSelectedPage("Growth");
                  // setState(() {});
                  context.go('/dashboard-login/growth');
                },
                child: Text(
                  "Growth",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "Growth"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  // ref.read(styleProvider).setSelectedPage("Marketing");
                  // setState(() {});
                  context.go('/dashboard-login/marketing');
                },
                child: Text(
                  "Marketing",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "Marketing"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  // ref.read(styleProvider).setSelectedPage("Promotions");
                  // setState(() {});
                  context.go('/dashboard-login/promotions');
                },
                child: Text(
                  "Promotions",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "Promotions"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  // ref.read(styleProvider).setSelectedPage("Profile");
                  // setState(() {});
                  context.go('/dashboard-login/profile');
                },
                child: Text(
                  "Profile",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "Profile"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  // ref.read(styleProvider).setSelectedPage("More");
                  // setState(() {});
                  context.go('/dashboard-login/more');
                },
                child: Text(
                  "More...",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontWeight: AppConstants.selectedPage == "More"
                        ? FontWeight.w700
                        : FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: kBlue,
                  size: 25.sp,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const CircleAvatar(
                backgroundColor: kBlue,
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: CircleAvatar(
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=612x612&w=0&k=20&c=eU56mZTN4ZXYDJ2SR2DFcQahxEnIl3CiqpP3SOQVbbI=',
                    ),
                  ),
                ),
              ),
            ],
          ),
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
            "assets/icons/logo_small.webp",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: kBlue,
                size: 30.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
