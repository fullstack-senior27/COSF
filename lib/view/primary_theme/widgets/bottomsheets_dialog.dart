import 'dart:developer';

import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/data/remote/beautician/get_beautician_services.dart';
import 'package:cosmetropolis/data/remote/booking/models/create_appointment.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/beauticians_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/user_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectSlot extends ConsumerStatefulWidget {
  const SelectSlot({super.key});

  @override
  ConsumerState<SelectSlot> createState() => _SelectSlotState();
}

class _SelectSlotState extends ConsumerState<SelectSlot> {
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
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Image.asset(
                "assets/icons/verify.webp",
                height: 18.h,
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
                itemSize: 18.sp,
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
                  fontSize: 13.sp,
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
                  fontSize: 13.sp,
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
          color: const Color(0xffFEF9ED),
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
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Limited spots left in April",
                      maxLines: 2,
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontSize: 12.sp,
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
                        fontSize: 10.sp,
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
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: klines),
            ),
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
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ref
                                  .read(userViewModel)
                                  .selectedSalon
                                  ?.morning
                                  ?.isEmpty ??
                              true
                          ? Text(
                              "No slots found",
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kGrey,
                              ),
                            )
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: ref
                                      .read(userViewModel)
                                      .selectedSalon
                                      ?.morning
                                      ?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ref.read(userViewModel).setSelectedSlot(
                                        "Morning - ${ref.read(userViewModel).selectedSalon?.morning?[index].time}",);
                                    log(ref.read(userViewModel).selectedSlot ??
                                        "",);
                                    context.pop();
                                    showDialog(
                                        context: context,
                                        builder: (builder) => const AlertDialog(
                                              content: SelectService(),
                                            ),);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5,),
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: ref
                                                  .read(userViewModel)
                                                  .selectedSalon
                                                  ?.morning?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: ref
                                                  .read(userViewModel)
                                                  .selectedSalon
                                                  ?.morning?[index]
                                                  .isBooked ??
                                              false
                                          ? const Color(0xffd1d1d1)
                                          : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${ref.read(userViewModel).selectedSalon?.morning?[index].time}",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: kBlack,
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
                      height: 40.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ref
                                  .read(userViewModel)
                                  .selectedSalon
                                  ?.afternoon
                                  ?.isEmpty ??
                              true
                          ? Text(
                              "No slots found",
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kGrey,
                              ),
                            )
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: ref
                                      .read(userViewModel)
                                      .selectedSalon
                                      ?.afternoon
                                      ?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ref.read(userViewModel).setSelectedSlot(
                                        "Afternoon - ${ref.read(userViewModel).selectedSalon?.afternoon?[index].time}",);
                                    log(ref.read(userViewModel).selectedSlot ??
                                        "",);
                                    context.pop();
                                    showDialog(
                                        context: context,
                                        builder: (builder) => const AlertDialog(
                                              content: SelectService(),
                                            ),);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5,),
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: ref
                                                  .read(userViewModel)
                                                  .selectedSalon
                                                  ?.afternoon?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: ref
                                                  .read(userViewModel)
                                                  .selectedSalon
                                                  ?.afternoon?[index]
                                                  .isBooked ??
                                              false
                                          ? const Color(0xffd1d1d1)
                                          : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${ref.read(userViewModel).selectedSalon?.afternoon?[index].time}",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: kBlack,
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
                      height: 40.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ref
                                  .read(userViewModel)
                                  .selectedSalon
                                  ?.evening
                                  ?.isEmpty ??
                              true
                          ? Text(
                              "No slots found",
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kGrey,
                              ),
                            )
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: ref
                                      .read(userViewModel)
                                      .selectedSalon
                                      ?.evening
                                      ?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ref.read(userViewModel).setSelectedSlot(
                                        "Evening - ${ref.read(userViewModel).selectedSalon?.evening?[index].time}",);
                                    log(ref.read(userViewModel).selectedSlot ??
                                        "",);
                                    context.pop();
                                    showDialog(
                                        context: context,
                                        builder: (builder) => const AlertDialog(
                                              content: SelectService(),
                                            ),);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5,),
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: ref
                                                  .read(userViewModel)
                                                  .selectedSalon
                                                  ?.evening?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: ref
                                                  .read(userViewModel)
                                                  .selectedSalon
                                                  ?.evening?[index]
                                                  .isBooked ??
                                              false
                                          ? const Color(0xffd1d1d1)
                                          : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${ref.read(userViewModel).selectedSalon?.evening?[index].time}",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: kBlack,
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
                  ),
                ),
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
                          fontSize: 14.sp,
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
                    color: const Color.fromARGB(255, 4, 74, 131),
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

class SelectDate extends ConsumerStatefulWidget {
  const SelectDate({super.key});

  @override
  ConsumerState<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends ConsumerState<SelectDate> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focussedDay) {
    setState(() {
      today = day;
    });
    ref.read(userViewModel).setSelectedDate(day);
    context.pop();
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
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: kGrey,
                ),
              )
            ],
          ),
          backgroundColor: const Color(0xfff8f8f8),
          content: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width > 720
                    ? MediaQuery.of(context).size.width * 0.5
                    : MediaQuery.of(context).size.width * 0.9,
                child: const SelectSlot(),),
          ),
        );
      },
    );
    // filterData["date"] = day.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 720
          ? MediaQuery.of(context).size.width * 0.5
          : MediaQuery.of(context).size.width * 0.9,
      child: Column(
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
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Image.asset(
                  "assets/icons/verify.webp",
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
                    fontSize: 12.sp,
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
                    fontSize: 12.sp,
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
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "30 Mins - \$200",
                          style: GoogleFonts.urbanist(
                            color: kdescription,
                            fontSize: 12.sp,
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
            color: const Color(0xffFEF9ED),
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
                    width: 10.w,
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
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
              weekNumbersVisible: true,
              firstDay: DateTime.now(),
              focusedDay: today,
              lastDay: DateTime.now().add(const Duration(days: 7)),
              headerStyle: HeaderStyle(
                titleCentered: true,
                titleTextStyle: GoogleFonts.urbanist(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: kdescription,
                ),
                formatButtonVisible: false,
              ),
              rowHeight: 40.h,
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
                  border: Border.all(),
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
            color: const Color(0xffE0F3FD),
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: kWhite,
                    child: Icon(
                      Icons.calendar_month,
                      color: kBlack,
                    ),
                  ),
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
                            fontSize: 12.sp,
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
                            fontSize: 10.sp,
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
                      color: const Color.fromARGB(255, 4, 74, 131),
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
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

class AddService extends ConsumerStatefulWidget {
  const AddService({super.key});

  @override
  ConsumerState<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends ConsumerState<AddService> with BaseScreenView {
  final zipController = TextEditingController();
  late UserViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(userViewModel)..attachView(this);
    // getData();
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }
  // Country? selectedCountry;
  // String selectedCountryCode = '+91';
  // String selectedCountryFlag = 'flags/usa.png';
  // Future<void> _showCountryPicker() async {
  //   final country = await showCountryPickerDialog(
  //     context,
  //     cornerRadius: 15,
  //   );
  //   if (country != null) {
  //     setState(() {
  //       selectedCountry = country;
  //       selectedCountryCode = country.callingCode;
  //       selectedCountryFlag = country.flag;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    ref.watch(userViewModel);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
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
                ref.read(userViewModel).selectedSalon?.name ?? "",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Image.asset(
                "assets/icons/verify.webp",
                height: 18.h,
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
                initialRating: _viewModel.selectedSalon?.avgRating ?? 0,
                minRating: 1,
                itemSize: 18.sp,
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
                "${_viewModel.selectedSalon?.avgRating ?? ""}",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "(${_viewModel.selectedSalon?.ratingCount ?? ""} Reviews)",
                style: GoogleFonts.urbanist(
                  color: kdescription,
                  fontSize: 12.sp,
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
          color: const Color(0xffE0F3FD),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          child: Row(
            children: [
              // Icon(
              //   Icons.alarm_outlined,
              //   color: kBlack,
              //   size: 20.h,
              // ),
              // SizedBox(
              //   width: 5.w,
              // ),
              // Expanded(
              //   child: Text(
              //     "Cosmetropolis will hold this appointment for 4:46",
              //     style: GoogleFonts.urbanist(
              //       color: kdescription,
              //       fontSize: 12.sp,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ),
              Expanded(
                child: Text(
                  "Services",
                  style: GoogleFonts.urbanist(
                    color: kdescription,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10.h,
        // ),
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  _viewModel.selectedService.length ?? 0,
                  (index) => SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _viewModel.selectedService[index].name ?? "",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "${_viewModel.selectedService[index].durationInMinutes ?? ""} Mins - \$${_viewModel.selectedService[index].price ?? ""}",
                          style: GoogleFonts.urbanist(
                            color: kdescription,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
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
                        DateFormat("EEEE, MMMM DD")
                            .format(_viewModel.selectedDate ?? DateTime.now()),
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        _viewModel.selectedSlot ?? "",
                        style: GoogleFonts.urbanist(
                          color: kdescription,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 10.w,
                // ),
                // BlackOutlineButton(context, "Edit", () {})
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Zip Code",
          style: GoogleFonts.urbanist(
            color: kBlack,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        TextField(
          controller: zipController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter Zip Code",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Add promotion code",
          style: GoogleFonts.urbanist(
            color: kBlack,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const CopyField(),
        SizedBox(
          height: 10.h,
        ),
        // Text(
        //   "Log in or sign up to book",
        //   style: urbanist500(kBlack, 16),
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "Email*",
        //             style: urbanist500(kBlack, 14),
        //           ),
        //           SizedBox(
        //             height: 5.h,
        //           ),
        //           TextField(
        //             decoration: InputDecoration(
        //               hintText: "Email",
        //               hintStyle: urbanist400(kGrey, 12),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: kGrey,
        //                 ),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       width: 10.w,
        //     ),
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "Password*",
        //             style: urbanist500(kBlack, 16),
        //           ),
        //           SizedBox(
        //             height: 5.h,
        //           ),
        //           TextField(
        //             decoration: InputDecoration(
        //               hintText: "Password",
        //               hintStyle: urbanist400(kGrey, 12),
        //               // border: OutlineInputBorder(
        //               //   borderRadius: BorderRadius.circular(10.r),
        //               // ),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: kGrey,
        //                 ),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "Name*",
        //             style: urbanist500(kBlack, 16),
        //           ),
        //           SizedBox(
        //             height: 5.h,
        //           ),
        //           TextField(
        //             decoration: InputDecoration(
        //               hintText: "Name",
        //               hintStyle: urbanist400(kGrey, 12),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: kGrey,
        //                 ),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       width: 10.w,
        //     ),
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "Mobile Phone*",
        //             style: urbanist500(kBlack, 16),
        //           ),
        //           SizedBox(
        //             height: 5.h,
        //           ),
        //           TextFormField(
        //             keyboardType: TextInputType.phone,
        //             decoration: InputDecoration(
        //               filled: true,
        //               fillColor: kWhite,
        //               floatingLabelStyle: const TextStyle(
        //                 color: Colors.black,
        //               ),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: kGrey,
        //                 ),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               // labelText: "Phone Number",
        //               hintText: "Mobile Phone",
        //               hintStyle: urbanist400(kGrey, 12),
        //               prefixIcon: InkWell(
        //                 onTap: () {
        //                   _showCountryPicker();
        //                 },
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(
        //                     left: 10,
        //                     right: 5,
        //                   ),
        //                   child: SizedBox(
        //                     width: 65,
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Image.asset(
        //                           selectedCountryFlag,
        //                           package: countryCodePackageName,
        //                           width: 35,
        //                           height: 30,
        //                           fit: BoxFit.fill,
        //                         ),
        //                         const Icon(
        //                           Icons.arrow_drop_down,
        //                           color: Colors.black,
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),

        //             // The validator receives the text that the user has entered.
        //             validator: (value) {
        //               if (value!.isEmpty) {
        //                 return 'Please enter your phone number';
        //               }
        //               return null;
        //             },
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 40.h,
          child: BlackButton(context, "Create Appointment", () async {
            List<String> selectedServiceId = [];
            for (int i = 0; i < _viewModel.selectedService.length; i++) {
              selectedServiceId.add(_viewModel.selectedService[i].id ?? "");
            }
            // //payment dialog
            // log(CreateAppointmentRequest(
            //   beautician: ref.read(userViewModel).selectedSalon?.id,
            //   user: SharedPreferenceService.getString(AppConstants.userId),
            //   date: ref.read(userViewModel).selectedDate,
            //   services: selectedServiceId,
            //   zipcode: zipController.text,
            //   timeSlot: ref.read(userViewModel).selectedSlot.split(" - ").last,
            // ).toString());
            await _viewModel.makeAppointment(
                CreateAppointmentRequest(
                  beautician: _viewModel.selectedSalon?.id,
                  user: SharedPreferenceService.getString(AppConstants.userId),
                  date: _viewModel.selectedDate,
                  services: selectedServiceId,
                  zipcode: zipController.text,
                  timeSlot: _viewModel.selectedSlot.split(" - ").last,
                ),
                context,);
            // context.pop();

            // showDialog(
            //   context: context,
            //   builder: (BuildContext context) {
            //     return AlertDialog(
            //       title: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             "Payment Method",
            //             style: GoogleFonts.urbanist(
            //               color: kBlack,
            //               fontSize: 16.sp,
            //               fontWeight: FontWeight.w600,
            //             ),
            //           ),
            //           IconButton(
            //             onPressed: () {
            //               context.pop();
            //             },
            //             icon: const Icon(
            //               Icons.close,
            //               color: kGrey,
            //             ),
            //           )
            //         ],
            //       ),
            //       backgroundColor: const Color(0xfff8f8f8),
            //       content: const SingleChildScrollView(
            //         child: PaymentMethod(),
            //       ),
            //     );
            //   },
            // );
          }),
        )
      ],
    );
  }
}

class SelectService extends ConsumerStatefulWidget {
  const SelectService({super.key});

  @override
  ConsumerState<SelectService> createState() => _SelectServiceState();
}

class _SelectServiceState extends ConsumerState<SelectService> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          color: kLightBlue,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 10.h,
          ),
          child: Text(
            "Services",
            style: urbanist500(kBlack, 16),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        ...List.generate(
          ref.read(userViewModel).selectedSalon?.services?.length ?? 0,
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
                          ref
                                  .read(userViewModel)
                                  .selectedSalon
                                  ?.services?[index]
                                  .name ??
                              "",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "\$${ref.read(userViewModel).selectedSalon?.services?[index].price ?? ""} and up for ${ref.read(userViewModel).selectedSalon?.services?[index].durationInMinutes ?? ""} minutes",
                          style: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        (ref.watch(userViewModel).selectedService.contains(ref
                                .watch(userViewModel)
                                .selectedSalon
                                ?.services?[index],))
                            ? ref.watch(userViewModel).removeService(ref
                                .watch(userViewModel)
                                .selectedSalon
                                ?.services?[index],)
                            : ref.watch(userViewModel).addService(ref
                                .watch(userViewModel)
                                .selectedSalon
                                ?.services?[index],);

                        log(ref
                            .watch(userViewModel)
                            .selectedService
                            .length
                            .toString(),);
                      },
                      child: (ref.watch(userViewModel).selectedService.contains(
                              ref
                                  .watch(userViewModel)
                                  .selectedSalon
                                  ?.services?[index],))
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
                                border: Border.all(),
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
        // SizedBox(
        //   height: 20.h,
        // ),
        // Container(
        //   width: double.infinity,
        //   color: kLightBlue,
        //   padding: EdgeInsets.symmetric(
        //     horizontal: 5.w,
        //     vertical: 10.h,
        //   ),
        //   child: Text(
        //     "Haircut",
        //     style: urbanist500(kBlack, 16),
        //   ),
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // ...List.generate(
        //   3,
        //   (index) => Padding(
        //     padding: EdgeInsets.only(bottom: 10.h),
        //     child: Container(
        //       decoration: BoxDecoration(
        //         color: kWhite,
        //         borderRadius: BorderRadius.circular(10.r),
        //       ),
        //       child: Padding(
        //         padding: EdgeInsets.all(10.h),
        //         child: Row(
        //           children: [
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   "Medium knotless/Box braids",
        //                   style: GoogleFonts.urbanist(
        //                     color: kBlack,
        //                     fontSize: 14.sp,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //                 Text(
        //                   "\$230 and up for 300 minutes",
        //                   style: GoogleFonts.urbanist(
        //                     color: kGrey,
        //                     fontSize: 12.sp,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             SizedBox(
        //               width: 10.w,
        //             ),
        //             GestureDetector(
        //               onTap: () {
        //                 setState(() {
        //                   selected = !selected;
        //                 });
        //               },
        //               child: selected
        //                   ? CircleAvatar(
        //                       backgroundColor: kBlue,
        //                       radius: 20.r,
        //                       child: Icon(
        //                         Icons.check,
        //                         color: kWhite,
        //                         size: 20.sp,
        //                       ),
        //                     )
        //                   : Container(
        //                       height: 40.r,
        //                       width: 40.r,
        //                       decoration: BoxDecoration(
        //                         color: kWhite,
        //                         border: Border.all(),
        //                         shape: BoxShape.circle,
        //                       ),
        //                       child: Icon(
        //                         Icons.add,
        //                         color: kBlack,
        //                         size: 20.sp,
        //                       ),
        //                     ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: double.infinity,
          child: BlackButton(context, "Continue", () {
            context.pop();
            showDialog(
                context: context,
                builder: (builder) => const AlertDialog(
                      content: AddService(),
                    ),);
          }),
        )
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
            side: const BorderSide(color: klines),
            borderRadius: BorderRadius.circular(7.r),
          ),
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
                    borderSide: const BorderSide(color: klines),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "MM/YY",
                  hintStyle: urbanist400(kdescription, 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "CVV",
                  hintStyle: urbanist400(kdescription, 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: const BorderSide(color: klines),
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
            context.pop();
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
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.close,
                          color: kGrey,
                          size: 18.sp,
                        ),
                      )
                    ],
                  ),
                  backgroundColor: const Color(0xfff8f8f8),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Image.asset(
                            "assets/icons/success.webp",
                            height: 100.h,
                          ),
                        ),
                        Text(
                          "Your Booking Successful",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 18.sp,
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
          }),
        )
      ],
    );
  }
}

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Please Login or Sign Up to book",
          style: urbanist500(kBlack, 16),
        ),
        SizedBox(
          height: 10.h,
        ),
        BlackButton(
          context,
          "Login",
          () {
            context.go("/login");
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "Email*",
        //             style: urbanist500(kBlack, 14),
        //           ),
        //           SizedBox(
        //             height: 5.h,
        //           ),
        //           TextField(
        //             decoration: InputDecoration(
        //               hintText: "Email",
        //               hintStyle: urbanist400(kGrey, 12),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: kGrey,
        //                 ),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       width: 10.w,
        //     ),
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "Password*",
        //             style: urbanist500(kBlack, 16),
        //           ),
        //           SizedBox(
        //             height: 5.h,
        //           ),
        //           TextField(
        //             decoration: InputDecoration(
        //               hintText: "Password",
        //               hintStyle: urbanist400(kGrey, 12),
        //               // border: OutlineInputBorder(
        //               //   borderRadius: BorderRadius.circular(10.r),
        //               // ),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: kGrey,
        //                 ),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(7.r),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        Row(
          children: [
            const Expanded(
              child: Divider(
                color: kdisable,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                "or",
                style: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  color: kdarkPrime,
                ),
              ),
            ),
            const Expanded(
              child: Divider(
                color: kdisable,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Align(
          child: Text(
            "New to Cosmetropolis?",
            style: GoogleFonts.urbanist(
              fontSize: 12.sp,
              color: kdarkPrime,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(
          height: 35.h,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // ref.read(styleProvider).setSelectedPage("Sign Up")
              context.go("/signUp");
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: kBlack,
              surfaceTintColor: kWhite,
              padding: EdgeInsets.symmetric(
                vertical: 15.h,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
                side: const BorderSide(
                  width: 0.5,
                ),
              ),
            ),
            child: Text(
              "Create my Account",
              style: GoogleFonts.urbanist(
                color: kBlack,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

class ClientAppointmentBooking extends ConsumerStatefulWidget {
  const ClientAppointmentBooking({super.key});

  @override
  ConsumerState<ClientAppointmentBooking> createState() =>
      _ClientAppointmentBookingState();
}

class _ClientAppointmentBookingState
    extends ConsumerState<ClientAppointmentBooking> with BaseScreenView {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focussedDay) {
    setState(() {
      today = day;
    });
    _viewModel.setSelectedDate(day);
    log("Day Selected: $day");
    // ref.read(userViewModel).setSelectedDate(day);

    // filterData["date"] = day.toString();
  }

  late BeauticianViewModel _viewModel;
  bool isLoading = false;
  bool saving = false;
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }

  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    getData();
  }

  Future<void> getData() async {
    setState(() {
      isLoading = true;
    });
    await _viewModel.getBeauticianAvailability(
      context,
    );

    await _viewModel.getServicesByBeautician(
        context,
        BeauticianServicesRequest(
            beauticianId:
                SharedPreferenceService.getString(AppConstants.userId),),);

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(beauticianViewModel);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          color: kLightBlue,
          child: Text(
            "Select Date",
            style: TextStyle(
              fontSize: 14.sp,
              color: kdarkPrime,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          // height: MediaQuery.of(context).size.height * 0.5,
          // width: MediaQuery.of(context).size.width,
          child: TableCalendar(
            weekNumbersVisible: true,
            firstDay: DateTime.now(),
            focusedDay: today,
            lastDay: DateTime.now().add(const Duration(days: 7)),
            headerStyle: HeaderStyle(
              titleCentered: true,
              titleTextStyle: GoogleFonts.urbanist(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: kdescription,
              ),
              formatButtonVisible: false,
            ),
            rowHeight: 40.h,
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
                border: Border.all(),
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
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          color: kLightBlue,
          child: Text(
            "Select Slot",
            style: TextStyle(
              fontSize: 14.sp,
              color: kdarkPrime,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        if (isLoading)
          const Center(
            child: CircularProgressIndicator(),
          )
        else
          Container(
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: klines),
            ),
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
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: _viewModel.beauticianAvailabilityResponseModel
                                  ?.data?.slots?.morning?.isEmpty ??
                              true
                          ? Text(
                              "No slots found",
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kGrey,
                              ),
                            )
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: _viewModel
                                      .beauticianAvailabilityResponseModel
                                      ?.data
                                      ?.slots
                                      ?.morning
                                      ?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    _viewModel.setSelectedSlot(_viewModel
                                            .beauticianAvailabilityResponseModel
                                            ?.data
                                            ?.slots
                                            ?.morning?[index]
                                            .time ??
                                        "",);
                                    log("selected slot ${_viewModel.selectedSlot}");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5,),
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: _viewModel
                                                  .beauticianAvailabilityResponseModel
                                                  ?.data
                                                  ?.slots
                                                  ?.morning?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: _viewModel
                                                  .beauticianAvailabilityResponseModel
                                                  ?.data
                                                  ?.slots
                                                  ?.morning?[index]
                                                  .time ==
                                              _viewModel.selectedSlot
                                          ? kBlack
                                          : _viewModel
                                                      .beauticianAvailabilityResponseModel
                                                      ?.data
                                                      ?.slots
                                                      ?.morning?[index]
                                                      .isBooked ??
                                                  false
                                              ? const Color(0xffd1d1d1)
                                              : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_viewModel.beauticianAvailabilityResponseModel?.data?.slots?.morning?[index].time}",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _viewModel
                                                      .beauticianAvailabilityResponseModel
                                                      ?.data
                                                      ?.slots
                                                      ?.morning?[index]
                                                      .time ==
                                                  _viewModel.selectedSlot
                                              ? kWhite
                                              : kBlack,
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
                      height: 40.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: _viewModel.beauticianAvailabilityResponseModel
                                  ?.data?.slots?.afternoon?.isEmpty ??
                              true
                          ? Text(
                              "No slots found",
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kGrey,
                              ),
                            )
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: _viewModel
                                      .beauticianAvailabilityResponseModel
                                      ?.data
                                      ?.slots
                                      ?.afternoon
                                      ?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    _viewModel.setSelectedSlot(_viewModel
                                            .beauticianAvailabilityResponseModel
                                            ?.data
                                            ?.slots
                                            ?.afternoon?[index]
                                            .time ??
                                        "",);
                                    log("selected slot ${_viewModel.selectedSlot}");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5,),
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: _viewModel
                                                  .beauticianAvailabilityResponseModel
                                                  ?.data
                                                  ?.slots
                                                  ?.afternoon?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: _viewModel
                                                  .beauticianAvailabilityResponseModel
                                                  ?.data
                                                  ?.slots
                                                  ?.afternoon?[index]
                                                  .time ==
                                              _viewModel.selectedSlot
                                          ? kBlack
                                          : _viewModel
                                                      .beauticianAvailabilityResponseModel
                                                      ?.data
                                                      ?.slots
                                                      ?.afternoon?[index]
                                                      .isBooked ??
                                                  false
                                              ? const Color(0xffd1d1d1)
                                              : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_viewModel.beauticianAvailabilityResponseModel?.data?.slots?.afternoon?[index].time}",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _viewModel
                                                      .beauticianAvailabilityResponseModel
                                                      ?.data
                                                      ?.slots
                                                      ?.afternoon?[index]
                                                      .time ==
                                                  _viewModel.selectedSlot
                                              ? kWhite
                                              : kBlack,
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
                      height: 40.h,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: _viewModel.beauticianAvailabilityResponseModel
                                  ?.data?.slots?.evening?.isEmpty ??
                              true
                          ? Text(
                              "No slots found",
                              style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kGrey,
                              ),
                            )
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: _viewModel
                                      .beauticianAvailabilityResponseModel
                                      ?.data
                                      ?.slots
                                      ?.evening
                                      ?.length ??
                                  0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    _viewModel.setSelectedSlot(_viewModel
                                            .beauticianAvailabilityResponseModel
                                            ?.data
                                            ?.slots
                                            ?.evening?[index]
                                            .time ??
                                        "",);
                                    log("selected slot ${_viewModel.selectedSlot}");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5,),
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: _viewModel
                                                  .beauticianAvailabilityResponseModel
                                                  ?.data
                                                  ?.slots
                                                  ?.evening?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: _viewModel
                                                  .beauticianAvailabilityResponseModel
                                                  ?.data
                                                  ?.slots
                                                  ?.evening?[index]
                                                  .time ==
                                              _viewModel.selectedSlot
                                          ? kBlack
                                          : _viewModel
                                                      .beauticianAvailabilityResponseModel
                                                      ?.data
                                                      ?.slots
                                                      ?.evening?[index]
                                                      .isBooked ??
                                                  false
                                              ? const Color(0xffd1d1d1)
                                              : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${_viewModel.beauticianAvailabilityResponseModel?.data?.slots?.evening?[index].time}",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _viewModel
                                                      .beauticianAvailabilityResponseModel
                                                      ?.data
                                                      ?.slots
                                                      ?.evening?[index]
                                                      .time ==
                                                  _viewModel.selectedSlot
                                              ? kWhite
                                              : kBlack,
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
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          color: kLightBlue,
          child: Text(
            "Select Service",
            style: TextStyle(
              fontSize: 14.sp,
              color: kdarkPrime,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        ...List.generate(
          _viewModel.beauticianServicesResponseModel?.data?.length ?? 0,
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
                          _viewModel.beauticianServicesResponseModel
                                  ?.data?[index].name ??
                              "",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "\$${_viewModel.beauticianServicesResponseModel?.data?[index].price ?? ""} and up for ${_viewModel.beauticianServicesResponseModel?.data?[index].durationInMinutes ?? ""} minutes",
                          style: GoogleFonts.urbanist(
                            color: kGrey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        (_viewModel.selectedService.contains(_viewModel
                                .beauticianServicesResponseModel?.data?[index],))
                            ? _viewModel.removeServices(_viewModel
                                .beauticianServicesResponseModel?.data?[index],)
                            : _viewModel.addServices(_viewModel
                                .beauticianServicesResponseModel?.data?[index],);

                        log(_viewModel.selectedService.length.toString());
                      },
                      child: (_viewModel.selectedService.contains(_viewModel
                              .beauticianServicesResponseModel?.data?[index],))
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
                                border: Border.all(),
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
          height: 10.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: BlackButton(
              context, saving ? "Processing..." : "Create Appointment",
              () async {
            List<String> selectedServiceID = [];
            saving = true;
            setState(() {});
            for (int i = 0; i < _viewModel.selectedService.length; i++) {
              selectedServiceID
                  .add(_viewModel.selectedService[i].id.toString());
            }
            await _viewModel.makeAppointment(
                CreateAppointmentRequest(
                  user: _viewModel.getClientByIdResponseModel?.data?.client?.id,
                  beautician:
                      SharedPreferenceService.getString(AppConstants.userId),
                  services: selectedServiceID,
                  date: _viewModel.selectedDate,
                  timeSlot: _viewModel.selectedSlot,
                  zipcode:
                      _viewModel.getClientByIdResponseModel?.data?.client?.zip,
                ),
                context,);
            saving = false;
            setState(() {});
          }),
        )
      ],),
    );
  }
}
