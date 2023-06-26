import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/tables.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/charts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/text_styles.dart';

class ReportingPage extends StatefulWidget {
  const ReportingPage({super.key});

  @override
  State<ReportingPage> createState() => _ReportingPageState();
}

class _ReportingPageState extends State<ReportingPage> {
  int _selectedCategory = 0;
  List<String> categories = ["Gross Sale", "Transactions"];
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "2023 Summary",
                            style: urbanist600(kBlack, 18),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: klines,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              height: 50.h,
                              // width: 80.w,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categories.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedCategory = index;
                                      });
                                    },
                                    child: FittedBox(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: _selectedCategory == index
                                              ? kBlack
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.h,
                                                horizontal: 15.w),
                                            child: Text(
                                              categories[index],
                                              style: GoogleFonts.urbanist(
                                                color:
                                                    _selectedCategory == index
                                                        ? kWhite
                                                        : kBlack,
                                                // fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              "Total Sales (YTD)",
                              style: urbanist400(kBlack, 14),
                            )),
                            Text(
                              "\$0.00",
                              style: urbanist400(kBlack, 14),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              "Month of Apr",
                              style: urbanist400(kBlack, 14),
                            )),
                            Text(
                              "\$0.00",
                              style: urbanist400(kBlack, 14),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: klines,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              "Week of Apr 23",
                              style: urbanist400(kBlack, 14),
                            )),
                            Text(
                              "\$0.00",
                              style: urbanist400(kBlack, 14),
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
                        color: Color(0xffFEF9ED),
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Column(
                            children: [
                              Text(
                                "Apr 24, 2023",
                                style: urbanist600(kBlack, 18),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Projected Sales",
                                      style: urbanist600(kBlack, 14),
                                    ),
                                  ),
                                  Text(
                                    "Appts Booked",
                                    style: urbanist600(kBlack, 14),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$0.00",
                                    style: urbanist600(kBlack, 18),
                                  ),
                                  Text(
                                    "0",
                                    style: urbanist600(kBlack, 18),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Client Overview",
                        style: urbanist600(kBlack, 18),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Last 30 Days",
                        style: urbanist500(kdescription, 14),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //Circular Progress Graph
                      Row(
                        children: [
                          Expanded(
                            child: FittedBox(
                              child: CircleAvatar(
                                radius: 80.r,
                                backgroundColor: kBlue,
                                child: AnimatedCircularChart(
                                  // key: _chartKey,
                                  size: const Size(200, 200),
                                  holeLabel: '      80%\nNew Clients',
                                  labelStyle: urbanist600(kWhite, 14),
                                  initialChartData: const <CircularStackEntry>[
                                    CircularStackEntry(
                                      <CircularSegmentEntry>[
                                        CircularSegmentEntry(
                                          80,
                                          kWhite,
                                          rankKey: 'completed',
                                        ),
                                        CircularSegmentEntry(
                                          20,
                                          kBlue,
                                          rankKey: 'remaining',
                                        ),
                                      ],
                                      rankKey: 'progress',
                                    ),
                                  ],
                                  chartType: CircularChartType.Radial,
                                  edgeStyle: SegmentEdgeStyle.round,
                                  percentageValues: true,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: FittedBox(
                              child: CircleAvatar(
                                radius: 80.r,
                                backgroundColor: Color(0xffE75D5D),
                                child: AnimatedCircularChart(
                                  // key: _chartKey,
                                  size: Size(200, 200),
                                  holeLabel:
                                      '            10%\n Returning Clients',
                                  // holeRadius: 60.r,
                                  labelStyle: urbanist600(kWhite, 14),
                                  initialChartData: const <CircularStackEntry>[
                                    CircularStackEntry(
                                      <CircularSegmentEntry>[
                                        CircularSegmentEntry(
                                          10,
                                          kWhite,
                                          rankKey: 'completed',
                                        ),
                                        CircularSegmentEntry(
                                          90,
                                          Color(0xffE75D5D),
                                          rankKey: 'remaining',
                                        ),
                                      ],
                                      rankKey: 'progress',
                                    ),
                                  ],
                                  edgeStyle: SegmentEdgeStyle.round,
                                  percentageValues: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        "2023 Booking & Schedule Overview",
                        style: urbanist600(kBlack, 18),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(height: 300.h, child: MyLineChart()),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      const EarningsTable(),
                      SizedBox(
                        height: 40.h,
                      ),
                      FittedBox(
                        child: SizedBox(
                          height: 400.h,
                          // width: double.infinity,
                          child: BarChartSample2(),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(height: 400.h, child: MyPie()),
                    ],
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
    );
  }
}
