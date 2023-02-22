import 'package:card_swiper/card_swiper.dart';
import 'package:cosmetropolis/utils/app_sizes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveClasses extends StatefulWidget {
  const LiveClasses({super.key});

  @override
  State<LiveClasses> createState() => _LiveClassesState();
}

class _LiveClassesState extends State<LiveClasses> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Live Stream Classes",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: SizedBox(
              height: 210.h,
              child: Swiper(
                // shrinkWrap: true,
                viewportFraction: width <= 928 ? 1 : 0.3,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return streamCard();
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Container streamCard() {
    return Container(
      //width: 300.w,
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: kGrey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Fri 2:00 AM",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    fontSize: 14.sp,
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 3.w),
                Container(
                  padding: EdgeInsets.all(1.5.w),
                  decoration: BoxDecoration(
                    color: kGrey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16.sp),
                  ),
                  child: Text(
                    "45 min",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 9.sp,
                      color: kBlack,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://media.istockphoto.com/id/1300972574/photo/millennial-male-team-leader-organize-virtual-workshop-with-employees-online.jpg?b=1&s=170667a&w=0&k=20&c=96pCQon1xF3_onEkkckNg4cC9SCbshMvx0CfKl2ZiYs=",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bootcamp ",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        fontSize: 12.sp,
                        color: kBlack,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Lachelle Ellerhaw",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        fontSize: 12.sp,
                        color: kBlack,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.sp),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kGrey.withOpacity(0.3),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up - \$10.00",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
