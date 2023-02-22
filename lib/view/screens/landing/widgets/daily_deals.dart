import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class DailyDeals extends StatefulWidget {
  const DailyDeals({super.key});

  @override
  State<DailyDeals> createState() => _DailyDealsState();
}

class _DailyDealsState extends State<DailyDeals> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Widget> gridItems = [
      ...List.generate(
        13,
        (index) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    child: Image.asset("assets/dummy/nail_arts.jpeg"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: kBlack.withOpacity(0.2)),
                    child: Text(
                      "UP TO 50% OFF",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kWhite,
                        // fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Hair by Jazz",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              Row(
                children: [
                  Text(
                    "San Fransisco, CA ",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      color: kBlack,
                      // fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  const Icon(
                    Icons.near_me,
                    size: 12,
                    color: kBlack,
                  ),
                  Text(
                    "1 mi",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      color: kBlack,
                      // fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ).toList()
    ];
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Popular in CA",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              Text(
                "See all >",
                style: AppThemes.lightTheme.textTheme.bodySmall
                    ?.copyWith(color: Colors.blue, fontSize: 10.sp),
              ),
            ],
          ),
          if (width > 386)
            ResponsiveGridList(
              shrinkWrap: true,
              // horizontalGridSpacing: 16,
              // Horizontal space between grid items
              horizontalGridMargin: 16, // Horizontal space around the grid
              verticalGridMargin: 50, // Vertical space around the grid

              minItemWidth:
                  200, // The minimum item width (can be smaller, if the layout constraints are smaller)
              minItemsPerRow:
                  // ignore: avoid_redundant_argument_values
                  1, // The minimum items to show in a single row. Takes precedence over minItemWidth
              maxItemsPerRow:
                  5, // The maximum items to show in a single row. Can be useful on large screens
              children: gridItems, // The list of widgets in the grid
            )
          else
            SizedBox(
              height: 230.h,
              child: ListView.builder(
                itemCount: gridItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 20.h),
                    child: SizedBox(
                      width: 260.w,
                      child: gridItems[index],
                    ),
                  );
                },
              ),
            )
        ],
      ),
    );
  }
}
