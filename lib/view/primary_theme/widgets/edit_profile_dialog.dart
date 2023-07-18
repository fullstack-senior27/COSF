import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangePasswordDialog extends StatelessWidget {
  const ChangePasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 900
          ? 500
          : MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Secure your account with a new password. Update your login credentials now to keep your information safe and protect your privacy.",
            style: urbanist400(kBlack, 12),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Old Password*",
            style: urbanist500(kBlack, 16),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your old password",
              hintStyle: urbanist400(kGrey, 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "New Password*",
            style: urbanist500(kBlack, 16),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Changing your password is quick and easy, and gives you peace of mind that your information is secure. Update your login credentials now to keep your account safe and secure.",
            style: urbanist400(kBlack, 12),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your new password",
              hintStyle: urbanist400(kGrey, 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Confirm Password*",
            style: urbanist500(kBlack, 16),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your new password again",
              hintStyle: urbanist400(kGrey, 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: BlackButton(context, "Save", () {
              Navigator.pop(context);
            }),
          )
        ],
      ),
    );
  }
}

class EditProfileDialog extends StatefulWidget {
  const EditProfileDialog({super.key});

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  bool sms = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 900
          ? 700
          : MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            color: kLightBlue,
            child: Row(
              children: [
                Container(
                  // padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: kWhite, // Set the color of the border
                      width: 5.0, // Set the width of the border
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: const NetworkImage(
                      'https://tse4.mm.bing.net/th?id=OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8&pid=Api&P=0&h=180',
                    ), // Set the image for the circle avatar
                    radius: 30
                        .r, // Adjust the radius to control the size of the avatar
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Wick", style: urbanist600(kBlack, 16)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("John@gmail.com", style: urbanist400(kGrey, 12)),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
                const Spacer(),
                Visibility(
                  visible: MediaQuery.of(context).size.width > 600,
                  child: Column(
                    children: [
                      Text(
                        "Upload Profile Picture",
                        textAlign: TextAlign.center,
                        style: urbanist500(kBlack, 14),
                      ),
                      SizedBox(height: 5.h),
                      Text("150X150", style: urbanist400(kGrey, 12)),
                      SizedBox(height: 5.h),
                      FittedBox(
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icons/export.png",
                            height: 15.h,
                            color: kBlue,
                          ),
                          label: Text("Browse", style: urbanist500(kBlue, 16)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("First Name", style: urbanist500(kBlack, 16)),
                      SizedBox(height: 5.h),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "John",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Last Name", style: urbanist500(kBlack, 16)),
                      SizedBox(height: 5.h),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Wick",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email", style: urbanist500(kBlack, 16)),
                      SizedBox(height: 5.h),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "John@gmail.com",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone Number", style: urbanist500(kBlack, 16)),
                      SizedBox(height: 5.h),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "+234 000 000 0000",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              // height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: const Color(0xffE5E6F6),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  const Icon(
                    Icons.cloud_upload_outlined,
                    size: 40,
                    color: kGrey,
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      text: "Cover image  ",
                      style: urbanist400(kGrey, 14),
                      children: [
                        TextSpan(
                          text: "browser",
                          style: urbanist400(kBlue, 14),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //open image picker
                            },
                        ),
                        // TextSpan(
                        //   text: " to upload",
                        //   style: urbanist400(kGrey, 14),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "1314x275",
                    style: urbanist500(kGrey, 14),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              color: kLightBlue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Switch(
                        activeColor: kBlue,
                        activeTrackColor: kWhite,
                        inactiveThumbColor: kWhite,
                        inactiveTrackColor: klines,
                        value: sms,
                        onChanged: (value) {
                          setState(() {
                            sms = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        child: Text(
                          "SMS Notification",
                          style: urbanist600(kBlack, 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Yes. send me automated appointment reminders & info about my bookings (message & data rates may apply).",
                    style: urbanist500(kBlack, 14),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "I acknowledge that the number provided above belongs to me and that i'm not required to consent as a condition of purchasing any goods or services I can opt out at any time and will notity Cosmetropolis if my number changes.",
                    style: urbanist400(kGrey, 12),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: SizedBox(
              height: 40.h,
              width: double.infinity,
              child: BlackButton(context, "Save", () {
                Get.back();
              }),
            ),
          )
        ],
      ),
    );
  }
}
