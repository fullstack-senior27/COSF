// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/beauticians_list_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Image image1;
  final TextEditingController _dateController = TextEditingController();
  List<String> blogimg = [
    "https://i.imgur.com/Yl5A28c.webp",
    "https://i.imgur.com/gax4BO9.webp",
    "https://i.imgur.com/n9ckE5M.webp",
    "https://t4.ftcdn.net/jpg/04/35/38/13/360_F_435381398_Z5mBaTW5HHD3748nsGRDsFQr0iXa893X.jpg"
  ];

  List<String> serviceimg = [
    "https://i.imgur.com/p9IzdwU.webp",
    "https://i.imgur.com/Oif31Oz.webp",
    "https://i.imgur.com/z7l6NNF.webp",
    "https://i.imgur.com/MT1HxiT.webp",
    "https://i.imgur.com/4JvUJRQ.webp",
    "https://i.imgur.com/8CVJF3x.webp",
    "https://i.imgur.com/dAOC8GF.webp",
    "https://i.imgur.com/1F9IUEz.webp",
  ];

  // create list of service of tittle images
  List<String> servicetittle = [
    "Braids",
    "Natural hairs",
    "Haircut",
    "Men’s Haircut",
    "Silk press",
    "Nails",
    "Eyelashes",
    "Kids",
  ];
  int selectedIndexOfservice = 0;


  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "assets/icons/banner_p.webp",
      width: double.infinity,
      fit: BoxFit.cover,
      // height: MediaQuery.of(context).size.height,
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: image1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find Best Services Near you",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Discover & book local beauty Beautician",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  if (MediaQuery.of(context).size.width > 700)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      // ignore: use_decorated_box
                      child: Container(
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Services or beautician name",
                                  hintStyle: GoogleFonts.urbanist(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.all(10.sp),
                                    child: const ImageIcon(
                                      AssetImage(
                                        "assets/icons/search.webp",
                                      ),
                                      color: Color.fromARGB(155, 97, 95, 95),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: kWhite,
                                    ),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: kWhite,
                                    ),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: kWhite,
                              child: Container(
                                height: 52.h,
                                width: 0.5.w,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFB7B7B7),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Location",
                                  hintStyle: GoogleFonts.urbanist(
                                    color: kGrey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.all(10.sp),
                                    child: const ImageIcon(
                                      AssetImage(
                                        "assets/icons/location.webp",
                                      ),
                                      color: Color.fromARGB(155, 97, 95, 95),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: kWhite,
                                    ),
                                    borderRadius: BorderRadius.circular(0.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: kWhite,
                                    ),
                                    borderRadius: BorderRadius.circular(0.r),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: kWhite,
                              child: Container(
                                height: 52.h,
                                width: 0.5.w,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFB7B7B7),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _dateController,
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Date",
                                  hintStyle: GoogleFonts.urbanist(
                                    color: kGrey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context:
                                            context, //context of current state
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(
                                          2000,
                                        ), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101),
                                      );

                                      if (pickedDate != null) {
                                        //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);

                                        _dateController.text =
                                            formattedDate; //set output date to TextField value.
                                        //formatted date output using intl package =>  2021-03-16
                                      }
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: const ImageIcon(
                                        AssetImage(
                                          "assets/icons/calendar.webp",
                                        ),
                                        color: Color.fromARGB(155, 97, 95, 95),
                                      ),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: kWhite,
                                    ),
                                    borderRadius: BorderRadius.circular(0.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.r),
                                    borderSide: const BorderSide(
                                      color: kWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: kWhite,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 15.h,
                                      horizontal: 10.w,
                                    ),
                                    backgroundColor: kBlue,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                  ),
                                  onPressed: () {
                                    context.go("/beautician-listing");
                                  },
                                  child: Text(
                                    "Search",
                                    style: TextStyle(
                                      color: kWhite,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          TextField(
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Services or beautician name",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: const Icon(
                                Icons.search,
                                color: kGrey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Location",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: const Icon(
                                Icons.location_on,
                                color: kGrey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            controller: _dateController,
                            keyboardType: TextInputType.datetime,
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Date",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: InkWell(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context, //context of current state
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(
                                      2000,
                                    ), //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101),
                                  );

                                  if (pickedDate != null) {
                                    //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);

                                    _dateController.text =
                                        formattedDate; //set output date to TextField value.
                                    //formatted date output using intl package =>  2021-03-16
                                  }
                                },
                                child: const Icon(
                                  Icons.date_range,
                                  color: kGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical:
                                      MediaQuery.of(context).size.width > 700
                                          ? 15.h
                                          : 16.h,
                                ),
                                backgroundColor: kBlue,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                              ),
                              onPressed: () {
                                context.go("/beautician-listing");
                              },
                              child: Text(
                                "Search",
                                style: TextStyle(
                                  color: kWhite,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            "assets/icons/wwo_img.webp",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.width > 700 ? 160.h : 110.h,
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 765
                    ? 4
                    : MediaQuery.of(context).size.width > 360
                        ? 2
                        : 1,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                childAspectRatio: MediaQuery.of(context).size.width > 1300
                    ? 0.68
                    : MediaQuery.of(context).size.width > 760
                        ? MediaQuery.of(context).size.width > 700
                            ? 0.62
                            : 0.8
                        : MediaQuery.of(context).size.width > 360
                            ? 0.7
                            : 0.75,
              ),
              children: [
                ...List.generate(
                  serviceimg.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 15.w),
                    child: InkWell(
                      onHover: (value) {
                        selectedIndexOfservice = index;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          border: Border.all(
                            color: kdisable,
                          ),
                        ),
                        padding: EdgeInsets.all(10.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              fit: StackFit.passthrough,
                              alignment: Alignment.bottomRight,
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0.r)),
                                  child: CachedNetworkImage(
                                    imageUrl: serviceimg[index],
                                    width: double.infinity,
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                Visibility(
                                  visible: selectedIndexOfservice == index
                                      ? true
                                      : false,
                                  child: Positioned(
                                    right: 10,
                                    bottom: -15,
                                    child: CircleAvatar(
                                      backgroundColor: kBlue,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: kWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              servicetittle[index],
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GestureDetector(
              onTap: () => {},
              child: Image.asset(
                "assets/icons/home_banner_p.webp",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Image.asset(
            "assets/icons/mcp_img.webp",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.width > 700 ? 160.h : 110.h,
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              height: MediaQuery.of(context).size.width > 700 ? 320.h : 250.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: blogimg.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => {
                      context.go("/blogs")
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 10.w),
                      width: MediaQuery.of(context).size.width > 700
                          ? 100.w
                          : 170.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                            child: CachedNetworkImage(
                              imageUrl: blogimg[index],
                              height: MediaQuery.of(context).size.width > 870
                                  ? 180.h
                                  : 100.h,
                              width: MediaQuery.of(context).size.width > 870
                                  ? 100.w
                                  : 170.w,
                              fit: BoxFit.fill,
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Manuel, Makeup Artist erbgiergbieru",
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Between glam looks and good vibes, it’s no surprise why Manuel’s clients keep coming back.",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
