import 'package:better_cupertino_slider/better_cupertino_slider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/service_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class BeauticiansListWebView extends StatelessWidget {
  const BeauticiansListWebView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> timings = ["Thu 30", "Fri 30", "Sat 30", "Sun 30"];
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(
          color: klines,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: InkWell(
        onTap: () {
          context.go("/beautician-listing/service-details");
        },
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 160.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: const DecorationImage(
                          image:
                              NetworkImage("https://i.imgur.com/i5H53SM.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      height: 160.h,
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 10.h,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Akeba Thompson",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // SizedBox(
                              //   width: 10.w,
                              // ),
                              Image.asset(
                                "assets/icons/verify.webp",
                                height: 18.h,
                                width: 18.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: kdescription,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Expanded(
                                child: Text(
                                  "4517 Washington Ave. Manchester, Kentucky 39495",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kdescription,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                ignoreGestures: true,
                                itemSize: 20.sp,
                                initialRating: 4.5,
                                allowHalfRating: true,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rounded,
                                  color: Color(0xffff7500),
                                ),
                                onRatingUpdate: (rating) {},
                                unratedColor: kGrey,
                              ),
                              Text(
                                "4.0 (180 Reviews)",
                                style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FittedBox(
                                child: Text(
                                  "MORNING    ",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: SizedBox(
                                  height: 30.h,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: timings.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 1.w,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              // setState(() {
                                              //   selected = index;
                                              // });
                                            },
                                            child: FittedBox(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5.r,
                                                  ),
                                                  color:
                                                      const Color(0xffd1d1d1),
                                                  // border: Border.all(
                                                  //   color: selected != index
                                                  //       ? Colors.grey
                                                  //       : Colors.transparent,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    timings[index],
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: kBlack,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FittedBox(
                                child: Text(
                                  "AFTERNOON",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: SizedBox(
                                  height: 30.h,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: timings.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 1.w,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              // setState(() {
                                              //   selected = index;
                                              // });
                                            },
                                            child: FittedBox(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5.r,
                                                  ),
                                                  color: kWhite,
                                                  border: Border.all(),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    timings[index],
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: kBlack,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text(
                      "English ",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "- Silk Press & amp. Haircut",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "60 Mins - \$145",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: kselected,
                        // border: Border.all(
                        //   color: kBlack,
                        //   width: 1.0,
                        // ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.r,
                          horizontal: 7.w,
                        ),
                        child: Text(
                          "Choose",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: kselected,
              ),
              SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text(
                      "English ",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "- Silk Press & amp. Haircut",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "60 Mins - \$145",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: kselected,
                        // border: Border.all(
                        //   color: kBlack,
                        //   width: 1.0,
                        // ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.r,
                          horizontal: 7.w,
                        ),
                        child: Text(
                          "Choose",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: kselected,
              ),
              SizedBox(
                height: 40.h,
                child: Row(
                  children: [
                    Text(
                      "English ",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "- Silk Press & amp. Haircut",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "60 Mins - \$145",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: kselected,
                        // border: Border.all(
                        //   color: kBlack,
                        //   width: 1.0,
                        // ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.r,
                          horizontal: 7.w,
                        ),
                        child: Text(
                          "Choose",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: kselected,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("More Information"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(MediaQuery.of(context).size.width);
                    },
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(kBlack),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        ),
                      ),
                    ),
                    child: Text(
                      "Make an Appointment",
                      style: GoogleFonts.urbanist(
                        fontSize: MediaQuery.of(context).size.width > 1080
                            ? 14.sp
                            : MediaQuery.of(context).size.width > 950
                                ? 10.sp
                                : 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kWhite,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeauticiansListMobView extends StatelessWidget {
  const BeauticiansListMobView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> timings = ["Thu 30", "Fri 30", "Sat 30", "Sun 30"];
    return InkWell(
      onTap: () {
        context.go("/beautician-listing/service-details");
      },
      child: Container(
        decoration: BoxDecoration(
          color: kWhite,
          border: Border.all(
            color: klines,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 15.h),
          child: Column(
            children: [
              Container(
                height: 150.h,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/icons/blog_banner.webp"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Akeba Thompson",
                    style: GoogleFonts.urbanist(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // SizedBox(
                  //   width: 10.w,
                  // ),
                  Image.asset(
                    "assets/icons/verify.webp",
                    height: 18.h,
                    width: 18.w,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: kdescription,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Text(
                      "4517 Washington Ave. Manchester, Kentucky 39495",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kdescription,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    ignoreGestures: true,
                    itemSize: 20.sp,
                    initialRating: 4.5,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xffff7500),
                    ),
                    onRatingUpdate: (rating) {},
                    unratedColor: kGrey,
                  ),
                  Text(
                    "4.0 (180 Reviews)",
                    style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              // const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "MORNING    ",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: SizedBox(
                      height: 30.h,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: timings.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.w),
                              child: GestureDetector(
                                onTap: () {
                                  // setState(() {
                                  //   selected = index;
                                  // });
                                },
                                child: FittedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: const Color(0xffd1d1d1),
                                      // border: Border.all(
                                      //   color: selected != index
                                      //       ? Colors.grey
                                      //       : Colors.transparent,
                                      //   width: 1.0,
                                      // ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        timings[index],
                                        style: GoogleFonts.urbanist(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "AFTERNOON",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: SizedBox(
                      height: 30.h,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: timings.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.w),
                              child: GestureDetector(
                                onTap: () {
                                  // setState(() {
                                  //   selected = index;
                                  // });
                                },
                                child: FittedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: kWhite,
                                      border: Border.all(),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        timings[index],
                                        style: GoogleFonts.urbanist(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 51.h,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "English ",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "- Silk Press & amp. Haircut",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "60 Mins - \$145",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kGrey,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: kselected,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.r,
                                      horizontal: 7.w,
                                    ),
                                    child: Text(
                                      "Choose",
                                      style: GoogleFonts.urbanist(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: kselected,
                      ),
                    ],
                  );
                },
              ),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: kBlue, width: 2),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "More Information",
                    style: GoogleFonts.urbanist(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: kBlue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print(MediaQuery.of(context).size.width);
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(kBlack),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      ),
                    ),
                  ),
                  child: Text(
                    "Make an Appointment",
                    style: GoogleFonts.urbanist(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeauticiansSideFilter extends StatefulWidget {
  const BeauticiansSideFilter({super.key});

  @override
  State<BeauticiansSideFilter> createState() => _BeauticiansSideFilterState();
}

class _BeauticiansSideFilterState extends State<BeauticiansSideFilter> {
  double priceRange = 100;
  List<String> servicesList = [
    'Medium knotless/Box Braids',
    'Fixing an issue',
    'Shampoo and Style',
    'Hair Spa',
    'Makeup',
    'Nail Art',
    'Manicure and Pedicure'
  ];

  int selectedService = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price Range",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$50",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                    Text(
                      "\$100",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                    Text(
                      "\$200",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: BetterCupertinoSlider(
                    min: 50,
                    max: 100,
                    value: priceRange,
                    configure: BetterCupertinoSliderConfigure(
                      trackHorizontalPadding: 0.0,
                      trackHeight: 8.h,
                      trackLeftColor: kBlue,
                      trackRightColor: Colors.grey.withOpacity(0.3),
                      thumbRadius: 8.r,
                      thumbPainter: (canvas, rect) {
                        final center = Offset(rect.center.dx, rect.center.dy);
                        final radius = rect.shortestSide / 2.0;
                        canvas.drawCircle(
                          center,
                          radius,
                          Paint()..color = kBlue,
                        );
                        canvas.drawCircle(
                          center,
                          radius - 2.0,
                          Paint()..color = Colors.white,
                        );
                      },
                    ),
                    onChanged: (value) {
                      setState(() {
                        priceRange = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sort Price",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                SizedBox(
                  height: 5.h,
                ),
                RadioListTile(
                  title: Text(
                    "Low to High",
                    style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kBlack,
                    ),
                  ),
                  value: 0,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: EdgeInsets.zero,
                  activeColor: kBlue,
                  groupValue: selectedService,
                  onChanged: (value) {
                    setState(() {
                      selectedService = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                RadioListTile(
                  title: Text(
                    "High to Low",
                    style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kBlack,
                    ),
                  ),
                  value: 1,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: EdgeInsets.zero,
                  activeColor: kBlue,
                  groupValue: selectedService,
                  onChanged: (value) {
                    setState(() {
                      selectedService = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service Type",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: servicesList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return RadioListTile(
                      title: Text(
                        servicesList[index],
                        style: GoogleFonts.urbanist(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kBlack,
                        ),
                      ),
                      value: index,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: EdgeInsets.zero,
                      activeColor: kBlue,
                      groupValue: selectedService,
                      onChanged: (value) {
                        setState(() {
                          selectedService = value!;
                        });
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rating",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                SizedBox(
                  height: 5.h,
                ),
                //handle overflow between 861 to 701
                if (MediaQuery.of(context).size.width > 1165)
                  webRatingBar()
                else
                  mobRatingBar(),

                SizedBox(
                  height: 5.h,
                ),
                //another radiolist tile
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget webRatingBar() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              width: 20.w,
              child: RadioListTile(
                value: 5 - index,
                activeColor: kBlue,
                groupValue: selectedService,
                onChanged: (value) {
                  setState(() {
                    selectedService = value!;
                  });
                },
              ),
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 20.sp,
              initialRating: 5.0 - index,
              allowHalfRating: true,
              itemBuilder: (context, _) => const Icon(
                Icons.star_rounded,
                color: Color(0xffff7500),
                size: 3,
              ),
              onRatingUpdate: (rating) {},
              unratedColor: klines,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              flex: MediaQuery.of(context).size.width > 1165 ? 1 : 0,
              child: SizedBox(
                width: 30.w,
                child: LinearProgressBar(
                  maxSteps: 100,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 50,
                  progressColor: kBlue,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xffff7500),
                  ),
                  semanticsLabel: "Label",
                  semanticsValue: "Value",
                  minHeight: 3.h,
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "144",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBlack,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget TabRatingBar() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              width: 20.w,
              child: RadioListTile(
                value: 5 - index,
                activeColor: kBlue,
                groupValue: selectedService,
                onChanged: (value) {
                  setState(() {
                    selectedService = value!;
                  });
                },
              ),
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 20.sp,
              initialRating: 5.0 - index,
              allowHalfRating: true,
              itemBuilder: (context, _) => const Icon(
                Icons.star_rounded,
                color: Color(0xffff7500),
                size: 3,
              ),
              onRatingUpdate: (rating) {},
              unratedColor: klines,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              flex: MediaQuery.of(context).size.width > 1165 ? 1 : 0,
              child: SizedBox(
                width: 30.w,
                child: LinearProgressBar(
                  maxSteps: 100,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 50,
                  progressColor: kBlue,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xffff7500),
                  ),
                  semanticsLabel: "Label",
                  semanticsValue: "Value",
                  minHeight: 3.h,
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "144",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBlack,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget mobRatingBar() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: RadioListTile(
                value: 5 - index,
                // contentPadding: EdgeInsets.only(left: 8.0, right: 0.0),
                activeColor: kBlue,
                groupValue: selectedService,
                title: Row(
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 20.sp,
                      initialRating: 5.0 - index,
                      allowHalfRating: true,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rounded,
                        color: Color(0xffff7500),
                        size: 3,
                      ),
                      onRatingUpdate: (rating) {},
                      unratedColor: klines,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 3.w,
                      ),
                    ),
                    Text(
                      "144",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                  ],
                ),
                onChanged: (value) {
                  setState(() {
                    selectedService = value!;
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
