import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/routes/navigator_service.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/locator.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/navbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardFreePage extends ConsumerStatefulWidget {
  final Widget child;
  const DashboardFreePage({super.key, required this.child});

  @override
  ConsumerState<DashboardFreePage> createState() => _DashboardFreePageState();
}

class _DashboardFreePageState extends ConsumerState<DashboardFreePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // final screens = [
  //   HomePage(),
  //   LandingPage(),
  //   SignupPage(),
  //   LoginPage(),
  //   HelpPage(),
  //   PricingDetails()
  // ];
  // PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final NavigationService navigationService = locator<NavigationService>();
    String navbarSection = ref.watch(styleProvider).selectedPage;
    return Scaffold(
        extendBodyBehindAppBar: true,
        key: scaffoldKey,
        appBar: navbarSection == "Clients" ||
                navbarSection == "More" ||
                navbarSection == "Growth" ||
                navbarSection == "Marketing" ||
                navbarSection == "Promotions" ||
                navbarSection == "Profile" ||
                navbarSection == "Calendar"
            ? null
            : PreferredSize(
                preferredSize: Size.fromHeight(70.h),
                child: Column(
                  children: [
                    if (TargetPlatform.android == defaultTargetPlatform)
                      SizedBox(
                        height: 32.h,
                      )
                    else
                      SizedBox(
                        height: 0.h,
                      ),
                    NavbarFreeWidget(
                      scaffoldKey: scaffoldKey,
                    ),
                  ],
                ),
              ),
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
                  ref.read(styleProvider).setSelectedPage("Home");
                  // navigationService.navigateTo(HomeRoute);
                  // _pageController.jumpToPage(0);
                  context.go('/');
                },
                title: Text(
                  "Home",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontSize: 12.sp,
                    fontWeight: AppConstants.selectedPage == "Home"
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                onTap: () {
                  ref.read(styleProvider).setSelectedPage("I am a Beautician");
                  // navigationService.navigateTo(LandingRoute);
                  context.go('/landing');
                  // _pageController.jumpToPage(1);
                },
                title: Text(
                  "I am a Beautician",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontSize: 12.sp,
                    fontWeight: AppConstants.selectedPage == "I am a Beautician"
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
              ),
              // ListTile(
              //   onTap: () {
              //     ref.read(styleProvider).setSelectedPage("Sign Up");
              //     // navigationService.navigateTo(SignupRoute);
              //     context.go('/signUp');
              //     // _pageController.jumpToPage(2);
              //   },
              //   leading: const Icon(Icons.account_circle),
              //   title: Text(
              //     "Sign Up",
              //     style: GoogleFonts.urbanist(
              //       color: kBlack,
              //       fontSize: 12.sp,
              //       fontWeight: AppConstants.selectedPage == "Sign Up"
              //           ? FontWeight.w700
              //           : FontWeight.w400,
              //     ),
              //   ),
              // ),
              ListTile(
                onTap: () {
                  ref.read(styleProvider).setSelectedPage("Log In");
                  // navigationService.navigateTo(LoginRoute);
                  // _pageController.jumpToPage(3);
                  context.go('/login');
                },
                leading: const Icon(Icons.photo_album_outlined),
                title: Text(
                  "Log In",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontSize: 12.sp,
                    fontWeight: AppConstants.selectedPage == "Log In"
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  // Navigator.pop(context);

                  ref.read(styleProvider).setSelectedPage("Help");
                  // navigationService.navigateTo(HelpRoute);
                  // _pageController.jumpToPage(4);
                  context.go('/help');
                },
                leading: const Icon(Icons.login_outlined),
                title: Text(
                  "Help",
                  style: GoogleFonts.urbanist(
                    color: kBlack,
                    fontSize: 12.sp,
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
                    onPressed: () {
                      context.go("/pricing");
                    },
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
        body: widget.child,);
    // return Scaffold(
    //   key: scaffoldKey,
    // drawer: Drawer(
    //   backgroundColor: Colors.white,
    //   child: ListView(
    //     padding: EdgeInsets.zero,
    //     children: [
    //       const DrawerHeader(
    //         decoration: BoxDecoration(
    //           color: Colors.blue,
    //           image: DecorationImage(
    //             image: AssetImage('assets/images/banner_p.png'),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //         child: null,
    //       ),
    //       ListTile(
    //         leading: const Icon(Icons.home),
    //         onTap: () {
    //           ref.read(styleProvider).setSelectedPage("Home");
    //           navigationService.navigateTo(HomeRoute);
    //         },
    //         title: Text(
    //           "Home",
    //           style: GoogleFonts.urbanist(
    //             color: kBlack,
    //             fontSize: 12.sp,
    //             fontWeight: AppConstants.selectedPage == "Home"
    //                 ? FontWeight.w700
    //                 : FontWeight.w400,
    //           ),
    //         ),
    //       ),
    //       ListTile(
    //         leading: const Icon(Icons.message),
    //         onTap: () {
    //           ref.read(styleProvider).setSelectedPage("I am a Beautician");
    //           navigationService.navigateTo(LandingRoute);
    //           setState(() {});
    //         },
    //         title: Text(
    //           "I am a Beautician",
    //           style: GoogleFonts.urbanist(
    //             color: kBlack,
    //             fontSize: 12.sp,
    //             fontWeight: AppConstants.selectedPage == "I am a Beautician"
    //                 ? FontWeight.w700
    //                 : FontWeight.w400,
    //           ),
    //         ),
    //       ),
    //       ListTile(
    //         onTap: () {
    //           ref.read(styleProvider).setSelectedPage("Sign Up");
    //           navigationService.navigateTo(SignupRoute);
    //         },
    //         leading: const Icon(Icons.account_circle),
    //         title: Text(
    //           "Sign Up",
    //           style: GoogleFonts.urbanist(
    //             color: kBlack,
    //             fontSize: 12.sp,
    //             fontWeight: AppConstants.selectedPage == "Sign Up"
    //                 ? FontWeight.w700
    //                 : FontWeight.w400,
    //           ),
    //         ),
    //       ),
    //       ListTile(
    //         onTap: () {
    //           ref.read(styleProvider).setSelectedPage("Log In");
    //           navigationService.navigateTo(LoginRoute);
    //         },
    //         leading: const Icon(Icons.photo_album_outlined),
    //         title: Text(
    //           "Log In",
    //           style: GoogleFonts.urbanist(
    //             color: kBlack,
    //             fontSize: 12.sp,
    //             fontWeight: AppConstants.selectedPage == "Log In"
    //                 ? FontWeight.w700
    //                 : FontWeight.w400,
    //           ),
    //         ),
    //       ),
    //       ListTile(
    //         onTap: () {
    //           // Navigator.pop(context);

    //           ref.read(styleProvider).setSelectedPage("Help");
    //           navigationService.navigateTo(HelpRoute);
    //           setState(() {});
    //         },
    //         leading: const Icon(Icons.login_outlined),
    //         title: Text(
    //           "Help",
    //           style: GoogleFonts.urbanist(
    //             color: kBlack,
    //             fontSize: 12.sp,
    //             fontWeight: AppConstants.selectedPage == "Help"
    //                 ? FontWeight.w700
    //                 : FontWeight.w400,
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: 7.h,
    //       ),
    //       Padding(
    //         padding: EdgeInsets.all(8.0.w),
    //         child: SizedBox(
    //           width: double.infinity,
    //           height: 40.h,
    //           child: ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: kBlue,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(5.r),
    //               ),
    //             ),
    //             onPressed: () {
    //               Get.to(() => const PricingDetails());
    //             },
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 ImageIcon(
    //                   const AssetImage("assets/icons/gift.webp"),
    //                   color: kWhite,
    //                   size: 20.sp,
    //                 ),
    //                 SizedBox(
    //                   width: 10.w,
    //                 ),
    //                 Text(
    //                   "Get \$50 ",
    //                   style: GoogleFonts.urbanist(
    //                     color: kWhite,
    //                     fontWeight: FontWeight.w700,
    //                     fontSize: 12.sp,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
    // appBar: navbarSection == "Clients" ||
    //         navbarSection == "More" ||
    //         navbarSection == "Growth" ||
    //         navbarSection == "Marketing" ||
    //         navbarSection == "Promotions" ||
    //         navbarSection == "Profile" ||
    //         navbarSection == "Calendar"
    //     ? null
    //     : PreferredSize(
    //         preferredSize: Size.fromHeight(58.h),
    //         child: Column(
    //           children: [
    //             if (TargetPlatform.android == defaultTargetPlatform)
    //               SizedBox(
    //                 height: 40.h,
    //               )
    //             else
    //               SizedBox(
    //                 height: 0.h,
    //               ),
    //             NavbarFreeWidget(
    //               scaffoldKey: scaffoldKey,
    //             ),
    //           ],
    //         ),
    //       ),
    //   body: widget.child,
    // );
  }
}
