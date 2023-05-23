import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/service_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      //** */ here add the drawer based on the theme
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
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
              leading: const Icon(Icons.message),
              title: Text(
                "I am a Beautician",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: Text(
                "Sign Up",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.photo_album_outlined),
              title: Text(
                "Log In",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.login_outlined),
              title: Text(
                "Help",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 14.sp,
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
        child: NavbarWidget(scaffoldKey: scaffoldKey),
      ),
      body: const ServiceDetailsPage(),
    );
  }
}
