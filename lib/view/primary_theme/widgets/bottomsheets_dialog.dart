import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateButtomsheet extends StatefulWidget {
  const SelectDateButtomsheet({super.key});

  @override
  State<SelectDateButtomsheet> createState() => _SelectDateButtomsheetState();
}

class _SelectDateButtomsheetState extends State<SelectDateButtomsheet> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focussedDay) {
    setState(() {
      today = day;
    });
    // filterData["date"] = day.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your appointment with",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(
                    Icons.close,
                    color: kGrey,
                  )
                ],
              ),
            ),
            Divider(
              color: klines,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Text(
                    "Akeba Thompson",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Image.asset(
                    "assets/icons/verify.png",
                    height: 20.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    itemSize: 20.sp,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFF7500),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "4.0",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "(180 Reviews)",
                    style: GoogleFonts.urbanist(
                      color: kdescription,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Medium knotless/Box braids",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "30 Mins - \$200",
                            style: GoogleFonts.urbanist(
                              color: kdescription,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      BlackButtonSmall(context, "Add Service", () {})
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Color(0xffFEF9ED),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  children: [
                    Container(
                      height: 10.h,
                      width: 10.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffff5700),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Limited spots left in April",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        Text(
                          "Book soon!",
                          style: GoogleFonts.urbanist(
                            color: kdescription,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              focusedDay: today,
              lastDay: DateTime.utc(2030, 3, 14),
              calendarFormat: CalendarFormat.month,
              headerStyle: HeaderStyle(
                titleCentered: true,
                titleTextStyle: GoogleFonts.urbanist(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
                formatButtonVisible: false,
              ),
              rowHeight: 40.h,
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) {
                return isSameDay(day, today);
              },
              onDaySelected: _onDaySelected,
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
                weekendStyle: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
              ),
              calendarStyle: CalendarStyle(
                selectedDecoration: const BoxDecoration(
                  color: kBlack,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: kWhite,
                ),
                todayDecoration: BoxDecoration(
                  color: kWhite,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kBlack,
                    width: 1,
                  ),
                ),
                todayTextStyle: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
                defaultTextStyle: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
                weekendTextStyle: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
              ),
            ),
            Container(
              color: Color(0xffE0F3FD),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  children: [
                    const CircleAvatar(
                        backgroundColor: kWhite,
                        child: Icon(
                          Icons.calendar_month,
                          color: kBlack,
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Looking for a specific date?",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        Text(
                          "Search for all available Natural hair appointment on Cosmetropolis",
                          style: GoogleFonts.urbanist(
                            color: kdescription,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kBlack,
                      size: 30.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.urbanist(
                  color: kdescription,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  const TextSpan(
                    text:
                        'Want to be notified if Akeba Thomson has any cancellations? ',
                  ),
                  TextSpan(
                    text: ' Notify Me',
                    style: GoogleFonts.urbanist(
                      color: Color.fromARGB(255, 4, 74, 131),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    // Add your onTap callback here
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Perform any desired actions when the blue text is clicked
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectSlotBottomSheet extends StatefulWidget {
  const SelectSlotBottomSheet({super.key});

  @override
  State<SelectSlotBottomSheet> createState() => _SelectSlotBottomSheetState();
}

class _SelectSlotBottomSheetState extends State<SelectSlotBottomSheet> {
  List<String> timings = ["Thu 30", "Fri 30", "Sat 30", "Sun 30"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your appointment with",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(
                    Icons.close,
                    color: kGrey,
                  )
                ],
              ),
            ),
            const Divider(
              color: klines,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Text(
                    "Akeba Thompson",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Image.asset(
                    "assets/icons/verify.png",
                    height: 20.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    itemSize: 20.sp,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFF7500),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "4.0",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "(180 Reviews)",
                    style: GoogleFonts.urbanist(
                      color: kdescription,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Color(0xffFEF9ED),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  children: [
                    Container(
                      height: 10.h,
                      width: 10.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffff5700),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Limited spots left in April",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        Text(
                          "Book soon!",
                          style: GoogleFonts.urbanist(
                            color: kdescription,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: klines)),
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Morning",
                        style: GoogleFonts.urbanist(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: kBlack,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50.h,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: timings.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1.w),
                                      child: GestureDetector(
                                        onTap: () {
                                          // setState(() {
                                          //   selected = index;
                                          // });
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FittedBox(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.r),
                                                  color: Color(0xffd1d1d1),
                                                  // border: Border.all(
                                                  //   color: selected != index
                                                  //       ? Colors.grey
                                                  //       : Colors.transparent,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 3.h,
                                                      horizontal: 8.w),
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
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Container(
                                              height: 5.h,
                                              width: 5.h,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffff5700),
                                              ),
                                            ),
                                          ],
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
                      const Divider(
                        color: klines,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Afternoon",
                        style: GoogleFonts.urbanist(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: kBlack,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1.w),
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
                                                  BorderRadius.circular(5.r),
                                              color: kWhite,
                                              border: Border.all(
                                                color: kBlack,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                timings[index],
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
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
                      const Divider(
                        color: klines,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Evening",
                        style: GoogleFonts.urbanist(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: kBlack,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1.w),
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
                                                  BorderRadius.circular(5.r),
                                              color: kWhite,
                                              border: Border.all(
                                                color: kBlack,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                timings[index],
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
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
            ),
            Container(
              color: Color(0xffE0F3FD),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  children: [
                    const CircleAvatar(
                        backgroundColor: kWhite,
                        child: Icon(
                          Icons.calendar_month,
                          color: kBlack,
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Looking for a specific date?",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Text(
                            "Search for all available Natural hair appointment on Cosmetropolis",
                            style: GoogleFonts.urbanist(
                              color: kdescription,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kBlack,
                      size: 30.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.urbanist(
                    color: kdescription,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'Want to be notified if Akeba Thomson has any cancellations? ',
                    ),
                    TextSpan(
                      text: ' Notify Me',
                      style: GoogleFonts.urbanist(
                        color: Color.fromARGB(255, 4, 74, 131),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      // Add your onTap callback here
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Perform any desired actions when the blue text is clicked
                        },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
