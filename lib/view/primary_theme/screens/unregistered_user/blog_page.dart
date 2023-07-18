import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_paginator/number_paginator.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  List<String> blogimg = [
    "https://t4.ftcdn.net/jpg/04/35/38/13/360_F_435381398_Z5mBaTW5HHD3748nsGRDsFQr0iXa893X.jpg",
    "https://i.imgur.com/Yl5A28c.png",
    "https://i.imgur.com/gax4BO9.png",
    "https://i.imgur.com/n9ckE5M.png",
  ];
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
  final int _numPages = 10;
  int _currentPage = 1;
  bool sideFilters = true;
  int selected = 0;
  List<String> filterOptions = ['Option 1', 'Option 2', 'Option 3'];

  List<String> selectedFilters = [];

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width > 750
        ? sideFilters = true
        : sideFilters = false;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width > 720 ? 300.h : 150.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/blog_banner.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Visibility(
                      visible: sideFilters == false,
                      child: SizedBox(
                        height: 50.h,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: FittedBox(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color: selected == index
                                            ? kBlack
                                            : kselected,
                                        border: Border.all(
                                          color: selected != index
                                              ? Colors.grey
                                              : Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.r,
                                          horizontal: 7.w,
                                        ),
                                        child: Text(
                                          items[index],
                                          style: GoogleFonts.urbanist(
                                            fontSize: 12.sp,
                                            fontWeight: selected == index
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                            color: selected == index
                                                ? kWhite
                                                : kdescription,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              GridView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      MediaQuery.of(context).size.width > 950
                                          ? 2
                                          : 1,
                                  crossAxisSpacing: 15.w,
                                  mainAxisSpacing: 15.w,
                                  childAspectRatio: MediaQuery.of(context)
                                              .size
                                              .width >
                                          1253
                                      ? 1
                                      : MediaQuery.of(context).size.width > 950
                                          ? 0.9
                                          : MediaQuery.of(context).size.width >
                                                  800
                                              ? 1.2
                                              : MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      500
                                                  ? 1
                                                  : 1,
                                ),
                                children: [
                                  ...List.generate(
                                    blogimg.length,
                                    (index) => InkWell(
                                      hoverColor: Colors.transparent,
                                      onTap: () {
                                        Get.to(() => const BlogDetailsPage());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 8,
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        720
                                                    ? 150.h
                                                    : MediaQuery.of(context)
                                                                .size
                                                                .width >
                                                            360
                                                        ? 80.h
                                                        : 50.h,
                                                width: double.infinity,
                                                // color: Colors.pink,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.r),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      blogimg[index],
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "12 April, 2023",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.urbanist(
                                                    fontSize: MediaQuery.of(
                                                              context,
                                                            ).size.width >
                                                            1080
                                                        ? 13.sp
                                                        : MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                950
                                                            ? 9.sp
                                                            : 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: kdescription,
                                                  ),
                                                ),
                                                Text(
                                                  "Client Relationship",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.urbanist(
                                                    fontSize: MediaQuery.of(
                                                              context,
                                                            ).size.width >
                                                            1080
                                                        ? 13.sp
                                                        : MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                950
                                                            ? 9.sp
                                                            : 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: kyellow,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              "Beyond Beauty — 1 in 3 Americans View Their Stylist as a Therapist",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.urbanist(
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        600
                                                    ? 15.sp
                                                    : 18.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 10.h,
                                            // ),
                                            Text(
                                              "Between glam looks and good vibes, it’s no surprise why Manuel’s clients keep coming back.",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.urbanist(
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        1080
                                                    ? 13.sp
                                                    : MediaQuery.of(context)
                                                                .size
                                                                .width >
                                                            950
                                                        ? 9.sp
                                                        : 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: kdescription,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                print(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                );
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                  kBlack,
                                                ),
                                                shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        5.r,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                "Read More",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width >
                                                          1080
                                                      ? 14.sp
                                                      : MediaQuery.of(context)
                                                                  .size
                                                                  .width >
                                                              950
                                                          ? 10.sp
                                                          : 15.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: kWhite,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex:
                                        MediaQuery.of(context).size.width > 1180
                                            ? 1
                                            : 2,
                                    child: MediaQuery.of(context).size.width >
                                            335
                                        ? NumberPaginator(
                                            // by default, the paginator shows numbers as center content
                                            numberPages: _numPages,
                                            config:
                                                const NumberPaginatorUIConfig(
                                              buttonSelectedBackgroundColor:
                                                  kBlack,
                                              buttonUnselectedBackgroundColor:
                                                  kWhite,
                                              buttonSelectedForegroundColor:
                                                  kWhite,
                                              buttonUnselectedForegroundColor:
                                                  kdescription,
                                            ),
                                            initialPage: _currentPage,
                                            onPageChange: (int index) {
                                              setState(() {
                                                _currentPage = index;
                                              });
                                            },
                                          )
                                        : NumberPaginator(
                                            numberPages: _numPages,
                                            config:
                                                const NumberPaginatorUIConfig(
                                              buttonSelectedBackgroundColor:
                                                  kBlack,
                                              buttonUnselectedBackgroundColor:
                                                  kWhite,
                                              buttonSelectedForegroundColor:
                                                  kWhite,
                                              buttonUnselectedForegroundColor:
                                                  kdescription,
                                            ),
                                            contentBuilder: (index) => Expanded(
                                              child: Center(
                                                child: Text(
                                                  "Current Page: $_currentPage",
                                                  style: GoogleFonts.urbanist(
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            onPageChange: (int index) {
                                              setState(() {
                                                _currentPage = index;
                                              });
                                            },
                                          ),
                                  ),
                                  Expanded(
                                    flex:
                                        MediaQuery.of(context).size.width > 765
                                            ? 1
                                            : 0,
                                    child: SizedBox(
                                      height: 20.h,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Visibility(
                          visible: sideFilters,
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "EXPLORE BY TOPIC",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 20.h,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  // width: 80.w,
                                  child: ListView.builder(
                                    // physics: NeverScrollableScrollPhysics(),
                                    itemCount: items.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: ListTile(
                                              title: Text(items[index]),
                                              tileColor: selected == index
                                                  ? kselected
                                                  : kWhite,
                                              onTap: () {
                                                setState(() {
                                                  selected = index;
                                                });
                                              },
                                            ),
                                          ),
                                          Divider(
                                            height: 2.h,
                                            color: kGrey.withOpacity(0.5),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Image.asset(
                          "assets/images/promo.png",
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
