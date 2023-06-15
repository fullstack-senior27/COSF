import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/beauticians_list.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BeauticiansListPage extends StatefulWidget {
  const BeauticiansListPage({super.key});

  @override
  State<BeauticiansListPage> createState() => _BeauticiansListPageState();
}

class _BeauticiansListPageState extends State<BeauticiansListPage> {
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
          SizedBox(
            height: 20.h,
          ),
          if (MediaQuery.of(context).size.width > 700)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  border: Border.all(
                    color: kdisable,
                    width: 2.h,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Services or beautician name",
                          hintStyle: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 16.sp,
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
                        decoration: InputDecoration(
                          hintText: "Location",
                          hintStyle: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 16.sp,
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
                        decoration: InputDecoration(
                          hintText: "Date",
                          hintStyle: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          suffixIcon: const Icon(
                            Icons.date_range,
                            color: kGrey,
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
                          onPressed: () {},
                          child: const Text(
                            "Search",
                            style: TextStyle(color: kWhite),
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
                    decoration: InputDecoration(
                      hintText: "Services or beautician name",
                      hintStyle: GoogleFonts.urbanist(
                        color: kGrey,
                        fontSize: 16.sp,
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
                  SizedBox(
                    height: 10.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Location",
                      hintStyle: GoogleFonts.urbanist(
                        color: kGrey,
                        fontSize: 16.sp,
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
                  SizedBox(
                    height: 10.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Date",
                      hintStyle: GoogleFonts.urbanist(
                        color: kGrey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      suffixIcon: const Icon(
                        Icons.date_range,
                        color: kGrey,
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
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.h,
                        ),
                        backgroundColor: kBlue,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Search",
                        style: TextStyle(color: kWhite),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      // width: 50.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 5.h),
                        child: Row(
                          children: [
                            Visibility(
                              visible: MediaQuery.of(context).size.width > 300
                                  ? true
                                  : false,
                              child: Text(
                                "Filter",
                                style: GoogleFonts.urbanist(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: MediaQuery.of(context).size.width > 300
                                  ? true
                                  : false,
                              child: SizedBox(
                                width: 20.w,
                              ),
                            ),
                            Image.asset(
                              "assets/icons/filter.png",
                              height: 20.h,
                              width: 20.w,
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(width: 10.w),
                Expanded(
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
                                    borderRadius: BorderRadius.circular(20.r),
                                    color:
                                        selected == index ? kBlack : kselected,
                                    border: Border.all(
                                      color: selected != index
                                          ? Colors.grey
                                          : Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.r, horizontal: 7.w),
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
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(color: kGrey, height: 2.h),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: MediaQuery.of(context).size.width > 950
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Best Braids in Dallas, TX",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Cosmetropolis > Dallas, TX > Braids",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      color: kdescription,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          BeauticiansListWebView(),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Best Braids in Dallas, TX",
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "Cosmetropolis > Dallas, TX > Braids",
                                              style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                color: kdescription,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Visibility(
                                          visible: MediaQuery.of(context)
                                                  .size
                                                  .width <
                                              701,
                                          child: SizedBox(
                                            height: 35.h,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: kBlue,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.r),
                                                ),
                                              ),
                                              onPressed: () {
                                                filterBottomSheet(context,
                                                    BeauticiansFilterBottom());
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  ImageIcon(
                                                    const AssetImage(
                                                        "assets/icons/filter.png"),
                                                    color: kWhite,
                                                    size: 20.sp,
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  Visibility(
                                                    visible:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width >
                                                            400,
                                                    child: Text(
                                                      " Filter",
                                                      style:
                                                          GoogleFonts.urbanist(
                                                        color: kWhite,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          BeauticiansListMobView(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              )),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: SizedBox(
                        width: 20.w,
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Filters",
                              style: GoogleFonts.urbanist(
                                fontSize: 20.h,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const BeauticiansSideFilter(),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
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
