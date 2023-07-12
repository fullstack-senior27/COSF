import 'package:calendar_view/calendar_view.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

DateTime get _now => DateTime.now();

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet:
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 17.w,
                right: 17.w,
                top: 5.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: WeekView(
                        headerStyle: HeaderStyle(
                          // we use kwhite color for this component because we need to hide the header
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          headerTextStyle: GoogleFonts.urbanist(
                            color: kWhite,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          leftIcon: const Icon(
                            Icons.arrow_back_ios,
                            color: kBlack,
                            size: 0,
                          ),
                          rightIcon: const Icon(
                            Icons.arrow_forward_ios,
                            color: kBlack,
                            size: 0,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width > 950
                            ? 225.w
                            : MediaQuery.of(context).size.width * 0.8,
                        showLiveTimeLineInAllDays: true,
                        startDay: WeekDays.sunday,
                        eventArranger:
                            const SideEventArranger(), // To define how simultaneous events will be arranged.
                      ),
                    ),
                  ),
                  Visibility(
                    visible: MediaQuery.of(context).size.width > 950,
                    child: const Spacer(),
                  ),
                  Visibility(
                    visible: MediaQuery.of(context).size.width > 950,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Column(
                        children: [
                          Expanded(
                            child: CalendarCarousel<Event>(
                              onDayPressed:
                                  (DateTime date, List<Event> events) {
                                setState(() {});
                              },
                              todayButtonColor: kBlue,
                              todayBorderColor: kBlue,
                              markedDateShowIcon: true,
                              width: 90.w,
                              daysHaveCircularBorder: true,
                              daysTextStyle: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              weekendTextStyle: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              weekdayTextStyle: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              headerTextStyle: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              headerTitleTouchable: true,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text("Jump a few weeks ahead",
                              style: urbanist600(kBlack, 14)),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List.generate(
                                  5,
                                  (index) => Padding(
                                        padding: EdgeInsets.only(right: 2.w),
                                        child: CircleAvatar(
                                          radius: 15.r,
                                          backgroundColor: kBlack,
                                          child: Text(
                                            "+${index + 1}",
                                            style: urbanist600(kWhite, 14),
                                          ),
                                        ),
                                      )),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: Container(
                                width: 90.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  color: kBlack,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add To Waitlist",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Visibility(
              visible: MediaQuery.of(context).size.width < 951,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () {
                      filterBottomSheet(
                        context,
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: CalendarCarousel<Event>(
                                onDayPressed:
                                    (DateTime date, List<Event> events) {
                                  setState(() {});
                                },
                                todayButtonColor: kBlue,
                                todayBorderColor: kBlue,
                                markedDateShowIcon: true,
                                width: MediaQuery.of(context).size.width * 0.75,
                                daysHaveCircularBorder: true,
                                daysTextStyle: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                weekendTextStyle: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                weekdayTextStyle: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                headerTextStyle: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                headerTitleTouchable: true,
                              ),
                            ),
                            Text("Jump a few weeks ahead",
                                style: urbanist600(kBlack, 14)),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                    5,
                                    (index) => Padding(
                                          padding: EdgeInsets.only(right: 2.w),
                                          child: CircleAvatar(
                                            radius: 15.r,
                                            backgroundColor: kBlack,
                                            child: Text(
                                              "+${index + 1}",
                                              style: urbanist600(kWhite, 14),
                                            ),
                                          ),
                                        )),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  color: kBlack,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add To Waitlist",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.calendar_month_rounded,
                      color: kWhite,
                      size: 15.sp,
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: kdarkPrime,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(5.r),
                      // ),
                    ),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child:
                          Text("Choose Date", style: urbanist600(kWhite, 14)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Footer(),
          ],
        ),
      ),
    );
  }
}
