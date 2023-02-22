import 'package:cosmetropolis/utils/app_sizes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class PopularService extends StatefulWidget {
  const PopularService({super.key});

  @override
  State<PopularService> createState() => _PopularServiceState();
}

class _PopularServiceState extends State<PopularService> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Widget> gridItems = [
      ...List.generate(
        width > 386 ? 4 : 13,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset("assets/dummy/dummy_salon.jpeg"),
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
            Row(
              children: [
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => const Icon(
                        Icons.star_rounded,
                        color: Colors.yellow,
                        size: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Text(
                  "(10)",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kBlack,
                    // fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                )
              ],
            )
          ],
        ),
      ).toList()
    ];
    return Container(
      padding: const EdgeInsets.all(16.0),
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
              const SizedBox(width: AppSizes.p16),
              Text(
                "See all >",
                style: AppThemes.lightTheme.textTheme.bodySmall
                    ?.copyWith(color: Colors.blue, fontSize: 10.sp),
              ),
            ],
          ),
          SizedBox(height: 20.w),
          if (width > 386)
            ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  physics: NeverScrollableScrollPhysics()),

              // ignore: deprecated_member_use
              shrinkWrap: true,
              horizontalGridMargin: 16, // Horizontal space around the grid
              verticalGridMargin: 50, // Vertical space around the grid
              minItemWidth: 200,
              // ignore: avoid_redundant_argument_values
              minItemsPerRow: 1,
              maxItemsPerRow: 5,
              children: gridItems,
            )
          else
            SizedBox(
              height: 400.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                    child: SizedBox(
                      // height: 250.h,
                      width: 200.w,
                      child: gridItems[index],
                    ),
                  );
                },
                itemCount: gridItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            )
        ],
      ),
    );
  }
}
