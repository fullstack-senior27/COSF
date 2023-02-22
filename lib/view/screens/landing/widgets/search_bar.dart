// ignore_for_file: prefer_final_locals

import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({super.key});

  @override
  ConsumerState<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  @override
  Widget build(BuildContext context) {
    switch (ref.watch(styleProvider).isPrimaryTheme) {
      case true:
        return stylePrimary(context);
      case false:
        return styleSecondary(context);
      default:
        return stylePrimary(context);
    }
  }

  Widget styleSecondary(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 770
        ? Container(
            width: double.infinity,
            height: width > 770 ? 400.h : 300.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/dummy/dummy_banner_2.jpeg"),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover & book local beauty\nprofessionals",
                    style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                      color: kBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: style2FromTheme(
                              "Services , Stylist or Salon",
                              Icons.search,
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: TextFormField(
                            decoration: style2FromTheme(
                              "City or Zip Code",
                              Icons.location_on_outlined,
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Container(
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                            color: kBlack,
                            borderRadius: BorderRadius.circular(AppSizes.p10),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: kWhite,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.pinkAccent, width: 3),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Are you a barber or beauty professional",
                        style:
                            AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Container(
            height: width > 770 ? 500.h : 200.h,
            decoration: const BoxDecoration(
              color: Color.fromARGB(113, 4, 196, 239),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: Text(
                      "Discover & book local beauty professionals",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kBlack,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextFormField(
                    decoration: style1FromTheme(
                      "Search",
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Container stylePrimary(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    List<String> suggestions = [
      "Hair",
      "Spa",
      "Yoga",
      "Nail",
      "Barber",
      "Massage",
      "Personal Training",
      "Cycling",
      "More.."
    ];
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/dummy/dummy_banner_1.jpeg"),
        ),
      ),
      width: double.infinity,
      height: width > 770 ? 500.h : 300.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Text(
                "Book your next haircut",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                  color: kWhite,
                  fontWeight: FontWeight.w700,
                  fontSize: width > 770 ? 30.sp : 24.sp,
                ),
              )
            ],
          ),
          SizedBox(height: 30.h),
          if (width > 770)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: use_decorated_box
                Container(
                  decoration: const BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 75.w,
                        child: TextFormField(
                          decoration: style1FromTheme(
                            "Business Name or Location",
                            Icons.search,
                          ),
                        ),
                      ),
                      Container(
                        height: 52.h,
                        width: 1,
                        color: kGrey,
                      ),
                      SizedBox(
                        width: 75.w,
                        child: TextFormField(
                          decoration: style1FromTheme(
                            "Search Services or Classes",
                            Icons.search,
                          ),
                        ),
                      ),
                      Container(
                        height: 52.h,
                        width: 1,
                        color: kGrey,
                      ),
                      SizedBox(
                        width: 60.w,
                        child: TextFormField(
                          decoration: style1FromThemeSuffix(
                            "Activity",
                            Icons.expand_more,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 52.h,
                  width: 45.w,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Search",
                      style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                        color: kWhite,
                        // fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            )
          else
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                height: 52.h,
                decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    decoration: style1FromTheme(
                      "Business Name or Location",
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              height: 40.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: suggestions.length,
                itemBuilder: (contex, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: AppSizes.p8),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(color: kWhite.withOpacity(0.8)),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Center(
                      child: Text(
                        suggestions[index],
                        style:
                            AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                          color: kWhite,
                          // fontWeight: FontWeight.w700,
                          fontSize: 16,
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
    );
  }

  InputDecoration style1FromTheme(String title, IconData icon) {
    return InputDecoration(
      prefixIcon: Icon(icon),
      hintText: title,
      fillColor: kWhite,
      filled: true,
      hintStyle: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
        color: kGrey,
        // fontWeight: FontWeight.w700,
        fontSize: 13.sp,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
    );
  }

  InputDecoration style2FromTheme(String title, IconData icon) {
    return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: kBlack,
      ),
      hintText: title,
      fillColor: kWhite,
      hintStyle:
          AppThemes.lightTheme.textTheme.bodySmall?.copyWith(color: kGrey),
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: kWhite),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: kWhite),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: kWhite),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: kWhite),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: kWhite),
      ),
    );
  }

  InputDecoration style1FromThemeSuffix(String title, IconData icon) {
    return InputDecoration(
      suffixIcon: Icon(icon),
      hintText: title,
      fillColor: kWhite,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: kWhite),
      ),
    );
  }
}
