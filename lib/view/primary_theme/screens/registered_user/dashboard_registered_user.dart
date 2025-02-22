import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/loginuser_dashboard_nav.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardLoginPage extends ConsumerStatefulWidget {
  final Widget child;
  const DashboardLoginPage({super.key, required this.child});

  @override
  ConsumerState<DashboardLoginPage> createState() => _DashboardLoginPageState();
}

class _DashboardLoginPageState extends ConsumerState<DashboardLoginPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_final_locals
    // String navbarSection = ref.watch(styleProvider).selectedPage;
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('assets/images/banner_p.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: null,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              onTap: () {
                context.go('/dashboard-login');
              },
              title: Text(
                "Calendar",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "Calendar"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              onTap: () {
                // Navigator.pop(context);
                // ref.read(styleProvider).setSelectedPage("Clients");
                // setState(() {});
                context.go('/dashboard-login/client');
              },
              title: Text(
                "Clients",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "Clients"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // ref.read(styleProvider).setSelectedPage("Growth");
                // setState(() {});
                context.go('/dashboard-login/growth');
              },
              leading: const Icon(Icons.account_circle),
              title: Text(
                "Growth",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "Growth"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // ref.read(styleProvider).setSelectedPage("Marketing");
                // setState(() {});
                context.go('/dashboard-login/marketing');
              },
              leading: const Icon(Icons.photo_album_outlined),
              title: Text(
                "Marketing",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "Marketing"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // ref.read(styleProvider).setSelectedPage("Promotions");
                // setState(() {});
                context.go('/dashboard-login/promotions');
              },
              leading: const Icon(Icons.login_outlined),
              title: Text(
                "Promotions",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "Promotions"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // ref.read(styleProvider).setSelectedPage("Profile");
                // setState(() {});

                context.go('/dashboard-login/profile');
              },
              leading: const Icon(Icons.settings),
              title: Text(
                "Profile",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "Profile"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // ref.read(styleProvider).setSelectedPage("More");
                // setState(() {});
                context.go('/dashboard-login/more');
              },
              leading: const Icon(Icons.settings),
              title: Text(
                "More...",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: AppConstants.selectedPage == "More"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: SizedBox(
                width: double.infinity,
                height: 40.h,
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
                        const AssetImage("assets/icons/gift.webp"),
                        color: kWhite,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Get \$50 ",
                        style: GoogleFonts.urbanist(
                          color: kWhite,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: Column(
          children: [
            if (TargetPlatform.android == defaultTargetPlatform)
              SizedBox(
                height: 40.h,
              )
            else
              SizedBox(
                height: 0.h,
              ),
            NavbarLoginUserDashboardWidget(
              scaffoldKey: scaffoldKey,
            ),
          ],
        ),
      ),
      // body: navbarSection == "Calendar"
      //     ? const CalendarPage()
      //     : navbarSection == "Clients"
      //         ? const ClintsPage()
      //         : navbarSection == "Growth"
      //             ? const GrowthPage()
      //             : navbarSection == "Marketing"
      //                 ? const MarketingPage()
      //                 : navbarSection == "Promotions"
      //                     ? const PromotionsPage()
      //                     : navbarSection == "Profile"
      //                         ? const ProfilePage()
      //                         : navbarSection == "More"
      //                             ? const MorePage()
      //                             : const CalendarPage(),
      body: widget.child,
    );
  }
}
