import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_widgets.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectSlot extends StatelessWidget {
  const SelectSlot({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> timings = ["Thu 30", "Fri 30", "Sat 30", "Sun 30"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
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
                      maxLines: 2,
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
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SizedBox(
                      height: 40.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: timings.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.w),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                //next dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                      backgroundColor: Color(0xfff8f8f8),
                                      content: const SingleChildScrollView(
                                        child: const AddService(),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
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
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3.h, horizontal: 8.w),
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SizedBox(
                      height: 30.h,
                      width: MediaQuery.of(context).size.width * 0.5,
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
                                    border: Border.all(
                                      color: kBlack,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SizedBox(
                      height: 30.h,
                      width: MediaQuery.of(context).size.width * 0.5,
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
                                    border: Border.all(
                                      color: kBlack,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          color: kLightBlue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
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
    );
  }
}

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focussedDay) {
    setState(() {
      today = day;
    });
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
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
          backgroundColor: Color(0xfff8f8f8),
          content: const SingleChildScrollView(
            child: const SelectSlot(),
          ),
        );
      },
    );
    // filterData["date"] = day.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
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
                ),
                SizedBox(
                  width: 10.w,
                ),
                BlackButton(context, "Add Service", () {})
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          color: Color(0xffFEF9ED),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
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
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: TableCalendar(
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
                // const Spacer(),
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
    );
  }
}

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  Country? selectedCountry;
  String selectedCountryCode = '+91';
  String selectedCountryFlag = 'flags/usa.png';
  Future<void> _showCountryPicker() async {
    final country = await showCountryPickerDialog(
      context,
      cornerRadius: 15,
    );
    if (country != null) {
      setState(() {
        selectedCountry = country;
        selectedCountryCode = country.callingCode;
        selectedCountryFlag = country.flag;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          color: Color(0xffE0F3FD),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          child: Row(children: [
            Icon(
              Icons.alarm_outlined,
              color: kBlack,
              size: 20.h,
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Text("Cosmetropolis will hold this appointment for 4:46",
                  style: GoogleFonts.urbanist(
                    color: kdescription,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ]),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
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
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 40.h,
                  child: BlackButton(context, "Add Service", () {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Select Service",
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
                          backgroundColor: Color(0xfff8f8f8),
                          content: const SingleChildScrollView(
                            child: const SelectService(),
                          ),
                        );
                      },
                    );
                  }),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friday, April 12",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Afternoon - 5:45 to 6:45",
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
                ),
                SizedBox(
                  width: 10.w,
                ),
                BlackOutlineButton(context, "Edit", () {})
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text("Add promotion code",
            style: GoogleFonts.urbanist(
              color: kBlack,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            )),
        CopyField(),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Log in or sign up to book",
          style: urbanist500(kBlack, 16),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email*",
                    style: urbanist500(kBlack, 14),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: urbanist400(kGrey, 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: kGrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlack,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password*",
                    style: urbanist500(kBlack, 16),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: urbanist400(kGrey, 12),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10.r),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: kGrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlack,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name*",
                    style: urbanist500(kBlack, 16),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: urbanist400(kGrey, 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: kGrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlack,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile Phone*",
                    style: urbanist500(kBlack, 16),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kWhite,
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: kGrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlack,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                      // labelText: "Phone Number",
                      hintText: "Mobile Phone",
                      hintStyle: urbanist400(kGrey, 12),
                      prefixIcon: InkWell(
                        onTap: () {
                          _showCountryPicker();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 5,
                          ),
                          child: SizedBox(
                            width: 65,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  selectedCountryFlag,
                                  package: countryCodePackageName,
                                  width: 35,
                                  height: 30,
                                  fit: BoxFit.fill,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 40.h,
          child: BlackButton(context, "Sign Up", () {
            //payment dialog
            Navigator.of(context).pop();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Method",
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
                  backgroundColor: Color(0xfff8f8f8),
                  content: const SingleChildScrollView(
                    child: const PaymentMethod(),
                  ),
                );
              },
            );
          }),
        )
      ],
    );
  }
}

class SelectService extends StatefulWidget {
  const SelectService({super.key});

  @override
  State<SelectService> createState() => _SelectServiceState();
}

class _SelectServiceState extends State<SelectService> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: kLightBlue,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 10.h,
          ),
          child: Text(
            "Braids",
            style: urbanist500(kBlack, 16),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        ...List.generate(
          3,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 10.h),
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
                          "\$230 and up for 300 minutes",
                          style: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: selected
                          ? CircleAvatar(
                              backgroundColor: kBlue,
                              radius: 20.r,
                              child: Icon(
                                Icons.check,
                                color: kWhite,
                                size: 20.sp,
                              ),
                            )
                          : Container(
                              height: 40.r,
                              width: 40.r,
                              decoration: BoxDecoration(
                                color: kWhite,
                                border: Border.all(
                                  color: kBlack,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.add,
                                color: kBlack,
                                size: 20.sp,
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: double.infinity,
          color: kLightBlue,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 10.h,
          ),
          child: Text(
            "Haircut",
            style: urbanist500(kBlack, 16),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        ...List.generate(
          3,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 10.h),
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
                          "\$230 and up for 300 minutes",
                          style: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: selected
                          ? CircleAvatar(
                              backgroundColor: kBlue,
                              radius: 20.r,
                              child: Icon(
                                Icons.check,
                                color: kWhite,
                                size: 20.sp,
                              ),
                            )
                          : Container(
                              height: 40.r,
                              width: 40.r,
                              decoration: BoxDecoration(
                                color: kWhite,
                                border: Border.all(
                                  color: kBlack,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.add,
                                color: kBlack,
                                size: 20.sp,
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
            width: double.infinity, child: BlackButton(context, "Save", () {}))
      ],
    );
  }
}

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pay booking fee now, this card will be charged at time of service. Learn More",
          style: urbanist400(kBlack, 12),
        ),
        SizedBox(
          height: 10.h,
        ),
        ListTile(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: klines),
              borderRadius: BorderRadius.circular(7.r)),
          tileColor: kWhite,
          leading: Radio(
            focusColor: kBlack,
            value: -1,
            groupValue: 0,
            onChanged: (value) {},
          ),
          title: Row(
            children: [
              const Text('Credit Card'),
              SizedBox(width: 5.w),
              Image.network(
                'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                // width: 60.w,
                height: 30.h,
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Card Number",
                  hintStyle: urbanist400(kdescription, 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "MM/YY",
                  hintStyle: urbanist400(kdescription, 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "CVV",
                  hintStyle: urbanist400(kdescription, 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: klines),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Reserve with Confidence",
          style: urbanist500(kBlack, 16),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "You will not be charged if you cancel at least 24 hours before your appointment starts. Otherwise, you will be charged 25% of service price for late cancellations and 50% for no shows.",
          style: urbanist400(kBlack, 12),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
            height: 40.h,
            width: double.infinity,
            child: BlackButton(context, "Book Now", () {
//booking successful dialog
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your booking was successful!",
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
                    backgroundColor: Color(0xfff8f8f8),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: Image.asset("assets/icons/success.png",
                                height: 100.h),
                          ),
                          Text(
                            "Your Booking Successful",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }))
      ],
    );
  }
}
