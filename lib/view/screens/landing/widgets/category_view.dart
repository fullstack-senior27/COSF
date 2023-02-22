import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Widget> gridItems = [
      ...List.generate(
        13,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset("assets/dummy/dummy_hairstyle.jpeg"),
            ),
            // SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Center(
                child: Text(
                  "Haircut",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ).toList()
    ];

    return Column(
      children: [
        SizedBox(height: 30.h),
        Text(
          "Find Top pros by service",
          style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
            color: kBlack,
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 30.h),
        if (width > 386)
          ResponsiveGridList(
            shrinkWrap: true,
            horizontalGridMargin: 10.w, // Horizontal space around the grid
            verticalGridMargin: 10.h, // Vertical space around the grid
            minItemWidth: 200,
            // ignore: avoid_redundant_argument_values
            minItemsPerRow: 1,
            maxItemsPerRow: 5,
            children: gridItems,
          )
        else
          SizedBox(
            height: 350.h,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: SizedBox(
                  width: 205.w,
                  child: gridItems[index],
                ),
              ),
              itemCount: gridItems.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          )
      ],
    );
  }
}
