import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoteSection3 extends StatelessWidget {
  const PromoteSection3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 20.h,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffFEF9ED),
              borderRadius: BorderRadius.circular(5.r),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: kBlack,
                          size: 10.sp,
                        )),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "In Person",
                      style: urbanist400(kBlack, 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "In-Person promotion",
                  style: urbanist600(kBlack, 20),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    "Once you have the client in your chair, you can show them that they can view your calendar and book their own appointments with just a few clicks.",
                    style: urbanist500(kBlack, 13)),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other benefits include:",
                    style: urbanist600(kBlack, 18),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "• See your availability & easily book",
                    style: urbanist500(kBlack, 14),
                  ),
                  Text(
                    "• View and manage their appointment",
                    style: urbanist400(kBlack, 12),
                  ),
                  Text(
                    "• Tip & pay through the app",
                    style: urbanist400(kBlack, 12),
                  ),
                  Text(
                    "• Receive appointment reminders",
                    style: urbanist400(kBlack, 12),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Other benefits include:",
                      style: urbanist600(kBlack, 18),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "When a client checks out, show them how to book their next appointment online. By texting them your profile link, they can easily view your calendar or rebook you from their receipt page in the app.",
                      style: urbanist400(kdescription, 12),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(width: 120.w, child: CopyField()),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
