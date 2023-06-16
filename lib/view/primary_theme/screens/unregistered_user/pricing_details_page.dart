import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';
import '../../widgets/buttons_banners.dart';

class PricingDetails extends StatelessWidget {
  const PricingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "We believe the basics should be free",
            style: GoogleFonts.urbanist(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Get all the features major booking apps offer for a \$0 monthly fee.",
            style: GoogleFonts.urbanist(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We believe the basics should be free",
                  style: GoogleFonts.urbanist(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingRowColor:
                        const MaterialStatePropertyAll(Color(0xffF2FBFF)),
                    columns: [
                      DataColumn(
                          label: Text(
                        "  ",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Cosmetropolis",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Square",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Acuity",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "GlossGenius",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Booksy",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text("Monthly fee",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("\$14/mo",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("\$24/mo",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("\$29.99/mo",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 2
                      DataRow(
                        cells: [
                          DataCell(Text("Online Profile",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),

                      //row 3
                      DataRow(
                        cells: [
                          DataCell(
                              Text("Customizable calendar & scheduling tools",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 4
                      DataRow(
                        cells: [
                          DataCell(Text("Client relationship management tools",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Additional cost",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Text("Additional cost",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),

                      //row 5
                      DataRow(
                        cells: [
                          DataCell(Text("Appointment reminders",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 6
                      DataRow(
                        cells: [
                          DataCell(Text("No-show protection",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),

                      //row 7
                      DataRow(
                        cells: [
                          DataCell(Text("No card on file and key-in fees",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 8
                      DataRow(
                        cells: [
                          DataCell(
                              Text("Instant payouts* (deposits within minutes)",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ))),
                          DataCell(Text("Free",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("1.5%",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Text("Same or next day deposits",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("Next day deposits",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),

                      //row 9
                      DataRow(
                        cells: [
                          DataCell(
                              Text("Instant payouts* (deposits within minutes)",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ))),
                          DataCell(Text("ALWAYS FREE",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("30 days (for premium plans)",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("7 days)",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("14 days",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Text("14 days",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: double.infinity,
            height: 400.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/payments_bg.png")),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Cosmetropolis spends millions on advertising to attract clients and help you get discovered",
                            style: GoogleFonts.urbanist(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "You can’t get that kind of exposure with just a booking app.",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    width: 20.w,
                  )),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        Expanded(
                          child: Image.asset(
                            "assets/images/payments_img1.png",
                            height: 120.h,
                            // width: 75.w,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "We triple the average beautician’s revenue in their first two years on the platform.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "We’re home to THE largest network of consumers looking for personal services",
              style: GoogleFonts.urbanist(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "In order to deliver the most secure experience and ensure you get paid, all payments are run through StyleSeat for 3% per transaction.",
              textAlign: TextAlign.center,
              style: GoogleFonts.urbanist(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingRowColor:
                        const MaterialStatePropertyAll(Color(0xffF2FBFF)),
                    columns: [
                      DataColumn(
                          label: Text(
                        "  ",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Cosmetropolis",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Square",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Acuity",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "GlossGenius",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        "Booksy",
                        style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Promotes your profile to bring you new clients",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 2
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Invests to drive Client traffic to their app/website via search engines, social media and TV",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),

                      //row 3
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Partners with influencers, content creators, and top consumer brands",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 4
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Gives you opportunities to get boosted to the top of search results",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),
                      //row 5
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Constantly optimizes your booking page behind-the-scenes to help convert more clients",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 6
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Offer Beautician loans ranging from \$1K-\$20K",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),
                      //row 7
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Provides your clients with \"Style Now, Pay Later\" option with Klarna.",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),

                      //row 8
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Clients can pay by tapping their card to your iPhone",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color:
                            const MaterialStatePropertyAll(Color(0xfff4f4f4)),
                      ),
                      //row 9
                      DataRow(
                        cells: [
                          DataCell(Text(
                              "Dynamic pricing feature to earn more on your popular time slots",
                              style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ))),
                          DataCell(Image.asset(
                            "assets/icons/right.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                          DataCell(Image.asset(
                            "assets/icons/cross.png",
                            height: 12.h,
                            width: 12.w,
                          )),
                        ],
                        color: const MaterialStatePropertyAll(Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    height: 250.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          "assets/images/pricing_banner.png",
                        ),
                      ),
                    ),
                    child: MediaQuery.of(context).size.width > 650
                        ? Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("No monthly contracts.",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text("No setup or cancellation fees.",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    BlackButtonSmall(
                                        context, "Join for Free", () {}),
                                  ],
                                ),
                              ),
                              const Expanded(flex: 1, child: SizedBox()),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("No monthly contracts.",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text("No setup or cancellation fees.",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 20.h,
                              ),
                              BlackButtonSmall(context, "Join for Free", () {}),
                            ],
                          ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 400.h,
            width: double.infinity,
            color: Color(0xfff0f0f0),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Our premium features",
                  style: GoogleFonts.urbanist(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: MediaQuery.of(context).size.width > 770
                        ? Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // height: 300.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(width: 2, color: klines),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "Grow Your Clientele",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "We cover the upfront cost of all your advertising. If one of our campaigns successfully drives you a new client, you’ll have the option to accept or deny them. If you accept, you pay a one-time commission and that client is added to your client list.",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "25% one-time commission",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 50.w,
                                          child: BlackButtonSmall(
                                              context, "Join for Free", () {}),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  // height: 300.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(width: 2, color: klines),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "Grow Your Clientele",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "We cover the upfront cost of all your advertising. If one of our campaigns successfully drives you a new client, you’ll have the option to accept or deny them. If you accept, you pay a one-time commission and that client is added to your client list.",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "25% one-time commission",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 50.w,
                                          child: BlackButtonSmall(
                                              context, "Join for Free", () {}),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  // height: 300.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(width: 2, color: klines),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "Grow Your Clientele",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "We cover the upfront cost of all your advertising. If one of our campaigns successfully drives you a new client, you’ll have the option to accept or deny them. If you accept, you pay a one-time commission and that client is added to your client list.",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          "25% one-time commission",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 50.w,
                                          child: BlackButtonSmall(
                                              context, "Join for Free", () {}),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : PageView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      // height: 300.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border:
                                            Border.all(width: 2, color: klines),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                              "Grow Your Clientele",
                                              style: GoogleFonts.urbanist(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              "We cover the upfront cost of all your advertising. If one of our campaigns successfully drives you a new client, you’ll have the option to accept or deny them. If you accept, you pay a one-time commission and that client is added to your client list.",
                                              style: GoogleFonts.urbanist(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                              "25% one-time commission",
                                              style: GoogleFonts.urbanist(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Spacer(),
                                            Flexible(
                                              child: BlackButtonSmall(context,
                                                  "Join for Free", () {}),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                  ),
                ),
                // SizedBox(width: 10.w,),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Footer(),
        ],
      ),
    );
  }
}
