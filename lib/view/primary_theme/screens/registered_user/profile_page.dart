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
import '../../widgets/promote_section2.dart';
import '../../widgets/promote_section3.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  int promoteNumber = 0;
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
                                children: [
                                  Expanded(
                                      child: Column(
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
                                  Expanded(
                                      flex: 2,
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
                                                        hintStyle: urbanist400(
                                                            kGrey, 12),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: kGrey),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: kGrey),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.r),
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: kGrey),
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
                                                    print(MediaQuery.of(context)
                                                        .size
                                                        .width);
                                                  },
                                                  child: Container(
                                                      height: 40.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 8.w),
                                                      decoration: BoxDecoration(
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
                                                    flex: MediaQuery.of(context)
                                                                .size
                                                                .width >
                                                            720
                                                        ? 1
                                                        : 0,
                                                    child: Container()),
                                              ],
                                            )
                                          ])),
                                ],
                              ),
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
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          promoteNumber = 1;
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10.w),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                          vertical: 10.h,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
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
                                                children: [
                                                  Text(
                                                    "Drive client bookings on social media",
                                                    style:
                                                        urbanist600(kBlack, 14),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "Downloadable assets, scripts, and tutorials to help drive clients to book you online.",
                                                    style:
                                                        urbanist400(kGrey, 12),
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
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          promoteNumber = 2;
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10.w),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                          vertical: 10.h,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          border: Border.all(color: klines),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Transition calls and messages to online booking",
                                                    style:
                                                        urbanist600(kBlack, 14),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "Manage all your inbound and outbound communication with our helpful templates & tips.",
                                                    style:
                                                        urbanist400(kGrey, 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 15,
                                              color: kBlack,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          promoteNumber = 3;
                                        });
                                      },
                                      child: Container(
                                        // margin: EdgeInsets.only(right: 10.w),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                          vertical: 10.h,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          border: Border.all(color: klines),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Get clients to pre book their next appointment",
                                                    style:
                                                        urbanist600(kBlack, 14),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "Helpful guides to help your clients see the benefits of booking you online.",
                                                    style:
                                                        urbanist400(kGrey, 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 15,
                                              color: kBlack,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
          Center(
            child: Text('Personal Info'),
          ),
          Center(
            child: Text('Business Info'),
          ),
          Center(
            child: Text('Service Menu'),
          ),
          Center(
            child: Text('Manage Availability'),
          ),
          Center(
            child: Text('Photos'),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Avg. user rating',
                                  style: urbanist600(kBlack, 16)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.star_rate_rounded,
                                    color: kBlack,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text('4.82', style: urbanist600(kBlack, 20)),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text('856k booking reviews',
                                  style: urbanist400(kBlack, 12)),
                            ],
                          ),
                          const Spacer(),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: SizedBox(
                              width: 80.w,
                              child: ListView.builder(
                                itemCount: 5,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: 60.w,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star_rate_rounded,
                                          color: kBlack,
                                          size: 10,
                                        ),
                                        Text("${5 - index}",
                                            style: urbanist400(kBlack, 12)),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Expanded(
                                          child: LinearProgressBar(
                                            maxSteps: 100,
                                            progressType: LinearProgressBar
                                                .progressTypeLinear,
                                            currentStep: 50,
                                            progressColor: kBlue,
                                            backgroundColor: Colors.grey,
                                            valueColor:
                                                const AlwaysStoppedAnimation<
                                                    Color>(
                                              kBlack,
                                            ),
                                            semanticsLabel: "Label",
                                            semanticsValue: "Value",
                                            minHeight: 3.h,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("11K",
                                            style:
                                                urbanist400(kdescription, 12)),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: klines,
                      ),
                      SizedBox(height: 20.h),
                      ...List.generate(
                        5,
                        (index) => Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 10.h,
                            ),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                color: kdisable,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: kGrey.withOpacity(0.05),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: const Offset(
                                    0,
                                    1,
                                  ), // changes position of shadow
                                ),
                              ],
                            ),
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      "https://tse3.mm.bing.net/th?id=OIP.cXwKK9Fo4mL9Hc-nEiUoMgHaHa&pid=Api&P=0&h=180",
                                      width: 30.w,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Jacob Jones",
                                            style: urbanist600(kBlack, 14),
                                          ),
                                          // SizedBox(
                                          //   height: 10.h,
                                          // ),
                                          SizedBox(
                                            width: 200.w,
                                            child: Text(
                                                "April 2023 • Haltu, Kolkata, West Bengal 700078, India",
                                                style: urbanist400(kBlack, 12)),
                                          ),
                                          if (MediaQuery.of(context)
                                                  .size
                                                  .width <
                                              920)
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 20,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 1.w),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star_rate_rounded,
                                                color: kBlack,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
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
                                            Spacer(),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 20,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 1.w),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star_rate_rounded,
                                                color: kBlack,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                      )
                                    else
                                      Container()
                                  ],
                                ),
                                Text(
                                  "Very happy with my visit at this salon. It was my first time there which made me a bit nervous. Esme was very helpful, knowledgeable, beauticianl and attentive. I am very happy with my new hairstyle. Very nice atmosphere. It’s hard to find a hairdresser you can trust but I think I just did. Highly recommended.",
                                  style: urbanist400(kdescription, 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Footer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
