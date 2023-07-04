import 'package:better_cupertino_slider/better_cupertino_slider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_section1.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../widgets/footer.dart';
import '../../widgets/profile_edit.dart';
import '../../widgets/profile_preview.dart';
import '../../widgets/profile_tabs.dart';
import '../../widgets/promote_section2.dart';
import '../../widgets/promote_section3.dart';
import '../../widgets/promote_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  int promoteNumber = 0;
  List<String> promoteListTitle = [
    "Drive client bookings on social media",
    "Transition calls and messages to online booking",
    "Get clients to pre book their next appointment"
  ];
  List<String> promoteListDesc = [
    "Downloadable assets, scripts, and tutorials to help drive clients to book you online.",
    "Manage all your inbound and outbound communication with our helpful templates & tips.",
    "Helpful guides to help your clients see the benefits of booking you online."
  ];
  @override
  void initState() {
    _tabcontroller = TabController(length: 9, vsync: this);
    promoteNumber = 0;
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
      appBar: AppBar(
        backgroundColor: kWhite,
        foregroundColor: kWhite,
        surfaceTintColor: kWhite,
        toolbarHeight: 5.h,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                dividerColor: kGrey.withOpacity(0.5),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabcontroller,
                indicatorColor: kBlack,
                labelColor: kBlack,
                unselectedLabelColor: kGrey,
                tabs: const [
                  Tab(text: 'Edit'),
                  Tab(text: 'Preview'),
                  Tab(text: 'Promote'),
                  Tab(text: 'Personal Info'),
                  Tab(text: 'Business Info'),
                  Tab(text: 'Service Menu'),
                  Tab(text: 'Manage Availability'),
                  Tab(text: 'Photos'),
                  Tab(text: 'Star Rating & Reviews'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          // Edit Tab >>>>>>>>>>>>>>>>>>>>>>>>
          ProfileEdit(),
          // Preview Tab >>>>>>>>>>>>>>>>>>>>>>>>
          ProfilePreview(),
          // Promote Tab >>>>>>>>>>>>>>>>>>>>>>>>
          Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  if (promoteNumber == 0)
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Promote Profile",
                                      style: urbanist600(kBlack, 20),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      child: Text(
                                          "Save time and get protection from no shows and late cancellations",
                                          style: urbanist500(kBlack, 13)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "April client-booked appointments",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: BetterCupertinoSlider(
                                          min: 0,
                                          max: 10,
                                          value: 5,
                                          configure:
                                              BetterCupertinoSliderConfigure(
                                            trackHorizontalPadding: 0.0,
                                            trackHeight: 8.h,
                                            trackLeftColor: kBlue,
                                            trackRightColor:
                                                Colors.grey.withOpacity(0.3),
                                            thumbRadius: 8.r,
                                            thumbPainter: (canvas, rect) {
                                              final center = Offset(
                                                  rect.center.dx,
                                                  rect.center.dy);
                                              final radius =
                                                  rect.shortestSide / 2.0;
                                              canvas.drawCircle(center, radius,
                                                  Paint()..color = kBlue);
                                              canvas.drawCircle(
                                                  center,
                                                  radius - 2.0,
                                                  Paint()
                                                    ..color = Colors.white);
                                            },
                                          ),
                                          onChanged: (value) {
                                            // setState(() {
                                            //   priceRange = value;
                                            // });
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Below Average",
                                              style: urbanist400(kBlack, 12)),
                                          Text("Average",
                                              style: urbanist400(kBlack, 12)),
                                          Text("Awesome",
                                              style: urbanist400(kBlack, 12)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                          "0% of your appointments were client booked. Successful pros streamline their business by having over 80% client booked.",
                                          style: urbanist400(kBlack, 12)),
                                    ],
                                  )),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Visibility(
                                    visible:
                                        MediaQuery.of(context).size.width > 700,
                                    child: Expanded(
                                        flex:
                                            MediaQuery.of(context).size.width >
                                                    700
                                                ? 2
                                                : 1,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Invite clients to book",
                                                style: urbanist600(kBlack, 18),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: 40.h,
                                                      child: TextField(
                                                        readOnly: true,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              "Cosmetropolis.com/",
                                                          hintStyle:
                                                              urbanist400(
                                                                  kGrey, 12),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color:
                                                                        kGrey),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color:
                                                                        kGrey),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color:
                                                                        kGrey),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      print(
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width);
                                                    },
                                                    child: Container(
                                                        height: 40.h,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    8.w),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: kBlack,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: Center(
                                                            child: Text("Copy",
                                                                style:
                                                                    urbanist600(
                                                                        kWhite,
                                                                        12)))),
                                                  ),
                                                  Expanded(
                                                      flex:
                                                          MediaQuery.of(context)
                                                                      .size
                                                                      .width >
                                                                  720
                                                              ? 1
                                                              : 0,
                                                      child: Container()),
                                                ],
                                              )
                                            ])),
                                  ),
                                ],
                              ),
                              Visibility(
                                  visible:
                                      MediaQuery.of(context).size.width < 701,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "Invite clients to book",
                                          style: urbanist600(kBlack, 18),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: CopyField()),
                                      ])),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Drive more client bookings",
                                style: urbanist600(kBlack, 18),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                height: 130.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          promoteNumber = index + 1;
                                        });
                                      },
                                      child: AspectRatio(
                                        aspectRatio: 2.5,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10.w),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8.w,
                                            vertical: 10.h,
                                          ),
                                          // width: MediaQuery.of(context)
                                          //         .size
                                          //         .width *
                                          //     0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            border: Border.all(color: klines),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      promoteListTitle[index],
                                                      style: urbanist600(
                                                          kBlack, 14),
                                                    ),
                                                    SizedBox(
                                                      height: 5.h,
                                                    ),
                                                    Text(
                                                      promoteListDesc[index],
                                                      style: urbanist400(
                                                          kGrey, 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                size: 20.sp,
                                                color: kBlack,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ]))
                  else
                    promoteNumber == 1
                        ? PromoteSection1()
                        : promoteNumber == 2
                            ? PromoteSection2()
                            : PromoteSection3(),
                  SizedBox(height: 40.h),
                  Footer(),
                ],
              ),
            ),
          ),
          //Personal Info Tab>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Container(
              color: Color(0xffF8F8F8),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  PersonalInfo(),
                  SizedBox(height: 40.h),
                  Footer(),
                ],
              ),
            ),
          ),
          //Business Info Tab>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Container(
              color: Color(0xffF8F8F8),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  BusinessInfo(),
                  SizedBox(height: 40.h),
                  Footer(),
                ],
              ),
            ),
          ),
          //Service Menu Tab>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Container(
              color: Color(0xffF8F8F8),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  ServiceMenu(),
                  SizedBox(height: 40.h),
                  Footer(),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: const Color(0xffF8F8F8),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  const ManageAvailability(),
                  SizedBox(height: 40.h),
                  const Footer(),
                ],
              ),
            ),
          ),
          //Photos Tab>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Container(
              color: const Color(0xffF8F8F8),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  const PhotosTab(),
                  SizedBox(height: 40.h),
                  const Footer(),
                ],
              ),
            ),
          ),
          //Stars and Rating & Reviews Tab>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: const ProfileReviews(),
              ),
              SizedBox(height: 40.h),
              const Footer(),
            ],
          ))
        ],
      ),
    );
  }
}
