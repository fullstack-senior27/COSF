import 'package:cosmetropolis/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FooterView extends StatefulWidget {
  const FooterView({super.key});

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    List<String> hyperlinks = [
      "FIND PROFESSIONALS",
      "GET LISTED",
      "TEAM",
      "CAREERS",
      "TERMS FOR PROS",
      "TERMS FOR CLIENTS",
      "PRIVACY",
      "SITEMAP"
    ];
    List<String> icons = [
      "assets/icons/facebook.png",
      "assets/icons/instagram.png",
      "assets/icons/pinterest.png",
      "assets/icons/twitter.png",
    ];
    return width <= 724
        ? const SizedBox.shrink()
        : Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            color: const Color(0xFF333333),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(5.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Text(
                              "ABOUT COSMETROPOLIS",
                              style: AppThemes.lightTheme.textTheme.bodySmall
                                  ?.copyWith(color: kWhite, fontSize: 16.sp),
                            ),
                            SizedBox(height: 10.h),
                            SizedBox(
                              width: 180.w,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                style: TextStyle(
                                  color: kGrey,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16 + 16),
                          Text(
                            "MEDIA",
                            style: TextStyle(
                              color: kGrey,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "Cosmetropolis Blog\nPress",
                            style: AppThemes.lightTheme.textTheme.bodySmall
                                ?.copyWith(color: kWhite, fontSize: 14.sp),
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            "TALK TO US",
                            style: TextStyle(color: kGrey, fontSize: 16.sp),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Cosmetropolis Help Center",
                            style: AppThemes.lightTheme.textTheme.bodySmall
                                ?.copyWith(color: kWhite, fontSize: 14.sp),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.h),
                          ...List.generate(
                            hyperlinks.length,
                            (index) => Text(
                              hyperlinks[index],
                              style: AppThemes.lightTheme.textTheme.bodySmall
                                  ?.copyWith(color: kWhite, fontSize: 12.sp),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              ...List.generate(
                                4,
                                (index) => Container(
                                  margin: EdgeInsets.only(right: 2.w),
                                  width: 10.w,
                                  height: 10.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kWhite,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0.sp),
                                    child: Image.asset(
                                      icons[index],
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                      Text("© 2023 Cosmetropolis, Inc. All rights reserved."),
                )
              ],
            ),
          );
  }

  double getLength(double width) {
    if (width <= 940) {
      return 3;
    } else if (width <= 729) {
      return 1;
    } else {
      return 1.8;
    }
  }
}
