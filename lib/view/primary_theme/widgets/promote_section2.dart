import 'package:better_cupertino_slider/better_cupertino_slider.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class PromoteSection2 extends StatelessWidget {
  const PromoteSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      "Client Communication",
                      style: urbanist400(kBlack, 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Get clients to book you after they reach out",
                  style: urbanist600(kBlack, 20),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  child: Text(
                      "When clients can book you online, it minimizes distractions — no more late night texts or last minute calls.",
                      style: urbanist500(kBlack, 13)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/icons/sms.png",
                    height: 60.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "SMS",
                    style: urbanist600(kBlack, 18),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Reduce the back and forth conversations with your clients. They can easily see what time slots you have open and pick a date and time that works for them.",
                    style: urbanist400(kBlack, 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              )),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Invite to book",
            style: urbanist600(kBlack, 18),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(width: 100.w, child: CopyField()),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: klines,
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  "assets/icons/calls.png",
                  height: 60.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Calls",
                  style: urbanist600(kBlack, 18),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Booking appointments manually is time consuming. If you book 25 appointments a day, and spend five minutes of your time scheduling each appointment, that adds up to 10 hours a week!",
                  style: urbanist400(kBlack, 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Voicemail Script",
                          style: urbanist600(kBlack, 16),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Change your voicemail to include your website link to book you online.",
                          style: urbanist400(kBlack, 12),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(color: klines, width: 1),
                          ),
                          child: Text(
                            "Hello, you have reached [name] of [Salon Name]. I am sorry I am not able to answer your call right now. You can see my availability, service offerings, business hours and book online on StyleSeat.com/krishnarajchauhan. Please leave a detailed message including your name and phone number for any other questions. Thank you for calling!",
                            style: urbanist400(kGrey, 12),
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Voicemail Tips",
                          style: urbanist600(kBlack, 16),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Make your recording as short as possible Make your message upbeat and friendly Highlight your StyleSeat page Practice makes perfect.",
                          style: urbanist400(kBlack, 12),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "iOS Tips",
                          style: urbanist600(kBlack, 16),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Set up an auto response SMS to respond to incoming calls.",
                          style: urbanist400(kBlack, 12),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CopyField(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Open your Settings app.",
                          style: urbanist500(kdescription, 14),
                        ),
                        Text(
                          "Scroll down to and select Phone.",
                          style: urbanist500(kdescription, 14),
                        ),
                        Text(
                          "Tap Respond with Text.",
                          style: urbanist500(kdescription, 14),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Now when you receive a call, you can quickly reply with one of the messages you set up in just two taps.",
                          style: urbanist400(kdescription, 12),
                        ),
                        Text(
                          "When the call comes in, tap Message.",
                          style: urbanist400(kdescription, 12),
                        ),
                        Text(
                          "The responses you created will display at the bottom. Simply tap the one you want to send and it's on its instantly way to your caller.",
                          style: urbanist400(kdescription, 12),
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Divider(
                  color: klines,
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/icons/email.png",
                    height: 60.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Email",
                    style: urbanist600(kBlack, 18),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "You know social media marketing is important to your business, but have you explored the power of email marketing? With the right strategy, email marketing will keep current customers interested in your brand and it will convert potential customers into buyers.",
                    style: urbanist400(kBlack, 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      width: 75.w,
                      child: BlackButtonSmall(text: "Create Compaign"))
                ],
              )),
        ]));
  }
}
