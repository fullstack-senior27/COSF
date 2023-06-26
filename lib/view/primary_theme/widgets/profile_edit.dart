import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';
import '../screens/unregistered_user/service_details_page.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    // List<StepsCard> steps = [
    //   StepsCard(
    //     title: "Link your bank account",
    //     description: "So you can book and be paid by clients on Cosmetropolis",
    //     image: "assets/icons/bank_acc.png",
    //     buttontxt: "Connect Account",
    //   ),
    List<String> title = [
      "Link your bank account",
      "Add services",
      "Add availability"
    ];
    List<String> description = [
      "So you can book and be paid by clients on Cosmetropolis",
      "So clients can know what to book with you",
      "So clients know when you're available to book"
    ];
    List<String> image = [
      "assets/icons/bank_acc.png",
      "assets/icons/services.png",
      "assets/icons/availability.png"
    ];
    List<String> buttontxt = [
      "Connect Account",
      "Add Services",
      "Set Up Availability"
    ];

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: klines),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: Text("VIP Link",
                                  style: urbanist600(kBlack, 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text("Cosmetropolis.com/m/r/johnwick",
                                  style: urbanist400(kBlue, 12)),
                            ),
                            SizedBox(width: 5.w),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(const ClipboardData(
                                    text: "Cosmetropolis.com/m/r/johnwick"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content:
                                      Text("Coupon code copied to clipboard!"),
                                ));
                              },
                              child: Container(
                                  height: 40.h,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: kBlack,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text("Copy",
                                          style: urbanist600(kWhite, 12)))),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/icons/facebook.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        "assets/icons/insta.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        "assets/icons/twitter.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        "assets/icons/linkdin.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: double.infinity,
                    color: Color(0xFFFEF9ED),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome, John Wick",
                              style: urbanist600(kBlack, 16)),
                          SizedBox(height: 5.h),
                          Text(
                              "Complete these steps in order to list your business on Cosmetropolis and gain new clients!",
                              style: urbanist500(kBlack, 12)),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 200.h,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return FittedBox(
                                  child: Row(
                                    children: [
                                      StepsCard(
                                        title: title[index],
                                        description: description[index],
                                        image: image[index],
                                        buttontxt: buttontxt[index],
                                      ),
                                      SizedBox(width: 10.w),
                                      // StepsCard(),
                                      // SizedBox(width: 10.w),
                                      // StepsCard(),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    color: kBlue,
                    height: 5.h,
                  ),
                  Container(
                    color: Color(0xffE0F3FD),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Get inspiration",
                                    style: urbanist600(kBlack, 16)),
                                SizedBox(height: 5.h),
                                Text(
                                    "See how similar professionals build their profile",
                                    style: urbanist400(kBlack, 12)),
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: kBlack,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    color: Color(0xffFFBC1A),
                    height: 5.h,
                  ),
                  Container(
                    color: Color(0xffFEF9ED),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Set A Monthly Goal",
                                style: urbanist600(kBlack, 16)),
                          ),
                          Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: kBlack,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: const NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.zVsxx9pE2k-e6iTe5DMFwAHaGv&pid=Api&P=0&h=180"),
                            radius: 60.r,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width < 501,
                            child: Container(
                              // width: double.infinity,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.r),
                                  border: Border.all(color: kBlue)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.edit_note_outlined,
                                        color: kBlue,
                                      ),
                                      Text(
                                        "Edit",
                                        style: urbanist600(kBlue, 14),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Eleanor Pena",
                            style: urbanist600(kBlack, 16),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Hair Stylist",
                            style: urbanist400(kdescription, 12),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Business name- Cosmetropolis",
                            style: urbanist400(kdescription, 12),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Instagram - @ mr.johnwick",
                            style: urbanist400(kdescription, 12),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Facebook - @ Mr. Wick",
                            style: urbanist400(kdescription, 12),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Visibility(
                              visible: MediaQuery.of(context).size.width < 501,
                              child: SizedBox(
                                height: 20.h,
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Spacer(),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 500,
                        child: Container(
                          // width: double.infinity,
                          height: 40.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              border: Border.all(color: kBlue)),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.edit_note_outlined,
                                    color: kBlue,
                                  ),
                                  Text(
                                    "Edit",
                                    style: urbanist600(kBlue, 14),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
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
                        Tab(text: 'Services'),
                        Tab(text: 'Review'),
                        Tab(text: 'About'),
                        Tab(text: 'Products'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      height: 600.h,
                      child: TabBarView(controller: _tabcontroller, children: [
                        SingleChildScrollView(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Column(
                                  children: [
                                    const service(),
                                    if (MediaQuery.of(context).size.width < 920)
                                      const Sidebar()
                                    else
                                      Container(),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  ],
                                ),
                              ),
                              if (MediaQuery.of(context).size.width > 920)
                                const Expanded(
                                  flex: 4,
                                  child: Sidebar(),
                                )
                              else
                                Container()
                            ],
                          ),
                        ),
                        Center(
                          child: Text('Preview'),
                        ),
                        Center(
                          child: Text('Promote'),
                        ),
                        Center(
                          child: Text('Personal Info'),
                        ),
                      ]))
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

class StepsCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String buttontxt;

  StepsCard(
      {required this.title,
      required this.description,
      required this.image,
      required this.buttontxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image, height: 30.h),
            SizedBox(height: 20.h),
            Text(title, style: urbanist600(kBlack, 14)),
            SizedBox(height: 5.h),
            Text(description, style: urbanist400(kdescription, 12)),
            SizedBox(height: 20.h),
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
                buttontxt,
                style: urbanist400(kWhite, 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
