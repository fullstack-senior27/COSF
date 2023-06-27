import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../widgets/footer.dart';
import '../../widgets/profile_edit.dart';
import '../../widgets/profile_preview.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 9, vsync: this);
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
          Center(
            child: Text('Promote'),
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
