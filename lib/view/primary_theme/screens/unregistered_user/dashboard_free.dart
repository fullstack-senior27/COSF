import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/beauticians_list_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/help_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/home_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/landing_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/login_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/pricing_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/signup_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardFreePage extends ConsumerStatefulWidget {
  const DashboardFreePage({super.key});

  @override
  ConsumerState<DashboardFreePage> createState() => _DashboardFreePageState();
}

class _DashboardFreePageState extends ConsumerState<DashboardFreePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    String navbarSection = ref.watch(styleProvider).selectedPage;
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
                Navigator.pop(context);
                ref.read(styleProvider).setSelectedPage("Home");
                setState(() {});
              },
              title: Text(
                "Home",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                  fontWeight: AppConstants.selectedPage == "Home"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              onTap: () {
                Navigator.pop(context);
                ref.read(styleProvider).setSelectedPage("I am a Beautician");
                setState(() {});
              },
              title: Text(
                "I am a Beautician",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                  fontWeight: AppConstants.selectedPage == "I am a Beautician"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                ref.read(styleProvider).setSelectedPage("Sign Up");
                setState(() {});
              },
              leading: const Icon(Icons.account_circle),
              title: Text(
                "Sign Up",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                  fontWeight: AppConstants.selectedPage == "Sign Up"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                ref.read(styleProvider).setSelectedPage("Log In");
                setState(() {});
              },
              leading: const Icon(Icons.photo_album_outlined),
              title: Text(
                "Log In",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                  fontWeight: AppConstants.selectedPage == "Log In"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                ref.read(styleProvider).setSelectedPage("Help");
                setState(() {});
              },
              leading: const Icon(Icons.login_outlined),
              title: Text(
                "Help",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                  fontWeight: AppConstants.selectedPage == "Help"
                      ? FontWeight.w700
                      : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
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
                        const AssetImage("assets/icons/gift.png"),
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
                          fontSize: 14.sp,
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
        preferredSize: Size.fromHeight(70.h),
        child: NavbarFreeWidget(
          scaffoldKey: scaffoldKey,
        ),
      ),
      body: navbarSection == "Home"
          ? const PricingDetails()
          : navbarSection == "I am a Beautician"
              ? const LandingPage()
              : navbarSection == "Sign Up"
                  ? const SignupPage()
                  : navbarSection == "Log In"
                      ? const LoginPage()
                      : navbarSection == "Help"
                          ? const HelpPage()
                          : const HomePage(),
    );
  }
}
