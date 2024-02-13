import 'dart:developer';

import 'package:better_cupertino_slider/better_cupertino_slider.dart';
import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/user_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheets_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class BeauticiansListWebView extends ConsumerStatefulWidget {
  final Result? salonDetails;
  const BeauticiansListWebView({super.key, required this.salonDetails});

  @override
  ConsumerState<BeauticiansListWebView> createState() =>
      _BeauticiansListWebViewState();
}

class _BeauticiansListWebViewState
    extends ConsumerState<BeauticiansListWebView> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(
          color: klines,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: InkWell(
        onTap: () {
          ref.read(userViewModel).setSelectedSalon(widget.salonDetails);
          context.go(
            "/beautician-listing/service-details",
            extra: widget.salonDetails?.id ?? "",
          );
        },
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      // height: 160.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.salonDetails?.image ??
                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.m.wikipedia.org%2Fwiki%2FFile%3AImage_not_available.png&psig=AOvVaw3bqeEfAB4-3wN6rUYa5hrH&ust=1695207301511000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKjBurrBtoEDFQAAAAAdAAAAABAI",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      height: 238.h,
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 10.h,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                widget.salonDetails?.name ?? "",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/icons/verify.webp",
                                height: 18.h,
                                // width: 18.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: kdescription,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Expanded(
                                child: Text(
                                  widget.salonDetails?.address ?? "",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kdescription,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                ignoreGestures: true,
                                itemSize: 20.sp,
                                initialRating: widget.salonDetails?.avgRating
                                        ?.toDouble() ??
                                    0,
                                allowHalfRating: true,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rounded,
                                  color: Color(0xffff7500),
                                ),
                                onRatingUpdate: (rating) {},
                                unratedColor: kGrey,
                              ),
                              Text(
                                "${widget.salonDetails?.avgRating} (${widget.salonDetails?.ratingCount} Reviews)",
                                style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FittedBox(
                                child: Text(
                                  "MORNING    ",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: widget
                                              .salonDetails?.morning?.isEmpty ??
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
                                          physics:
                                              const BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: widget.salonDetails
                                                  ?.morning?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                // setState(() {
                                                //   selected = index;
                                                // });
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 5,
                                                ),
                                                margin: EdgeInsets.only(
                                                  bottom: 10.h,
                                                  right: 1.w,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5.r,
                                                  ),
                                                  border: widget
                                                              .salonDetails
                                                              ?.morning?[index]
                                                              .isBooked ??
                                                          false
                                                      ? null
                                                      : Border.all(),
                                                  color: widget
                                                              .salonDetails
                                                              ?.morning?[index]
                                                              .isBooked ??
                                                          false
                                                      ? const Color(0xffd1d1d1)
                                                      : kWhite,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "${widget.salonDetails?.morning?[index].time}",
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FittedBox(
                                child: Text(
                                  "AFTERNOON",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: widget.salonDetails?.afternoon
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
                                          physics:
                                              const BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: widget.salonDetails
                                                  ?.afternoon?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                // setState(() {
                                                //   selected = index;
                                                // });
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 5,
                                                ),
                                                margin: EdgeInsets.only(
                                                  bottom: 10.h,
                                                  right: 1.w,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5.r,
                                                  ),
                                                  border: widget
                                                              .salonDetails
                                                              ?.afternoon?[
                                                                  index]
                                                              .isBooked ??
                                                          false
                                                      ? null
                                                      : Border.all(),
                                                  color: widget
                                                              .salonDetails
                                                              ?.afternoon?[
                                                                  index]
                                                              .isBooked ??
                                                          false
                                                      ? const Color(0xffd1d1d1)
                                                      : kWhite,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "${widget.salonDetails?.afternoon?[index].time}",
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FittedBox(
                                child: Text(
                                  "EVENING    ",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: widget
                                              .salonDetails?.evening?.isEmpty ??
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
                                          physics:
                                              const BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: widget.salonDetails
                                                  ?.evening?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                // setState(() {
                                                //   selected = index;
                                                // });
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 5,
                                                ),
                                                margin: EdgeInsets.only(
                                                  bottom: 10.h,
                                                  right: 1.w,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5.r,
                                                  ),
                                                  border: widget
                                                              .salonDetails
                                                              ?.evening?[index]
                                                              .isBooked ??
                                                          false
                                                      ? null
                                                      : Border.all(),
                                                  color: widget
                                                              .salonDetails
                                                              ?.evening?[index]
                                                              .isBooked ??
                                                          false
                                                      ? const Color(0xffd1d1d1)
                                                      : kWhite,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "${widget.salonDetails?.evening?[index].time}",
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.salonDetails?.services?.length ?? 0,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: kGrey,
                  );
                },
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 40.h,
                    child: Row(
                      children: [
                        Text(
                          widget.salonDetails?.services?[index].name ?? "",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // Text(
                        //   "- Silk Press & amp. Haircut",
                        //   style: GoogleFonts.urbanist(
                        //     fontSize: 12.sp,
                        //     fontWeight: FontWeight.w400,
                        //     color: kGrey,
                        //   ),
                        // ),
                        const Spacer(),
                        Text(
                          "${widget.salonDetails?.services?[index].durationInMinutes ?? ""} Mins - \$${widget.salonDetails?.services?[index].price ?? 0}",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: kGrey,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: kselected,
                            // border: Border.all(
                            //   color: kBlack,
                            //   width: 1.0,
                            // ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.r,
                              horizontal: 7.w,
                            ),
                            child: Text(
                              "Choose",
                              style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: kBlack,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      ref
                          .read(userViewModel)
                          .setSelectedSalon(widget.salonDetails);
                      context.go(
                        "/beautician-listing/service-details",
                        extra: widget.salonDetails?.id ?? "",
                      );
                    },
                    child: const Text("More Information"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(userViewModel)
                          .setSelectedSalon(widget.salonDetails);
                      if (SharedPreferenceService.getString(
                                AppConstants.accessToken,
                              ) ==
                              null ||
                          SharedPreferenceService.getString(
                                AppConstants.accessToken,
                              ) ==
                              "") {
                        showDialog(
                          context: context,
                          builder: (builder) => const AlertDialog(
                            scrollable: true,
                            content: LoginDialog(),
                          ),
                        );
                      } else {
                        //validate
                        log("Token ${SharedPreferenceService.getString(AppConstants.accessToken)}");
                        ref.read(userViewModel).validate(context);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(kBlack),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        ),
                      ),
                    ),
                    child: Text(
                      "Make an Appointment",
                      style: GoogleFonts.urbanist(
                        fontSize: MediaQuery.of(context).size.width > 1080
                            ? 14.sp
                            : MediaQuery.of(context).size.width > 950
                                ? 10.sp
                                : 15.sp,
                        fontWeight: FontWeight.w400,
                        color: kWhite,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeauticiansListMobView extends ConsumerStatefulWidget {
  final Result? salonDetails;
  const BeauticiansListMobView({super.key, required this.salonDetails});

  @override
  ConsumerState<BeauticiansListMobView> createState() =>
      _BeauticiansListMobViewState();
}

class _BeauticiansListMobViewState
    extends ConsumerState<BeauticiansListMobView> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ref.read(userViewModel).setSelectedSalon(widget.salonDetails);
        context.go(
          "/beautician-listing/service-details",
          extra: widget.salonDetails?.id ?? "",
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kWhite,
          border: Border.all(
            color: klines,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 15.h),
          child: Column(
            children: [
              Container(
                height: 150.h,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.salonDetails?.image ??
                          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.m.wikipedia.org%2Fwiki%2FFile%3AImage_not_available.png&psig=AOvVaw3bqeEfAB4-3wN6rUYa5hrH&ust=1695207301511000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKjBurrBtoEDFQAAAAAdAAAAABAI",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    widget.salonDetails?.name ?? "",
                    style: GoogleFonts.urbanist(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // SizedBox(
                  //   width: 10.w,
                  // ),
                  Image.asset(
                    "assets/icons/verify.webp",
                    height: 18.h,
                    width: 18.w,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: kdescription,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Text(
                      widget.salonDetails?.address ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kdescription,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    ignoreGestures: true,
                    itemSize: 20.sp,
                    initialRating: widget.salonDetails?.avgRating ?? 0,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xffff7500),
                    ),
                    onRatingUpdate: (rating) {},
                    unratedColor: kGrey,
                  ),
                  Text(
                    "${widget.salonDetails?.avgRating} (${widget.salonDetails?.ratingCount} Reviews)",
                    style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              // const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "MORNING    ",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      child: widget.salonDetails?.morning?.isEmpty ?? true
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
                              itemCount:
                                  widget.salonDetails?.morning?.length ?? 0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    // setState(() {
                                    //   selected = index;
                                    // });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    margin: EdgeInsets.only(
                                      bottom: 10.h,
                                      right: 3.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: widget.salonDetails
                                                  ?.morning?[index].isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: widget.salonDetails
                                                  ?.morning?[index].isBooked ??
                                              false
                                          ? const Color(0xffd1d1d1)
                                          : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${widget.salonDetails?.morning?[index].time}",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "AFTERNOON",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      child: widget.salonDetails?.afternoon?.isEmpty ?? true
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
                              itemCount:
                                  widget.salonDetails?.afternoon?.length ?? 0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    // setState(() {
                                    //   selected = index;
                                    // });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    margin: EdgeInsets.only(
                                      bottom: 10.h,
                                      right: 3.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: widget
                                                  .salonDetails
                                                  ?.afternoon?[index]
                                                  .isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: widget
                                                  .salonDetails
                                                  ?.afternoon?[index]
                                                  .isBooked ??
                                              false
                                          ? const Color(0xffd1d1d1)
                                          : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${widget.salonDetails?.afternoon?[index].time}",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "EVENING    ",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      child: widget.salonDetails?.evening?.isEmpty ?? true
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
                              itemCount:
                                  widget.salonDetails?.evening?.length ?? 0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    // setState(() {
                                    //   selected = index;
                                    // });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    margin: EdgeInsets.only(
                                      bottom: 10.h,
                                      right: 3.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                      border: widget.salonDetails
                                                  ?.evening?[index].isBooked ??
                                              false
                                          ? null
                                          : Border.all(),
                                      color: widget.salonDetails
                                                  ?.evening?[index].isBooked ??
                                              false
                                          ? const Color(0xffd1d1d1)
                                          : kWhite,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${widget.salonDetails?.evening?[index].time}",
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

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.salonDetails?.services?.length ?? 0,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 51.h,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  widget.salonDetails?.services?[index].name ??
                                      "",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // Text(
                                //   "- Silk Press & amp. Haircut",
                                //   maxLines: 2,
                                //   overflow: TextOverflow.ellipsis,
                                //   style: GoogleFonts.urbanist(
                                //     fontSize: 12.sp,
                                //     fontWeight: FontWeight.w400,
                                //     color: kGrey,
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${widget.salonDetails?.services?[index].durationInMinutes ?? ""} Mins - \$${widget.salonDetails?.services?[index].price ?? ""}",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kGrey,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: kselected,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.r,
                                      horizontal: 7.w,
                                    ),
                                    child: Text(
                                      "Choose",
                                      style: GoogleFonts.urbanist(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: kselected,
                      ),
                    ],
                  );
                },
              ),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: kBlue, width: 2),
                ),
                child: TextButton(
                  onPressed: () {
                    ref
                        .read(userViewModel)
                        .setSelectedSalon(widget.salonDetails);
                    context.go(
                      "/beautician-listing/service-details",
                      extra: widget.salonDetails?.id ?? "",
                    );
                  },
                  child: Text(
                    "More Information",
                    style: GoogleFonts.urbanist(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: kBlue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ref
                        .read(userViewModel)
                        .setSelectedSalon(widget.salonDetails);
                    if (SharedPreferenceService.getString(
                              AppConstants.accessToken,
                            ) ==
                            null ||
                        SharedPreferenceService.getString(
                              AppConstants.accessToken,
                            ) ==
                            "") {
                      showDialog(
                        context: context,
                        builder: (builder) => const AlertDialog(
                          scrollable: true,
                          content: LoginDialog(),
                        ),
                      );
                    } else {
                      //validate
                      log("Token ${SharedPreferenceService.getString(AppConstants.accessToken)}");
                      ref.read(userViewModel).validate(context);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(kBlack),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      ),
                    ),
                  ),
                  child: Text(
                    "Make an Appointment",
                    style: GoogleFonts.urbanist(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeauticiansSideFilter extends ConsumerStatefulWidget {
  int upperFilterIndex;
  int selectedService;
  BeauticiansSideFilter({
    super.key,
    required this.upperFilterIndex,
    required this.selectedService,
  });

  @override
  ConsumerState<BeauticiansSideFilter> createState() =>
      _BeauticiansSideFilterState();
}

class _BeauticiansSideFilterState extends ConsumerState<BeauticiansSideFilter> {
  // double priceRange = 2000;
  List<String> servicesList = [
    'Medium knotless/Box Braids',
    'Fixing an issue',
    'Shampoo and Style',
    'Hair Spa',
    'Makeup',
    'Nail Art',
    'Manicure and Pedicure',
  ];

  // int selectedSortPrice = -1;
  List<String> sortPriceList = ["asc", "desc"];

  int selectedService = -1;
  String selectedServiceId = "";

  // int selectedRating = -1;
  List<int> ratings = [5, 4, 3, 2, 1];

  @override
  void initState() {
    selectedService = widget.selectedService;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filters",
              style: GoogleFonts.urbanist(
                fontSize: 20.h,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 45,
              child: MaterialButton(
                onPressed: () {
                  if (ref.read(homePageViewModel).priceRange < 2000 ||
                      ref.read(homePageViewModel).sortPrice != -1 ||
                      ref.read(homePageViewModel).avgRating != -1 ||
                      widget.selectedService != -1) {
                    setState(() {
                      ref.read(homePageViewModel).priceRange = 2000;
                      ref.read(homePageViewModel).avgRating = -1;
                      widget.upperFilterIndex = 0;
                      selectedService = -1;
                      ref.read(homePageViewModel).sortPrice = -1;
                    });

                    ref.read(homePageViewModel).getBeauticiansByFilter(
                          const BeauticiansFilterRequest(
                            filters: Filters(
                              search: "",
                            ),
                          ),
                        );
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: (ref.read(homePageViewModel).priceRange < 2000 ||
                        ref.read(homePageViewModel).sortPrice != -1 ||
                        ref.read(homePageViewModel).avgRating != -1 ||
                        selectedService != -1)
                    ? Colors.redAccent
                    : kGrey,
                child: Row(
                  children: const [
                    Icon(
                      Icons.filter_alt_off_rounded,
                      color: kWhite,
                    ),
                    Text(
                      "Clear",
                      style: TextStyle(color: kWhite),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price Range",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$1",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                    Text(
                      "\$1000",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                    Text(
                      "\$2000",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: BetterCupertinoSlider(
                    min: 1,
                    max: 2000,
                    value: ref.read(homePageViewModel).priceRange,
                    onChangeEnd: (value) {
                      ref.read(homePageViewModel).getBeauticiansByFilter(
                            BeauticiansFilterRequest(
                              filters: Filters(
                                search: ref
                                            .read(homePageViewModel)
                                            .locationController
                                            .text
                                            .isEmpty &&
                                        ref
                                            .read(homePageViewModel)
                                            .locationController
                                            .text
                                            .isEmpty
                                    ? ""
                                    : null,
                                location: ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty
                                    ? null
                                    : ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text,
                                date: ref
                                        .read(homePageViewModel)
                                        .dateController
                                        .text
                                        .isEmpty
                                    ? null
                                    : ref
                                        .read(homePageViewModel)
                                        .dateController
                                        .text,
                                sortPrice:
                                    ref.read(homePageViewModel).sortPrice == -1
                                        ? null
                                        : sortPriceList[ref
                                            .read(homePageViewModel)
                                            .sortPrice],
                                priceRange: PriceRange(
                                  minPrice: 0,
                                  maxPrice: ref
                                      .read(homePageViewModel)
                                      .priceRange
                                      .round(),
                                ),
                                avgRating:
                                    ref.read(homePageViewModel).avgRating == -1
                                        ? null
                                        : ratings[ref
                                            .read(homePageViewModel)
                                            .avgRating],
                              ),
                            ),
                          );
                      // ref.read(homePageViewModel).fetchAllSalons(
                      //     ref.read(homePageViewModel).searchController.text,
                      //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                      //         ? "low"
                      //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                      //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                      //     serviceType: selectedService == -1
                      //         ? ""
                      //         : ref
                      //                 .read(homePageViewModel)
                      //                 .services
                      //                 .data?[selectedService]
                      //                 .serviceType
                      //                 ?.id ??
                      //             "",
                      //     rating: ref.read(homePageViewModel).avgRating == -1
                      //         ? ""
                      //         : ratings[ref.read(homePageViewModel).avgRating]);
                    },
                    configure: BetterCupertinoSliderConfigure(
                      trackHorizontalPadding: 0.0,
                      trackHeight: 8.h,
                      trackLeftColor: kBlue,
                      trackRightColor: Colors.grey.withOpacity(0.3),
                      thumbRadius: 8.r,
                      thumbPainter: (canvas, rect) {
                        final center = Offset(rect.center.dx, rect.center.dy);
                        final radius = rect.shortestSide / 2.0;
                        canvas.drawCircle(
                          center,
                          radius,
                          Paint()..color = kBlue,
                        );
                        canvas.drawCircle(
                          center,
                          radius - 2.0,
                          Paint()..color = Colors.white,
                        );
                      },
                    ),
                    onChanged: (value) {
                      // print(value);
                      setState(() {
                        ref.read(homePageViewModel).priceRange = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sort Price",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                SizedBox(
                  height: 5.h,
                ),
                RadioListTile(
                  title: Text(
                    "Low to High",
                    style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kBlack,
                    ),
                  ),
                  value: 0,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: EdgeInsets.zero,
                  activeColor: kBlue,
                  groupValue: ref.read(homePageViewModel).sortPrice,
                  toggleable: true,
                  onChanged: (value) {
                    setState(() {
                      if (value == null) {
                        ref.read(homePageViewModel).sortPrice = -1;
                      } else {
                        ref.read(homePageViewModel).sortPrice = value;
                      }
                    });

                    ref.read(homePageViewModel).getBeauticiansByFilter(
                          BeauticiansFilterRequest(
                            filters: Filters(
                              search: ref
                                          .read(homePageViewModel)
                                          .locationController
                                          .text
                                          .isEmpty &&
                                      ref
                                          .read(homePageViewModel)
                                          .locationController
                                          .text
                                          .isEmpty
                                  ? ""
                                  : null,
                              location: ref
                                      .read(homePageViewModel)
                                      .locationController
                                      .text
                                      .isEmpty
                                  ? null
                                  : ref
                                      .read(homePageViewModel)
                                      .locationController
                                      .text,
                              date: ref
                                      .read(homePageViewModel)
                                      .dateController
                                      .text
                                      .isEmpty
                                  ? null
                                  : ref
                                      .read(homePageViewModel)
                                      .dateController
                                      .text,
                              sortPrice:
                                  ref.read(homePageViewModel).sortPrice == -1
                                      ? null
                                      : sortPriceList[ref
                                          .read(homePageViewModel)
                                          .sortPrice],
                              priceRange: PriceRange(
                                minPrice: 0,
                                maxPrice: ref
                                    .read(homePageViewModel)
                                    .priceRange
                                    .round(),
                              ),
                              avgRating:
                                  ref.read(homePageViewModel).avgRating == -1
                                      ? null
                                      : ratings[ref
                                          .read(homePageViewModel)
                                          .avgRating],
                            ),
                          ),
                        );

                    // ref.read(homePageViewModel).fetchAllSalons(
                    //     ref.read(homePageViewModel).searchController.text,
                    //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                    //         ? "low"
                    //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                    //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                    //     serviceType: selectedService == -1
                    //         ? ""
                    //         : ref
                    //                 .read(homePageViewModel)
                    //                 .services
                    //                 .data?[selectedService]
                    //                 .serviceType
                    //                 ?.id ??
                    //             "",
                    //     rating: ref.read(homePageViewModel).avgRating == -1
                    //         ? ""
                    //         : ratings[ref.read(homePageViewModel).avgRating]);
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                RadioListTile(
                  title: Text(
                    "High to Low",
                    style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kBlack,
                    ),
                  ),
                  value: 1,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: EdgeInsets.zero,
                  activeColor: kBlue,
                  groupValue: ref.read(homePageViewModel).sortPrice,
                  toggleable: true,
                  onChanged: (value) {
                    setState(() {
                      if (value == null) {
                        ref.read(homePageViewModel).sortPrice = -1;
                      } else {
                        ref.read(homePageViewModel).sortPrice = value;
                      }
                    });

                    ref.read(homePageViewModel).getBeauticiansByFilter(
                          BeauticiansFilterRequest(
                            filters: Filters(
                              search: ref
                                          .read(homePageViewModel)
                                          .locationController
                                          .text
                                          .isEmpty &&
                                      ref
                                          .read(homePageViewModel)
                                          .locationController
                                          .text
                                          .isEmpty
                                  ? ""
                                  : null,
                              location: ref
                                      .read(homePageViewModel)
                                      .locationController
                                      .text
                                      .isEmpty
                                  ? null
                                  : ref
                                      .read(homePageViewModel)
                                      .locationController
                                      .text,
                              date: ref
                                      .read(homePageViewModel)
                                      .dateController
                                      .text
                                      .isEmpty
                                  ? null
                                  : ref
                                      .read(homePageViewModel)
                                      .dateController
                                      .text,
                              sortPrice:
                                  ref.read(homePageViewModel).sortPrice == -1
                                      ? null
                                      : sortPriceList[ref
                                          .read(homePageViewModel)
                                          .sortPrice],
                              priceRange: PriceRange(
                                minPrice: 0,
                                maxPrice: ref
                                    .read(homePageViewModel)
                                    .priceRange
                                    .round(),
                              ),
                              avgRating:
                                  ref.read(homePageViewModel).avgRating == -1
                                      ? null
                                      : ratings[ref
                                          .read(homePageViewModel)
                                          .avgRating],
                            ),
                          ),
                        );

                    // ref.read(homePageViewModel).fetchAllSalons(
                    //     ref.read(homePageViewModel).searchController.text,
                    //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                    //         ? "low"
                    //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                    //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                    //     serviceType: selectedService == -1
                    //         ? ""
                    //         : ref
                    //                 .read(homePageViewModel)
                    //                 .services
                    //                 .data?[selectedService]
                    //                 .serviceType
                    //                 ?.id ??
                    //             "",
                    //     rating: ref.read(homePageViewModel).avgRating == -1
                    //         ? ""
                    //         : ratings[ref.read(homePageViewModel).avgRating]);
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service Type",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: ref
                          .read(homePageViewModel)
                          .serviceTypesList
                          ?.data
                          ?.length ??
                      0,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return RadioListTile(
                      title: Text(
                        ref
                                .read(homePageViewModel)
                                .serviceTypesList
                                ?.data?[index]
                                .name ??
                            "",
                        style: GoogleFonts.urbanist(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kBlack,
                        ),
                      ),
                      value: index,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: EdgeInsets.zero,
                      activeColor: kBlue,
                      groupValue: selectedService,
                      toggleable: true,
                      onChanged: (value) {
                        setState(() {
                          if (value == null) {
                            widget.selectedService = -1;
                            selectedService = -1;
                            widget.upperFilterIndex = 0;
                          } else {
                            widget.selectedService = value;
                            selectedService = value;
                            widget.upperFilterIndex = value + 1;
                          }
                        });

                        // ref.read(homePageViewModel).fetchAllSalons(
                        //     ref.read(homePageViewModel).searchController.text,
                        //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                        //         ? "low"
                        //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                        //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                        //     serviceType: selectedService == -1
                        //         ? ""
                        //         : ref
                        //                 .read(homePageViewModel)
                        //                 .services
                        //                 .data?[selectedService]
                        //                 .serviceType
                        //                 ?.id ??
                        //             "",
                        //     rating: ref.read(homePageViewModel).avgRating == -1
                        //         ? ""
                        //         : ratings[ref.read(homePageViewModel).avgRating]);
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              color: klines,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rating",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Divider(
                  color: klines,
                ),
                SizedBox(
                  height: 5.h,
                ),
                //handle overflow between 861 to 701
                if (MediaQuery.of(context).size.width > 1165)
                  webRatingBar()
                else
                  mobRatingBar(),

                SizedBox(
                  height: 5.h,
                ),
                //another radiolist tile
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget webRatingBar() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              width: 20.w,
              child: RadioListTile(
                value: index,
                activeColor: kBlue,
                groupValue: ref.read(homePageViewModel).avgRating,
                toggleable: true,
                onChanged: (value) {
                  setState(() {
                    if (value == null) {
                      ref.read(homePageViewModel).avgRating = -1;
                    } else {
                      ref.read(homePageViewModel).avgRating = value;
                    }
                  });
                  ref.read(homePageViewModel).getBeauticiansByFilter(
                        BeauticiansFilterRequest(
                          filters: Filters(
                            search: ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty &&
                                    ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty
                                ? ""
                                : null,
                            location: ref
                                    .read(homePageViewModel)
                                    .locationController
                                    .text
                                    .isEmpty
                                ? null
                                : ref
                                    .read(homePageViewModel)
                                    .locationController
                                    .text,
                            date: ref
                                    .read(homePageViewModel)
                                    .dateController
                                    .text
                                    .isEmpty
                                ? null
                                : ref
                                    .read(homePageViewModel)
                                    .dateController
                                    .text,
                            sortPrice:
                                ref.read(homePageViewModel).sortPrice == -1
                                    ? null
                                    : sortPriceList[
                                        ref.read(homePageViewModel).sortPrice],
                            priceRange: PriceRange(
                              minPrice: 0,
                              maxPrice: ref
                                  .read(homePageViewModel)
                                  .priceRange
                                  .round(),
                            ),
                            avgRating:
                                ref.read(homePageViewModel).avgRating == -1
                                    ? null
                                    : ratings[
                                        ref.read(homePageViewModel).avgRating],
                          ),
                        ),
                      );

                  // ref.read(homePageViewModel).fetchAllSalons(
                  //     ref.read(homePageViewModel).searchController.text,
                  //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                  //         ? "low"
                  //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                  //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                  //     serviceType: selectedService == -1
                  //         ? ""
                  //         : ref
                  //                 .read(homePageViewModel)
                  //                 .services
                  //                 .data?[selectedService]
                  //                 .serviceType
                  //                 ?.id ??
                  //             "",
                  //     rating:
                  //         ref.read(homePageViewModel).avgRating == -1 ? "" : ratings[ref.read(homePageViewModel).avgRating]);
                },
              ),
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 20.sp,
              initialRating: 5.0 - index,
              allowHalfRating: true,
              itemBuilder: (context, _) => const Icon(
                Icons.star_rounded,
                color: Color(0xffff7500),
                size: 3,
              ),
              onRatingUpdate: (rating) {},
              unratedColor: klines,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              flex: MediaQuery.of(context).size.width > 1165 ? 1 : 0,
              child: SizedBox(
                width: 30.w,
                child: LinearProgressBar(
                  maxSteps: 100,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 100 - (index * 20),
                  progressColor: kBlue,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xffff7500),
                  ),
                  semanticsLabel: "Label",
                  semanticsValue: "Value",
                  minHeight: 3.h,
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "144",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBlack,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget TabRatingBar() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              width: 20.w,
              child: RadioListTile(
                value: index,
                activeColor: kBlue,
                groupValue: ref.read(homePageViewModel).avgRating,
                toggleable: true,
                onChanged: (value) {
                  setState(() {
                    if (value == null) {
                      ref.read(homePageViewModel).avgRating = -1;
                    } else {
                      ref.read(homePageViewModel).avgRating = value;
                    }
                  });
                  ref.read(homePageViewModel).getBeauticiansByFilter(
                        BeauticiansFilterRequest(
                          filters: Filters(
                            search: ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty &&
                                    ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty
                                ? ""
                                : null,
                            location: ref
                                    .read(homePageViewModel)
                                    .locationController
                                    .text
                                    .isEmpty
                                ? null
                                : ref
                                    .read(homePageViewModel)
                                    .locationController
                                    .text,
                            date: ref
                                    .read(homePageViewModel)
                                    .dateController
                                    .text
                                    .isEmpty
                                ? null
                                : ref
                                    .read(homePageViewModel)
                                    .dateController
                                    .text,
                            sortPrice:
                                ref.read(homePageViewModel).sortPrice == -1
                                    ? null
                                    : sortPriceList[
                                        ref.read(homePageViewModel).sortPrice],
                            priceRange: PriceRange(
                              minPrice: 0,
                              maxPrice: ref
                                  .read(homePageViewModel)
                                  .priceRange
                                  .round(),
                            ),
                            avgRating:
                                ref.read(homePageViewModel).avgRating == -1
                                    ? null
                                    : ratings[
                                        ref.read(homePageViewModel).avgRating],
                          ),
                        ),
                      );

                  // ref.read(homePageViewModel).fetchAllSalons(
                  //     ref.read(homePageViewModel).searchController.text,
                  //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                  //         ? "low"
                  //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                  //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                  //     serviceType: selectedService == -1
                  //         ? ""
                  //         : ref
                  //                 .read(homePageViewModel)
                  //                 .services
                  //                 .data?[selectedService]
                  //                 .serviceType
                  //                 ?.id ??
                  //             "",
                  //     rating:
                  //         ref.read(homePageViewModel).avgRating == -1 ? "" : ratings[ref.read(homePageViewModel).avgRating]);
                },
              ),
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 20.sp,
              initialRating: 5.0 - index,
              allowHalfRating: true,
              itemBuilder: (context, _) => const Icon(
                Icons.star_rounded,
                color: Color(0xffff7500),
                size: 3,
              ),
              onRatingUpdate: (rating) {},
              unratedColor: klines,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              flex: MediaQuery.of(context).size.width > 1165 ? 1 : 0,
              child: SizedBox(
                width: 30.w,
                child: LinearProgressBar(
                  maxSteps: 100,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 100 - (index * 20),
                  progressColor: kBlue,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xffff7500),
                  ),
                  semanticsLabel: "Label",
                  semanticsValue: "Value",
                  minHeight: 3.h,
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "144",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBlack,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget mobRatingBar() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: RadioListTile(
                value: index,
                // contentPadding: EdgeInsets.only(left: 8.0, right: 0.0),
                activeColor: kBlue,
                groupValue: ref.read(homePageViewModel).avgRating,
                toggleable: true,
                title: Row(
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 20.sp,
                      initialRating: 5.0 - index,
                      allowHalfRating: true,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rounded,
                        color: Color(0xffff7500),
                        size: 3,
                      ),
                      onRatingUpdate: (rating) {},
                      unratedColor: klines,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 3.w,
                      ),
                    ),
                    Text(
                      "144",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack,
                      ),
                    ),
                  ],
                ),
                onChanged: (value) {
                  setState(() {
                    if (value == null) {
                      ref.read(homePageViewModel).avgRating = -1;
                    } else {
                      ref.read(homePageViewModel).avgRating = value;
                    }
                  });

                  ref.read(homePageViewModel).getBeauticiansByFilter(
                        BeauticiansFilterRequest(
                          filters: Filters(
                            search: ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty &&
                                    ref
                                        .read(homePageViewModel)
                                        .locationController
                                        .text
                                        .isEmpty
                                ? ""
                                : null,
                            location: ref
                                    .read(homePageViewModel)
                                    .locationController
                                    .text
                                    .isEmpty
                                ? null
                                : ref
                                    .read(homePageViewModel)
                                    .locationController
                                    .text,
                            date: ref
                                    .read(homePageViewModel)
                                    .dateController
                                    .text
                                    .isEmpty
                                ? null
                                : ref
                                    .read(homePageViewModel)
                                    .dateController
                                    .text,
                            sortPrice:
                                ref.read(homePageViewModel).sortPrice == -1
                                    ? null
                                    : sortPriceList[
                                        ref.read(homePageViewModel).sortPrice],
                            priceRange: PriceRange(
                              minPrice: 0,
                              maxPrice: ref
                                  .read(homePageViewModel)
                                  .priceRange
                                  .round(),
                            ),
                            avgRating:
                                ref.read(homePageViewModel).avgRating == -1
                                    ? null
                                    : ratings[
                                        ref.read(homePageViewModel).avgRating],
                          ),
                        ),
                      );

                  // ref.read(homePageViewModel).fetchAllSalons(
                  //     ref.read(homePageViewModel).searchController.text,
                  //     sortPrice: ref.read(homePageViewModel).sortPrice == -1
                  //         ? "low"
                  //         : sortPriceList[ref.read(homePageViewModel).sortPrice],
                  //     price: "${ref.read(homePageViewModel).priceRange.round()}",
                  //     serviceType: selectedService == -1
                  //         ? ""
                  //         : ref
                  //                 .read(homePageViewModel)
                  //                 .services
                  //                 .data?[selectedService]
                  //                 .serviceType
                  //                 ?.id ??
                  //             "",
                  //     rating:
                  //         ref.read(homePageViewModel).avgRating == -1 ? "" : ratings[ref.read(homePageViewModel).avgRating]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
