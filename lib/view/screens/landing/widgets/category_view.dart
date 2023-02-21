import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [
      ...List.generate(
          13,
          (index) => Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Image.asset("assets/dummy/dummy_hairstyle.jpeg"),
                      ),
                      // SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: kBlack, width: 2)),
                        child: Center(
                          child: Text(
                            "Haircut",
                            style: AppThemes.lightTheme.textTheme.bodySmall
                                ?.copyWith(
                                    color: kBlack,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                          ),
                        ),
                      ),
                    ]),
              )).toList()
    ];

    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          "Find Top pros by service",
          style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
              color: kBlack, fontWeight: FontWeight.w700, fontSize: 20),
        ),
        ResponsiveGridList(
          shrinkWrap: true,
          // horizontalGridSpacing: 16,
          // Horizontal space between grid items
          horizontalGridMargin: 16, // Horizontal space around the grid
          verticalGridMargin: 20, // Vertical space around the grid

          minItemWidth: 200,
          minItemsPerRow: 2,
          maxItemsPerRow: 5,
          children: gridItems,
        )
      ],
    );
  }
}
