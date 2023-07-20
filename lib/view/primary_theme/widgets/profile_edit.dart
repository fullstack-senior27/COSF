// ignore_for_file: use_decorated_box

import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/service_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/registered_user_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_collapse/image_collapse.dart';
import 'package:latlong2/latlong.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  List<String> items = [
    "View All",
    "Women",
    "Trends",
    "Success Stories",
    "Skin",
    "Promotions",
    "Nails",
    "Makeup",
    "Lashes",
    "How- Tos",
    "Hair",
    "Eyebrows",
    "Client Relationship",
    "Brows",
    "Beautician Growth",
    "Beard Style"
  ];
  int selectedScreen = 0;
  int selected = 0;
  List<Widget> screens = [
    const ServiceI(),
    const ReviewI(),
    const aboutI(),
    const productI(),
  ];
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

  @override
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
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
                            padding: EdgeInsets.only(left: 4.w),
                            child: Text(
                              "VIP Link",
                              style: urbanist600(kBlack, 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.w),
                            child: Text(
                              "Cosmetropolis.com/m/r/johnwick",
                              style: urbanist400(kBlue, 12),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          InkWell(
                            onTap: () {
                              Clipboard.setData(
                                const ClipboardData(
                                  text: "Cosmetropolis.com/m/r/johnwick",
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text("Coupon code copied to clipboard!"),
                                ),
                              );
                            },
                            child: Container(
                              height: 40.h,
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              decoration: BoxDecoration(
                                color: kBlack,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Copy",
                                  style: urbanist600(kWhite, 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width >= 700,
                      child: const Spacer(),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: Row(
                        children: [
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
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Visibility(
                  visible: MediaQuery.of(context).size.width <= 700,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/facebook.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(
                        "assets/icons/insta.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(
                        "assets/icons/twitter.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(
                        "assets/icons/linkdin.png",
                        height: 30.h,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Visibility(
                  visible: MediaQuery.of(context).size.width <= 700,
                  child: SizedBox(height: 20.h),
                ),
                Container(
                  width: double.infinity,
                  color: const Color(0xFFFEF9ED),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome, John Wick",
                          style: urbanist600(kBlack, 15),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Complete these steps in order to list your business on Cosmetropolis and gain new clients!",
                          style: urbanist500(kBlack, 11),
                        ),
                        SizedBox(height: 20.h),
                        SizedBox(
                          height: 200.h,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
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
                                    SizedBox(width: 8.w),
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
                SizedBox(height: 20.h),
                Container(
                  color: kBlue,
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Client Photo",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: kGrey,
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: SingleChildScrollView(
                            child: SizedBox(
                              width: MediaQuery.of(
                                        context,
                                      ).size.width >
                                      900
                                  ? 400
                                  : MediaQuery.of(
                                        context,
                                      ).size.width *
                                      0.8,
                              child: AddClientPhoto(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Add Client Photo",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                    color: kGrey,
                                  ),
                                  onPressed: () {
                                    Get.back();
                                  },
                                )
                              ],
                            ),
                            backgroundColor: const Color(0xfff8f8f8),
                            content: SingleChildScrollView(
                              child: SizedBox(
                                width: MediaQuery.of(
                                          context,
                                        ).size.width >
                                        900
                                    ? 400
                                    : MediaQuery.of(
                                          context,
                                        ).size.width *
                                        0.8,
                                child: const AddClientPhoto(),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      color: const Color(0xffE0F3FD),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 10.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get inspiration",
                                    style: urbanist600(kBlack, 16),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "See how similar professionals build their profile",
                                    style: urbanist400(kBlack, 12),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: kBlack,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  color: const Color(0xffFFBC1A),
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Set a monthly goal and we’ll give you\ntips on how to get there.",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: kGrey,
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                              )
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: SingleChildScrollView(
                            child: SizedBox(
                              width: MediaQuery.of(
                                        context,
                                      ).size.width >
                                      900
                                  ? 600
                                  : MediaQuery.of(
                                        context,
                                      ).size.width *
                                      0.8,
                              child: const SetMonthlyGoal(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    color: const Color(0xffFEF9ED),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Set A Monthly Goal",
                              style: urbanist600(kBlack, 16),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: kBlack,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MediaQuery.of(context).size.width > 700
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment:
                          MediaQuery.of(context).size.width > 700
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: const NetworkImage(
                            "https://t3.ftcdn.net/jpg/02/00/90/24/360_F_200902415_G4eZ9Ok3Ypd4SZZKjc8nqJyFVp1eOD6V.jpg",
                          ),
                          radius: 60.r,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Visibility(
                          visible: MediaQuery.of(context).size.width < 701,
                          child: Container(
                            // width: 36.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              border: Border.all(color: kBlue),
                            ),
                            child: TextButton.icon(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Online Booking & Profile",
                                            style: GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.close,
                                              color: kGrey,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                      backgroundColor: const Color(0xfff8f8f8),
                                      content: SingleChildScrollView(
                                        child: SizedBox(
                                          width: MediaQuery.of(
                                                    context,
                                                  ).size.width >
                                                  900
                                              ? 400
                                              : MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.8,
                                          child: const OnlineBookingProfile(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.edit_note_outlined,
                                color: kBlue,
                              ),
                              label: Text(
                                "Edit",
                                style: urbanist600(kBlue, 14),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Visibility(
                          visible: MediaQuery.of(context).size.width <= 700,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
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
                                allowHalfRating: true,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.w),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: Color(0xFFFF7500),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      height: 40.h,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kBlack,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                          ),
                                        ),
                                        child: Text(
                                          "View Insights",
                                          style: urbanist400(kWhite, 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  // outline button
                                  FittedBox(
                                    child: Container(
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        border: Border.all(),
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Promote Profile",
                                          style: urbanist400(kBlack, 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Visibility(
                                visible:
                                    MediaQuery.of(context).size.width < 481,
                                child: SizedBox(
                                  height: 20.h,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: SizedBox(
                        width: 10.w,
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: Column(
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
                            allowHalfRating: true,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star_rate_rounded,
                              color: Color(0xFFFF7500),
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              FittedBox(
                                child: SizedBox(
                                  height: 40.h,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kBlack,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                    child: Text(
                                      "View Insights",
                                      style: urbanist400(kWhite, 12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              // outline button
                              FittedBox(
                                child: Container(
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    border: Border.all(),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Promote Profile",
                                      style: urbanist400(kBlack, 12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width <= 700,
                            child: SizedBox(
                              height: 10.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: const Spacer(),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: Container(
                        width: 36.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border: Border.all(color: kBlue),
                        ),
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Online Booking & Profile",
                                        style: GoogleFonts.urbanist(
                                          color: kBlack,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.close,
                                          color: kGrey,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                  backgroundColor: const Color(0xfff8f8f8),
                                  content: SingleChildScrollView(
                                    child: SizedBox(
                                      width: MediaQuery.of(
                                                context,
                                              ).size.width >
                                              900
                                          ? 400
                                          : MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.8,
                                      child: const OnlineBookingProfile(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 950
                        ? 120.w
                        : double.infinity,
                    child: TabBar(
                      physics: const BouncingScrollPhysics(),
                      dividerColor: kGrey.withOpacity(0.5),
                      // isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: _tabcontroller,
                      indicatorColor: kBlack,
                      labelColor: kBlack,
                      unselectedLabelColor: kGrey,
                      onTap: (value) {
                        setState(() {
                          selectedScreen = value;
                        });
                      },
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
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: screens[selectedScreen],
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: SizedBox(
                        width: 10.w,
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: const Expanded(
                        flex: 2,
                        child: SingleChildScrollView(child: Sidebar()),
                      ),
                    )
                  ],
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
    );
  }
}

class StepsCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String buttontxt;

  const StepsCard({
    required this.title,
    required this.description,
    required this.image,
    required this.buttontxt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      width: MediaQuery.of(context).size.width < 700
          ? MediaQuery.of(context).size.width * 0.75
          : MediaQuery.of(context).size.width * 0.24,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Column(
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
                  vertical:
                      MediaQuery.of(context).size.width < 700 ? 10.h : 0.h,
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

Widget sideEdit() {
  return Padding(
    padding: EdgeInsets.only(left: 8.0.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ImageCollapse(
          crossAxisCount: 10,
          titleGallery: "Gallery",
          imageUrls: [
            "https://images.unsplash.com/photo-1560066984-138dadb4c035?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
            "https://images.news18.com/ibnlive/uploads/2022/11/001-10-1-166782742016x9.png",
            "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
            "https://images.unsplash.com/photo-1560066984-138dadb4c035?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
            "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
            "https://plus.unsplash.com/premium_photo-1677616798094-d34c85b61e36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60"
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 210.h,
          width: double.infinity,
          child: ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
            ),
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(
                  22.57290731661063,
                  88.43274351134704,
                ),
                zoom: 15,
                keepAlive: true,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Posuere netus magnis eu nisl pellentesque ornare. Facilisis eget lectus proin diam facilisi sit scelerisque egestas. Massa natoque ut nisl porttitor magna in tellus pellentesque pretium. Et orci maecenas rhoncus felis platea. Morbi a sagittis scelerisque tempor suspendisse vitae. Maecenas mattis interdum sagittis sem purus suspendisse mi elementum mattis.",
          style: urbanist400(kdescription, 12),
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Edit About Me",
            style: urbanist500(kBlue, 14),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Business Hours",
          style: urbanist500(kBlack, 16),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
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
                ),
              ),
            ],
          ),
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 4.h,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Monday",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          "10:00 - 20:00",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    if (index != 6)
                      const Divider(
                        color: kdisable,
                      )
                    else
                      const SizedBox.shrink()
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Manage Availability",
            style: urbanist500(kBlue, 14),
          ),
        ),
      ],
    ),
  );
}
