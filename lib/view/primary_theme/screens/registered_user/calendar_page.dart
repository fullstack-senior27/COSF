import 'package:calendar_view/calendar_view.dart';
import 'package:cosmetropolis/utils/colors.dart';
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
      body: Padding(
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
                width: 225.w,
                showLiveTimeLineInAllDays: true,
                startDay: WeekDays.sunday,
                eventArranger:
                    const SideEventArranger(), // To define how simultaneous events will be arranged.
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Expanded(
                  child: CalendarCarousel<Event>(
                    onDayPressed: (DateTime date, List<Event> events) {
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
                Expanded(
                  child: Align(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
