import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
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
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.width > 720 ? 300.h : 150.h,
            width: double.infinity,
            // color: Colors.pink,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/blog_banner.png"),
                  fit: BoxFit.cover),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width > 950 ? 2 : 1,
                          crossAxisSpacing: 15.w,
                          mainAxisSpacing: 15.w,
                          childAspectRatio:
                              MediaQuery.of(context).size.width > 1253
                                  ? 1
                                  : MediaQuery.of(context).size.width > 950
                                      ? 0.9
                                      : MediaQuery.of(context).size.width > 360
                                          ? 1.3
                                          : 1.5,
                        ),
                        children: [
                          ...List.generate(
                            4,
                            (index) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                      height: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              720
                                          ? 150.h
                                          : MediaQuery.of(context).size.width >
                                                  360
                                              ? 80.h
                                              : 50.h,
                                      width: double.infinity,
                                      // color: Colors.pink,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/banner_p.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "12 April, 2023",
                                          style: GoogleFonts.urbanist(
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    720
                                                ? 16.sp
                                                : 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: kdescription,
                                          ),
                                        ),
                                        Text(
                                          "Client Relationship",
                                          style: GoogleFonts.urbanist(
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    720
                                                ? 16.sp
                                                : 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: kyellow,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 10.h,
                                  // ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Beyond Beauty — 1 in 3 Americans View Their Stylist as a Therapist",
                                      style: GoogleFonts.urbanist(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    950
                                                ? 18.sp
                                                : 22.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 10.h,
                                  // ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Between glam looks and good vibes, it’s no surprise why Manuel’s clients keep coming back.",
                                      style: GoogleFonts.urbanist(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  820
                                              ? 16.sp
                                              : 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: kdescription),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 10.h,
                                  // ),
                                  Expanded(
                                    flex: 1,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print(
                                            MediaQuery.of(context).size.width);
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(kBlack),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              5.r))))),
                                      child: Text(
                                        "Read More",
                                        style: GoogleFonts.urbanist(
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    680
                                                ? 16.sp
                                                : 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: kWhite),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      flex: 1,
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
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.width > 720 ? 250 : 150,
                  width: double.infinity,
                  // color: Colors.pink,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/promo.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Footer(),
        ],
      ),
    );
  }
}
