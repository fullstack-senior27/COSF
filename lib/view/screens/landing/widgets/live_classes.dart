import 'package:cosmetropolis/utils/app_sizes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LiveClasses extends StatefulWidget {
  const LiveClasses({super.key});

  @override
  State<LiveClasses> createState() => _LiveClassesState();
}

class _LiveClassesState extends State<LiveClasses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Live Stream Classes",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      color: kBlack, fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(width: AppSizes.p16),
                Text(
                  "See all >",
                  style: AppThemes.lightTheme.textTheme.bodySmall
                      ?.copyWith(color: Colors.blue, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: SingleChildScrollView(
              child: Row(
                children: [
                  ...List.generate(
                    10,
                    (index) => streamCard(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container streamCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 300,
      decoration: BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(color: kGrey.withOpacity(0.2), spreadRadius: 2, blurRadius: 2)
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Fri 2:00 AM",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 14,
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: kGrey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  "45 min",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    fontSize: 14,
                    color: kBlack,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
              SizedBox(width: AppSizes.p10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bootcamp",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      color: kBlack,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Lachelle Ellerhaw",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      color: kBlack,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Starts in 20 min",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
              fontSize: 10,
              color: kBlack,
            ),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.all(AppSizes.p16),
            decoration: BoxDecoration(border: Border.all(color: kBlack)),
            child: Center(child: Text("Sign Up - \$10.00")),
          )
        ]),
      ),
    );
  }
}
