import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/beauticians_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Future filterBottomSheet(BuildContext context, Widget child) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: const Color(0xfff8f8f8),
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.r),
        topRight: Radius.circular(15.r),
      ),
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: child,
          );
        },
      );
    },
  );
}

class BeauticiansFilterBottom extends StatefulWidget {
  const BeauticiansFilterBottom({super.key});

  @override
  State<BeauticiansFilterBottom> createState() =>
      _BeauticiansFilterBottomState();
}

class _BeauticiansFilterBottomState extends State<BeauticiansFilterBottom> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filter",
                style: GoogleFonts.urbanist(
                  fontSize: 20.sp,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/icons/close.png",
                  height: 20.h,
                  width: 20.w,
                ),
              ),
            ],
          ),
          const Divider(color: klines),
          SizedBox(height: 15.h),
          const BeauticiansSideFilter(),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
