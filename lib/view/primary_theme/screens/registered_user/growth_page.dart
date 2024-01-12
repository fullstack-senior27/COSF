import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/reporting_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/registered_user_dialogs.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/tables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class GrowthPage extends StatefulWidget {
  const GrowthPage({super.key});

  @override
  State<GrowthPage> createState() => _GrowthPageState();
}

class _GrowthPageState extends State<GrowthPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        foregroundColor: kWhite,
        surfaceTintColor: kWhite,
        toolbarHeight: 5.h,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                dividerColor: kGrey.withOpacity(0.5),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabcontroller,
                indicatorColor: kBlack,
                labelColor: kBlack,
                unselectedLabelColor: kGrey,
                tabs: const [
                  Tab(text: 'Summary'),
                  Tab(text: 'Earnings'),
                  Tab(text: 'Payout'),
                  Tab(text: 'Transactions'),
                  Tab(text: 'Gift Card'),
                  Tab(text: 'Reporting'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabcontroller,
        children: [
          //Content for TAB 1 Summary >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 20.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffFEF9ED),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your Business Growth",
                                    style: GoogleFonts.urbanist(
                                      color: kBlack,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "You’re almost ready to charge clients quickly and securely through Cosmetropolis.",
                                      style: GoogleFonts.urbanist(
                                        color: kBlack,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  if (MediaQuery.of(context).size.width < 920)
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              // fullBottomSheet(
                                              //   context,
                                              //   Padding(
                                              //     padding: EdgeInsets.symmetric(
                                              //         vertical: 15.h),
                                              //     child: Column(
                                              //       crossAxisAlignment:
                                              //           CrossAxisAlignment
                                              //               .start,
                                              //       children: [
                                              //         Row(
                                              //           mainAxisAlignment:
                                              //               MainAxisAlignment
                                              //                   .spaceBetween,
                                              //           children: [
                                              //             Text(
                                              //               "Set a monthly goal and we’ll give you\ntips on how to get there.",
                                              //               style: GoogleFonts
                                              //                   .urbanist(
                                              //                 color: kBlack,
                                              //                 fontSize: 16.sp,
                                              //                 fontWeight:
                                              //                     FontWeight
                                              //                         .w600,
                                              //               ),
                                              //             ),
                                              //             InkWell(
                                              //               onTap: () {
                                              //                 context.pop();
                                              //               },
                                              //               child: const Icon(
                                              //                 Icons.close,
                                              //                 color: kGrey,
                                              //               ),
                                              //             )
                                              //           ],
                                              //         ),
                                              //         SizedBox(height: 10.h),
                                              //         SetMonthlyGoal(),
                                              //       ],
                                              //     ),
                                              //   ),
                                              // );
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Set a monthly goal and we’ll give you\ntips on how to get there.",
                                                          style: GoogleFonts
                                                              .urbanist(
                                                            color: kBlack,
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        IconButton(
                                                          icon: const Icon(
                                                            Icons.close,
                                                            color: kGrey,
                                                          ),
                                                          onPressed: () {
                                                            context.pop();
                                                          },
                                                        )
                                                      ],
                                                    ),
                                                    backgroundColor:
                                                        const Color(0xfff8f8f8),
                                                    content:
                                                        SingleChildScrollView(
                                                      child: SizedBox(
                                                        width: MediaQuery.of(
                                                                  context,
                                                                ).size.width >
                                                                900
                                                            ? 600
                                                            : MediaQuery.of(
                                                                  context,
                                                                ).size.width *
                                                                0.8,
                                                        child:
                                                            const SetMonthlyGoal(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 15.w,
                                                vertical: 10.h,
                                              ),
                                              decoration: BoxDecoration(
                                                color: kBlack,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  5.r,
                                                ),
                                              ),
                                              child: Text(
                                                "Set A Monthly Goal",
                                                style: GoogleFonts.urbanist(
                                                  color: kWhite,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  else
                                    Container()
                                ],
                              ),
                            ),
                            if (MediaQuery.of(context).size.width > 920)
                              Expanded(
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Set a monthly goal and we’ll give you\ntips on how to get there.",
                                                    style: GoogleFonts.urbanist(
                                                      color: kBlack,
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: kGrey,
                                                    ),
                                                    onPressed: () {
                                                      context.pop();
                                                    },
                                                  )
                                                ],
                                              ),
                                              backgroundColor:
                                                  const Color(0xfff8f8f8),
                                              content: SingleChildScrollView(
                                                child: SizedBox(
                                                  width: MediaQuery.of(
                                                            context,
                                                          ).size.width >
                                                          900
                                                      ? 600
                                                      : MediaQuery.of(
                                                            context,
                                                          ).size.width *
                                                          0.8,
                                                  child: const SetMonthlyGoal(),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.w,
                                          vertical: 10.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kBlack,
                                          borderRadius: BorderRadius.circular(
                                            5.r,
                                          ),
                                        ),
                                        child: Text(
                                          "Set A Monthly Goal",
                                          style: GoogleFonts.urbanist(
                                            color: kWhite,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            else
                              Container()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Insights",
                        style: urbanist600(kBlack, 16),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Snapshot of how clients are searching and booking this week",
                                style: urbanist400(kBlack, 12),
                              ),
                            ),
                            Text(
                              "Last 14 days",
                              style: urbanist400(kBlack, 12),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile views",
                              style: urbanist400(kBlack, 12),
                            ),
                            Text(
                              "0 - 10",
                              style: urbanist400(kBlack, 12),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Searches for services in your area",
                              style: urbanist400(kBlack, 12),
                            ),
                            Text(
                              "20",
                              style: urbanist400(kBlack, 12),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New appointments booked in your area",
                              style: urbanist400(kBlack, 12),
                            ),
                            Text(
                              "20",
                              style: urbanist400(kBlack, 12),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Photo views",
                              style: urbanist400(kBlack, 12),
                            ),
                            Text(
                              "0 - 10",
                              style: urbanist400(kBlack, 12),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: double.infinity,
                        color: const Color(0xffE0F3FD),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 5.h,
                          ),
                          child: Text(
                            "Track the extra revenue Cosmetropolis helps you earn.",
                            style: urbanist600(kBlack, 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/growth_works.webp",
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "We're still analyzing your business and customizing our growth tools to fit your needs.",
                                          style: urbanist500(kBlack, 12),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            border: Border.all(),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "How it Works",
                                              style: urbanist500(kBlack, 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/growth_setup.webp",
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Want Cosmetropolis to grow your business even more?",
                                          style: urbanist500(kBlack, 12),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            border: Border.all(),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Setup",
                                              style: urbanist500(kBlack, 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 20.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffFEF9ED),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi John Wick",
                                    style: GoogleFonts.urbanist(
                                      color: kBlack,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "You're almost ready to charge clients quickly and securely through Cosmetropolis.",
                                      style: GoogleFonts.urbanist(
                                        color: kBlack,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  if (MediaQuery.of(context).size.width < 920)
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 15.w,
                                              vertical: 10.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: kBlack,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5.r,
                                              ),
                                            ),
                                            child: Text(
                                              "Start Setup",
                                              style: GoogleFonts.urbanist(
                                                color: kWhite,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  else
                                    Container()
                                ],
                              ),
                            ),
                            if (MediaQuery.of(context).size.width > 920)
                              Expanded(
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15.w,
                                        vertical: 10.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kBlack,
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                      ),
                                      child: Text(
                                        "Start Setup",
                                        style: GoogleFonts.urbanist(
                                          color: kWhite,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            else
                              Container()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: double.infinity,
                        color: const Color(0xffE0F3FD),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 5.h,
                          ),
                          child: Text(
                            "Clients tip an average of 40% more when they pay through Cosmetropolis.",
                            style: urbanist600(kBlack, 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      if (MediaQuery.of(context).size.width > 900)
                        Row(
                          children: [
                            const Expanded(child: GrowthCard()),
                            SizedBox(width: 10.w),
                            const Expanded(child: GrowthCard()),
                            SizedBox(width: 10.w),
                            const Expanded(child: GrowthCard()),
                          ],
                        )
                      else
                        SizedBox(
                          height: 200.h,
                          child: ListView.builder(
                            // shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return FittedBox(
                                child: Row(
                                  children: [
                                    const GrowthCard(),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const Footer(),
              ],
            ),
          ),
          //Earnings Section>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Net Earnings Today",
                                style: urbanist600(kBlack, 18),
                              ),
                              Text(
                                "\$0.00",
                                style: urbanist600(kBlack, 16),
                              ),
                              Text(
                                "No appointments",
                                style: urbanist400(kBlack, 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: DropdownButtonFormField<String>(
                              dropdownColor: kWhite,
                              isExpanded: true,
                              decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: klines),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: klines),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.w),
                                // suffixIcon: Icon(Icons.arrow_drop_down),
                              ),
                              items: [
                                DropdownMenuItem<String>(
                                  value: 'Today',
                                  child: Text(
                                    'Today',
                                    style: urbanist400(kGrey, 12),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Yesterday',
                                  child: Text(
                                    'Yesterday',
                                    style: urbanist400(kGrey, 12),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'April 1, 2020',
                                  child: Text(
                                    'April 1, 2020',
                                    style: urbanist400(kGrey, 12),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                              onChanged: (String? value) {
                                // Handle dropdown value change
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 860,
                            child: Expanded(
                              flex: 2,
                              child: Container(
                                height: 100.h,
                                // width: 40.w,
                                decoration: BoxDecoration(
                                  color: kBlue.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total Earning",
                                        style: urbanist600(kGrey, 12),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "\$9,600",
                                        style: urbanist600(kBlue, 20),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 860,
                            child: SizedBox(
                              width: 5.w,
                            ),
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 860,
                            child: Expanded(
                              child: Container(
                                height: 100.h,
                                // width: 30.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: klines),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Withdraw Balance",
                                        style: urbanist600(kGrey, 12),
                                        maxLines: 2,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "\$3500",
                                          style: urbanist600(kBlack, 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 860,
                            child: SizedBox(
                              width: 5.w,
                            ),
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 860,
                            child: Expanded(
                              child: Container(
                                height: 100.h,
                                // width: 30.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: klines),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.h,
                                    horizontal: 3.w,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        MediaQuery.of(context).size.width > 700
                                            ? "Remaining Amount"
                                            : "Remaining/nAmount",
                                        maxLines: 2,
                                        style: urbanist600(kGrey, 12),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "\$5,560",
                                          style: urbanist600(kBlack, 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width < 861,
                        child: SizedBox(
                          height: 20.h,
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 861)
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: MediaQuery.of(context).size.width > 415
                                    ? 90.h
                                    : 80.h,
                                // width: 40.w,
                                decoration: BoxDecoration(
                                  color: kBlue.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total Earning",
                                        style: urbanist600(kGrey, 12),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "\$9,600",
                                        style: urbanist600(kBlue, 20),
                                      )
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
                                height: MediaQuery.of(context).size.width > 415
                                    ? 90.h
                                    : 80.h,
                                // width: 30.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: klines),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "Withdraw",
                                          style: urbanist600(kGrey, 12),
                                          // maxLines: 2,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "Balance",
                                          style: urbanist600(kGrey, 12),
                                          // maxLines: 2,
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: 10.h,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "\$3500",
                                          style: urbanist600(kBlack, 20),
                                        ),
                                      )
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
                                height: MediaQuery.of(context).size.width > 415
                                    ? 90.h
                                    : 80.h,
                                // width: 30.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: klines),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "Remaining",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "Amount",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: 10.h,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "\$5,560",
                                          style: urbanist600(kBlack, 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      else
                        Container(),
                      SizedBox(
                        height: 20.h,
                      ),
                      const SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Earnings table will be here",
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const Footer(),
              ],
            ),
          ),
          //Payouts section>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.width > 415
                                  ? 90.h
                                  : 80.h,
                              // width: 30.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: klines),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width >
                                              500,
                                      child: FittedBox(
                                        child: Text(
                                          "Total Earning",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <
                                              501,
                                      child: FittedBox(
                                        child: Text(
                                          "Total",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <
                                              501,
                                      child: FittedBox(
                                        child: Text(
                                          "Earning",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 10.h,
                                      ),
                                    ),
                                    FittedBox(
                                      child: Text(
                                        "\$5,560",
                                        style: urbanist600(kBlack, 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.width > 415
                                  ? 90.h
                                  : 80.h,
                              // width: 30.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: klines),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width >
                                              500,
                                      child: FittedBox(
                                        child: Text(
                                          "Withdraw Balance",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <
                                              501,
                                      child: FittedBox(
                                        child: Text(
                                          "Withdraw",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <
                                              501,
                                      child: FittedBox(
                                        child: Text(
                                          "Balance",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 10.h,
                                      ),
                                    ),
                                    FittedBox(
                                      child: Text(
                                        "\$5,560",
                                        style: urbanist600(kBlack, 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.width > 415
                                  ? 90.h
                                  : 80.h,
                              // width: 30.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: klines),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width >
                                              500,
                                      child: FittedBox(
                                        child: Text(
                                          "Remaining Amount",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <
                                              501,
                                      child: FittedBox(
                                        child: Text(
                                          "Remaining",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <
                                              501,
                                      child: FittedBox(
                                        child: Text(
                                          "Amount",
                                          style: urbanist600(kGrey, 12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 10.h,
                                      ),
                                    ),
                                    FittedBox(
                                      child: Text(
                                        "\$5,560",
                                        style: urbanist600(kBlack, 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: PayoutsTable(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const Footer(),
              ],
            ),
          ),
          //Transactions section>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        "Your Earnings",
                        style: urbanist600(kBlack, 20),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Theme(
                              data: ThemeData(
                                colorScheme: ColorScheme.fromSwatch()
                                    .copyWith(secondary: kWhite),
                              ),
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: klines),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: klines),
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  // suffixIcon: Icon(Icons.arrow_drop_down),
                                ),
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'April 28, 2022 - Apr 28,2023',
                                    child: Text(
                                      'April 28, 2023 - Apr 28,2023',
                                      style: urbanist400(kGrey, 12),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'April 1, 2021 - March 31,2022',
                                    child: Text(
                                      'April 1, 2021 - March 31,2022',
                                      style: urbanist400(kGrey, 12),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'April 1, 2020 - March 31,2022',
                                    child: Text(
                                      'April 1, 2020 - March 31,2021',
                                      style: urbanist400(kGrey, 12),
                                    ),
                                  ),
                                ],
                                onChanged: (String? value) {
                                  // Handle dropdown value change
                                },
                              ),
                            ),
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 850,
                            child: const Spacer(),
                          ),
                          if (MediaQuery.of(context).size.width > 850)
                            Row(
                              children: [
                                FittedBox(
                                  child: SizedBox(
                                    height: 40.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: kBlack,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                      ),
                                      child: Text(
                                        "Export for 2022 Taxes",
                                        style: urbanist500(kWhite, 14),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                // outline button
                                Container(
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    border: Border.all(),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Export Data",
                                      style: urbanist500(kBlack, 14),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          else
                            Container(),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      if (MediaQuery.of(context).size.width < 851)
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 40.h,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kBlack,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                  ),
                                  child: FittedBox(
                                    child: Text(
                                      "Export for 2022 Taxes",
                                      style: urbanist500(kWhite, 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            // outline button
                            Expanded(
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Export Data",
                                    style: urbanist500(kBlack, 14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      else
                        Container(),
                      Visibility(
                        visible: MediaQuery.of(context).size.width < 851,
                        child: SizedBox(
                          height: 20.h,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: kselected,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 20.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your payment schedule is set to 2 business days.",
                                style: urbanist600(kBlack, 18),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Before you are eligible for next-day payment deposits, you must complete the following items:",
                                style: urbanist500(kdescription, 14),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Complete your profile",
                                style: urbanist500(kBlack, 14),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Verify your identity",
                                style: urbanist500(kBlack, 14),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Add your card so you're ready to subscribe",
                                style: urbanist500(kBlack, 14),
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
                SizedBox(
                  height: 40.h,
                ),
                const Footer(),
              ],
            ),
          ),
          //Gift Cards>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 20.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffFEF9ED),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$0.00",
                                    style: urbanist600(kBlack, 20),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Sign up for Cosmetropolis payments",
                                    style: GoogleFonts.urbanist(
                                      color: kBlack,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Link your bank account to activate gift cards and collect payments instantly.",
                                      style: GoogleFonts.urbanist(
                                        color: kBlack,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  if (MediaQuery.of(context).size.width < 920)
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 15.w,
                                              vertical: 10.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: kBlack,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5.r,
                                              ),
                                            ),
                                            child: Text(
                                              "Link Account",
                                              style: GoogleFonts.urbanist(
                                                color: kWhite,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  else
                                    Container()
                                ],
                              ),
                            ),
                            if (MediaQuery.of(context).size.width > 920)
                              Expanded(
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15.w,
                                        vertical: 10.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kBlack,
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                      ),
                                      child: Text(
                                        "Link Account",
                                        style: GoogleFonts.urbanist(
                                          color: kWhite,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            else
                              Container()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const Footer(),
              ],
            ),
          ),
          //Report Section
          const ReportingPage()
        ],
      ),
    );
  }
}

class GrowthCard extends StatelessWidget {
  const GrowthCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 920 ? 92.w : 250.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: klines,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Text("Save Money", style: urbanist600(kBlack, 16)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/growth1.webp",
                height: 20.h,
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                child: Text(
                  "Our no-show/late cancellation feature saved professionals nearly \$2 Million dollars last year!",
                  style: urbanist500(kBlack, 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/growth2.webp",
                height: 20.h,
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                child: Text(
                  "Our no-show/late cancellation feature saved professionals nearly \$2 Million dollars last year!",
                  style: urbanist500(kBlack, 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/growth3.webp",
                height: 20.h,
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                child: Text(
                  "Our no-show/late cancellation feature saved professionals nearly \$2 Million dollars last year!",
                  style: urbanist500(kBlack, 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
