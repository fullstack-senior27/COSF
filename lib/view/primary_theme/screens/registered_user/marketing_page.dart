import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/growth_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';

class MarketingPage extends StatefulWidget {
  const MarketingPage({super.key});

  @override
  State<MarketingPage> createState() => _MarketingPageState();
}

class _MarketingPageState extends State<MarketingPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 20.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFEF9ED),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Marketing Dashboard",
                                style: urbanist600(kBlack, 20),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                child: Text(
                                  "Complete profile to see business performance and marketing advice.",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              if (MediaQuery.of(context).size.width < 920)
                                Padding(
                                  padding: EdgeInsets.only(top: 15.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.w,
                                          vertical: 10.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kBlack,
                                          borderRadius: BorderRadius.circular(
                                            5.r,
                                          ),
                                        ),
                                        child: Text(
                                          "Complete Profile",
                                          style: GoogleFonts.urbanist(
                                            color: kWhite,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              else
                                Container()
                            ],
                          ),
                        ),
                        if (MediaQuery.of(context).size.width > 920)
                          Expanded(
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 10.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kBlack,
                                    borderRadius: BorderRadius.circular(
                                      5.r,
                                    ),
                                  ),
                                  child: Text(
                                    "Link Account",
                                    style: GoogleFonts.urbanist(
                                      color: kWhite,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        else
                          Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Cosmetropolis Marketing",
                    style: urbanist600(kBlack, 20),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  TabBar(
                    physics: const BouncingScrollPhysics(),
                    dividerColor: kGrey.withOpacity(0.5),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: _tabcontroller,
                    indicatorColor: kBlack,
                    labelColor: kBlack,
                    unselectedLabelColor: kGrey,
                    labelStyle: urbanist600(kBlack, 12),
                    unselectedLabelStyle: urbanist400(kGrey, 12),
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Profile Status'),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 500.h,
                    child: TabBarView(controller: _tabcontroller, children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last 7 days vs. Apr 20 - Apr 27, 2023",
                              style: urbanist400(kBlack, 12),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width > 415
                                            ? 90.h
                                            : 80.h,
                                    // width: 30.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: klines),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/promotion_bg.png"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                500,
                                            child: FittedBox(
                                              child: Text(
                                                "Total Earning",
                                                style: urbanist600(kGrey, 12),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                501,
                                            child: FittedBox(
                                              child: Text(
                                                "Total",
                                                style: urbanist600(kGrey, 12),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                501,
                                            child: FittedBox(
                                              child: Text(
                                                "Earning",
                                                style: urbanist600(kGrey, 12),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              height: 10.h,
                                            ),
                                          ),
                                          FittedBox(
                                            child: Text(
                                              "\$5,560",
                                              style: urbanist600(kBlack, 20),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width > 415
                                            ? 90.h
                                            : 80.h,
                                    // width: 30.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: klines),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/promotion_bg.png"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                500,
                                            child: FittedBox(
                                              child: Text(
                                                "Withdraw Balance",
                                                style: urbanist600(kGrey, 12),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                501,
                                            child: FittedBox(
                                              child: Text(
                                                "Withdraw",
                                                style: urbanist600(kGrey, 12),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                501,
                                            child: FittedBox(
                                              child: Text(
                                                "Balance",
                                                style: urbanist600(kGrey, 12),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              height: 10.h,
                                            ),
                                          ),
                                          FittedBox(
                                            child: Text(
                                              "\$5,560",
                                              style: urbanist600(kBlack, 20),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "How Cosmetropolis marketing works",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            GridView.count(
                              crossAxisCount:
                                  MediaQuery.of(context).size.width > 700
                                      ? 3
                                      : 1,
                              crossAxisSpacing: 10.w,
                              mainAxisSpacing: 10.w,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width > 700
                                      ? 2
                                      : 3,
                              shrinkWrap: true,
                              children: [
                                ...List.generate(
                                  3,
                                  (index) => Container(
                                    decoration: BoxDecoration(
                                      color: kWhite,
                                      border: Border(
                                        top: BorderSide(
                                          color: kBlue,
                                          width: 1.h,
                                        ),
                                      ),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10.h,
                                          horizontal: 10.w,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Getting Started on Cosmetropolis",
                                              style: GoogleFonts.urbanist(
                                                color: kBlack,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            ...List.generate(
                                              5,
                                              (index) => Text(
                                                "${index + 1}. Using the Cosmetropolis Help Center",
                                                style: GoogleFonts.urbanist(
                                                  color: kBlack,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "How Cosmetropolis marketing works",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  MarketingOverviewCard(),
                                  SizedBox(width: 10.w),
                                  MarketingOverviewCard(),
                                  SizedBox(width: 10.w),
                                  MarketingOverviewCard(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Hear why top professionals love StyleSeat",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 200.h,
                              child: ListView.builder(
                                // shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width >
                                                    600
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 150.h,
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        600
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        3
                                                    : MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.5,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10.r,
                                                    ),
                                                    image: const DecorationImage(
                                                        image: NetworkImage(
                                                            "https://tse4.mm.bing.net/th?id=OIP.LvecETOAVmYiwukoi9SDLQHaEK&pid=Api&P=0&h=180"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              "Jael, a Cosmetropolis pro, talks about why Smart Pricing is her favorite feature on Cosmetropolis.",
                                              style: GoogleFonts.urbanist(
                                                color: kdescription,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "Profile Status",
                              style: urbanist600(kBlack, 20),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class MarketingOverviewCard extends StatelessWidget {
  const MarketingOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 920 ? 92.w : 250.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: klines,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: 50.h,
            // width: 50.w,
            padding: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              color: Color(0xffE0F3FD),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.timer_outlined, color: kBlack),
                SizedBox(
                  width: 3.w,
                ),
                Text("1 Minute", style: urbanist400(kBlack, 12))
              ],
            ),
          ),
          Text("Make your profile stand out by adding your specialties",
              textAlign: TextAlign.center, style: urbanist600(kBlack, 16)),
          SizedBox(
            height: 20.h,
          ),
          CircleAvatar(
            backgroundImage: const NetworkImage(
                "https://tse1.mm.bing.net/th?id=OIP.zVsxx9pE2k-e6iTe5DMFwAHaGv&pid=Api&P=0&h=180"),
            radius: 30.r,
          ),
          // SizedBox(
          //   height: 10.h,
          // ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.stars_outlined, color: kBlack),
              SizedBox(
                width: 3.w,
              ),
              Text(
                "I specialize in...",
                style: urbanist500(kBlack, 12),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 5.w,
              ),
              backgroundColor: kBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            child: Text(
              "Add Specialize in...",
              style: urbanist400(kWhite, 12),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text("No Thanks", style: urbanist500(kBlack, 12)),
        ],
      ),
    );
  }
}
