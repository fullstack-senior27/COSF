import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/beauticians_list.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BeauticiansListPage extends StatefulWidget {
  const BeauticiansListPage({super.key});

  @override
  State<BeauticiansListPage> createState() => _BeauticiansListPageState();
}

class _BeauticiansListPageState extends State<BeauticiansListPage> {
  final TextEditingController _dateController = TextEditingController();
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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MediaQuery.of(context).size.width > 1000
          ? null
          : FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
              backgroundColor: kBlue,
              onPressed: () {
                filterBottomSheet(
                  context,
                  const BeauticiansFilterBottom(),
                );
              },
              label: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Text("Filter"),
              ),
              icon: ImageIcon(
                const AssetImage(
                  "assets/icons/filter.png",
                ),
                color: kWhite,
                size: 20.sp,
              ),
            ),
      appBar: AppBar(),
      body: SingleChildScrollView(
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
                          style: GoogleFonts.urbanist(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
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
                          style: GoogleFonts.urbanist(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
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
                          controller: _dateController,
                          style: GoogleFonts.urbanist(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: "Date",
                            hintStyle: GoogleFonts.urbanist(
                              color: kGrey,
                              fontSize: 16.sp,
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
                            child: Text(
                              "Search",
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 16.sp,
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
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(10.r),
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
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Date",
                        hintStyle: GoogleFonts.urbanist(
                          color: kGrey,
                          fontSize: 16.sp,
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
                                  DateFormat('yyyy-MM-dd').format(pickedDate);

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
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.r),
                          borderSide: const BorderSide(
                            color: kGrey,
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
                        ),
                      ),
                      // width: 50.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 5.h,
                        ),
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
                      ),
                    ),
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
                                    height: 30.h,
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          const BeauticiansListWebView(),
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          const BeauticiansListMobView(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 700,
                        child: SizedBox(
                          width: 20.w,
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 1000,
                        child: Expanded(
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
            const Footer(),
          ],
        ),
      ),
    );
  }
}
