import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pie_chart/pie_chart.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      // isShowingMainData ? sampleData1 : sampleData2,
      sampleData1,
      swapAnimationDuration: const Duration(microseconds: 250),
    );
  }
}

LineChartData get sampleData1 => LineChartData(
    gridData: gridData,
    titlesData: tilesData,
    borderData: borderData,
    lineBarsData: lineBarsData,
    minX: 0,
    maxX: 6,
    minY: 0,
    maxY: 4);

List<LineChartBarData> get lineBarsData =>
    [lineChartBarData1, lineChartBarData2];

FlTitlesData get tilesData => FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: bottomTitles,
      ),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: AxisTitles(
        sideTitles: leftTitles(),
      ),
    );

Widget leftTitleWidgets(double value, TitleMeta meta) {
  String text;
  switch (value.toInt()) {
    case 0:
      text = '1';
      break;
    case 1:
      text = '2';
      break;
    case 2:
      text = '3';
      break;
    case 3:
      text = '5';
      break;
    case 4:
      text = '6';
      break;
    default:
      return Container();
  }

  return Text(text,
      style: urbanist400(kdescription, 12), textAlign: TextAlign.center);
}

SideTitles leftTitles() => SideTitles(
      getTitlesWidget: leftTitleWidgets,
      showTitles: true,
      interval: 1,
      reservedSize: 40,
    );

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = Text('Mon', style: urbanist400(kdescription, 12));
      break;
    case 1:
      text = Text('Tue', style: urbanist400(kdescription, 12));
      break;
    case 2:
      text = Text('Wed', style: urbanist400(kdescription, 12));
      break;
    case 3:
      text = Text('Thu', style: urbanist400(kdescription, 12));
      break;
    case 4:
      text = Text('Fri', style: urbanist400(kdescription, 12));
      break;
    case 5:
      text = Text('Sat', style: urbanist400(kdescription, 12));
      break;
    case 6:
      text = Text('Sun', style: urbanist400(kdescription, 12));
      break;
    default:
      text = const Text('');
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );

FlGridData get gridData =>
    FlGridData(show: true, drawHorizontalLine: true, drawVerticalLine: false);
FlBorderData get borderData => FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(color: klines, width: 1),
        left: BorderSide(color: klines, width: 1),
        right: BorderSide(color: Colors.transparent),
        top: BorderSide(color: Colors.transparent),
      ),
    );

LineChartBarData get lineChartBarData1 => LineChartBarData(
        isCurved: true,
        color: kBlue,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(6, 1.8),
          FlSpot(5, 3.5),
          FlSpot(4, 3),
          FlSpot(3, 1.5),
          FlSpot(2, 2.8),
          FlSpot(1, 2),
          FlSpot(0, 0.6),
        ]);

LineChartBarData get lineChartBarData2 => LineChartBarData(
        isCurved: true,
        color: klines,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(6, 1.5),
          FlSpot(5, 1.6),
          FlSpot(4, 3.4),
          FlSpot(3, 2),
          FlSpot(2, 2.5),
          FlSpot(1, 1.6),
          FlSpot(0, 1),
        ]);

//create bar chart with 2 bar data
// class MyBarChart extends StatelessWidget {
//   const MyBarChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BarChart(
//       // isShowingMainData ? sampleData1() : sampleData2(),
//       sampleData,
//       swapAnimationDuration: const Duration(microseconds: 250),
//     );
//   }
// }

// BarChartData get sampleData => BarChartData(
//     gridData: gridData,
//     titlesData: tilesData,
//     borderData: borderData,
//     barGroups: barGroups,
//     maxY: 4,
//     barTouchData: barTouchData);

// List<BarChartGroupData> get barGroups => [
//       barChartGroupData1,
//       // barChartGroupData2,
//     ];

// BarChartGroupData get barChartGroupData1 => BarChartGroupData(
//       x: 0,
//       barRods: [
//         BarChartRodData(
//           toY: 1,
//           color: kBlue,
//           width: 10,
//           borderRadius: const BorderRadius.all(Radius.zero),
//         ),
//       ],
//       showingTooltipIndicators: [0],
//     );

// BarTouchData get barTouchData => BarTouchData(
//       enabled: true,
//       touchTooltipData: BarTouchTooltipData(
//         tooltipBgColor: kBlue,
//         getTooltipItem: (group, groupIndex, rod, rodIndex) {
//           String weekDay;
//           switch (group.x.toInt()) {
//             case 0:
//               weekDay = 'Mon';
//               break;
//             case 1:
//               weekDay = 'Tue';
//               break;
//             case 2:
//               weekDay = 'Wed';
//               break;
//             case 3:
//               weekDay = 'Thu';
//               break;
//             case 4:
//               weekDay = 'Fri';
//               break;
//             case 5:
//               weekDay = 'Sat';
//               break;
//             case 6:
//               weekDay = 'Sun';
//               break;
//           }
//           return BarTooltipItem(
//             "",
//             urbanist400(kdescription, 12),
//           );
//         },
//       ),
//     );

class BarChartSample2 extends StatefulWidget {
  BarChartSample2({super.key});
  final Color leftBarColor = Color(0xff2A382A);
  final Color rightBarColor = kBlue;
  final Color avgColor = kGrey;
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final double width = 7.w;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // makeTransactionsIcon(),
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            Expanded(
              child: BarChart(
                BarChartData(
                  maxY: 20,
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.grey,
                      getTooltipItem: (a, b, c, d) => null,
                    ),
                    touchCallback: (FlTouchEvent event, response) {
                      if (response == null || response.spot == null) {
                        setState(() {
                          touchedGroupIndex = -1;
                          showingBarGroups = List.of(rawBarGroups);
                        });
                        return;
                      }

                      touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                      setState(() {
                        if (!event.isInterestedForInteractions) {
                          touchedGroupIndex = -1;
                          showingBarGroups = List.of(rawBarGroups);
                          return;
                        }
                        showingBarGroups = List.of(rawBarGroups);
                        if (touchedGroupIndex != -1) {
                          var sum = 0.0;
                          for (final rod
                              in showingBarGroups[touchedGroupIndex].barRods) {
                            sum += rod.toY;
                          }
                          final avg = sum /
                              showingBarGroups[touchedGroupIndex]
                                  .barRods
                                  .length;

                          showingBarGroups[touchedGroupIndex] =
                              showingBarGroups[touchedGroupIndex].copyWith(
                            barRods: showingBarGroups[touchedGroupIndex]
                                .barRods
                                .map((rod) {
                              return rod.copyWith(
                                  toY: avg, color: widget.avgColor);
                            }).toList(),
                          );
                        }
                      });
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 42,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        interval: 1,
                        getTitlesWidget: leftTitles,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                      show: true, border: Border.all(color: klines, width: 1)),
                  barGroups: showingBarGroups,
                  gridData: FlGridData(show: true),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    String text;
    if (value == 0) {
      text = '0';
    } else if (value == 5) {
      text = '20';
    } else if (value == 10) {
      text = '40';
    } else if (value == 15) {
      text = '60';
    } else if (value == 20) {
      text = '80';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: urbanist400(kdescription, 12)),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['0', '1', '2', '3', '4', '5', '6'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
            toY: y1,
            color: widget.leftBarColor,
            width: width,
            borderRadius: BorderRadius.zero),
        BarChartRodData(
            toY: y2,
            color: widget.rightBarColor,
            width: width,
            borderRadius: BorderRadius.zero),
      ],
    );
  }
}

class MyPie extends StatelessWidget {
  const MyPie({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = MediaQuery.of(context).size.width > 800
        ? MediaQuery.of(context).size.width / 7
        : MediaQuery.of(context).size.width / 4;
    List<PieChartSectionData> pieData = [
      PieChartSectionData(
          color: kBlue,
          title: "Medium box braids",
          radius: radius,
          titleStyle: urbanist400(kGrey, 12),
          titlePositionPercentageOffset: 1),
      PieChartSectionData(
          color: kBlue,
          title: "Soft Locs",
          radius: radius,
          titleStyle: urbanist400(kGrey, 12),
          titlePositionPercentageOffset: 1),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        titlePositionPercentageOffset: 1,
        radius: radius,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
      PieChartSectionData(
        color: kBlue,
        title: "Beads and Braids",
        radius: radius,
        titlePositionPercentageOffset: 1,
        titleStyle: urbanist400(kGrey, 12),
      ),
    ];

    return PieChart(PieChartData(
        sections: pieData, centerSpaceRadius: 0, sectionsSpace: 1));
  }
}
