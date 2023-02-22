import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/banner_style2.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/category_view.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/daily_deals.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/footer_view.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/live_classes.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/meet_our_pros.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/popular_services_grid.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/search_bar.dart';
import 'package:cosmetropolis/view/screens/landing/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingView extends ConsumerStatefulWidget {
  const LandingView({super.key});

  @override
  ConsumerState<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends ConsumerState<LandingView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: ref.watch(styleProvider).isPrimaryTheme
          ? Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('assets/dummy/dummy_banner_1.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null,
                  ),
                  ListTile(
                    leading: const Icon(Icons.message),
                    title: Text(
                      "Daily Deals",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: Text(
                      "Professionals",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo_album_outlined),
                    title: Text(
                      "Gallery",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.login_outlined),
                    title: Text(
                      "Login",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "List Your Business",
                        style:
                            AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                          color: kBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('assets/dummy/dummy_banner_2.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null,
                  ),
                  ListTile(
                    leading: const Icon(Icons.message),
                    title: Text(
                      "Set Up my Buisness",
                      style: AppThemes.darkTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: Text(
                      "Sign Up",
                      style: AppThemes.darkTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo_album_outlined),
                    title: Text(
                      "Log In",
                      style: AppThemes.darkTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline),
                    title: Text(
                      "Help",
                      style: AppThemes.darkTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.h,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBEAE5),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/gift_icon.png",
                            height: 12.h,
                            width: 12.h,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "Get \$50",
                            style: AppThemes.lightTheme.textTheme.bodySmall
                                ?.copyWith(
                              color: kBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      body: ListView(
        children: [
          TopBar(scaffoldKey),
          const SearchBar(),
          if (ref.watch(styleProvider).isPrimaryTheme)
            const PopularService()
          else
            const CategoryView(),
          if (ref.watch(styleProvider).isPrimaryTheme)
            const DailyDeals()
          else
            const MeetOurPro(),
          if (ref.watch(styleProvider).isPrimaryTheme)
            const LiveClasses()
          else
            Container(),
          SizedBox(
            height: 50.h,
          ),
          const BannerStyle2(),
          SizedBox(
            height: 50.h,
          ),
          const FooterView(),
        ],
      ),
    );
  }
}
