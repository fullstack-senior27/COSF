import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  List<String> imgList = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Personal Info",
            style: urbanist600(kBlack, 18),
          ),
          SizedBox(height: 20.h),
          Text(
            "Name",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "John Doe",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "My Profession*",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Hair Stylist",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "My Specialty*",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Select 2 specialist",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "About Me*",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 5.h),
          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "About Me",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Email*",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "tim.jennings@example.com",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Phone Number*",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 10.h),
          TextField(
            decoration: InputDecoration(
              hintText: "906-414-8272",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "My Cosmetropolis Website*",
            style: urbanist400(kBlack, 13),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Cosmetropolis.com/Kristin Watson",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kBlue),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kWhite,
                  padding: MediaQuery.of(context).size.width > 680
                      ? EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w)
                      : EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    side: const BorderSide(
                      color: kGrey,
                    ),
                  ),
                ),
                child: Text(
                  "Cancel",
                  style: urbanist400(kGrey, 14),
                ),
              ),
              SizedBox(width: 10.w),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBlack,
                  padding: MediaQuery.of(context).size.width > 680
                      ? EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w)
                      : EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  minimumSize: Size(100.w, 40.h),
                ),
                child: Text(
                  "Save",
                  style: urbanist400(kWhite, 14),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BusinessInfo extends StatefulWidget {
  const BusinessInfo({super.key});

  @override
  State<BusinessInfo> createState() => _BusinessInfoState();
}

class _BusinessInfoState extends State<BusinessInfo> {
  int nameValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Business Info",
            style: urbanist600(kBlack, 18),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Business Name*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salon Number*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Mobile Number*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SMS Notification Phone Number*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Number shown on profile",
            style: urbanist400(kdescription, 14),
          ),
          SizedBox(
            height: 5.h,
          ),
          RadioListTile(
            title: Text("Salon Number", style: urbanist500(kBlack, 14)),
            value: 0,
            // controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsets.zero,
            activeColor: kBlack,
            groupValue: nameValue,
            onChanged: (value) {
              setState(() {
                nameValue = value!;
              });
            },
          ),
          SizedBox(
            height: 5.h,
          ),
          RadioListTile(
            title:
                Text("Personal Mobile Number", style: urbanist500(kBlack, 14)),
            value: 1,
            // controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsets.zero,
            activeColor: kBlack,
            groupValue: nameValue,
            onChanged: (value) {
              setState(() {
                nameValue = value!;
              });
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "ZIP",
            style: urbanist400(kBlack, 14),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Zip Code",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kBlack,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                minimumSize: Size(100.w, 40.h),
              ),
              child: Text(
                "Save",
                style: urbanist400(kWhite, 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 700
          ? EdgeInsets.symmetric(horizontal: 60.w)
          : EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Service Menu",
            style: urbanist600(kBlack, 18),
          ),
          SizedBox(height: 30.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            color: kWhite,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/services.png",
                  height: 55.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "New Service",
                  style: urbanist600(kBlack, 18),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Services are the individual services you provide at your business",
                  style: urbanist400(kdescription, 13),
                ),
                SizedBox(height: 15.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                  ),
                  child: Text(
                    "Add Service",
                    style: urbanist400(kWhite, 14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            color: kWhite,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/combined_services.png",
                  height: 60.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "New Combined Service",
                  style: urbanist600(kBlack, 20),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Combined services include more than one service",
                  style: urbanist400(kdescription, 14),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                  ),
                  child: Text(
                    "Add Combined Service",
                    style: urbanist400(kWhite, 14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            color: kWhite,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/service_category.png",
                  height: 60.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "New Service Category",
                  style: urbanist600(kBlack, 20),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Categories allow you to organize your services into groups",
                  style: urbanist400(kdescription, 14),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                  ),
                  child: Text(
                    "Add Service Category",
                    style: urbanist400(kWhite, 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotosTab extends StatelessWidget {
  const PhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      "https://i.imgur.com/Fyponv9.png",
      "https://i.imgur.com/E6yRIRb.png",
      "https://i.imgur.com/svLt1SE.png",
      "https://i.imgur.com/FDXC3nI.png",
      "https://i.imgur.com/jA407EU.png",
      "https://i.imgur.com/fIL9cnJ.png"
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            // height: 150.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: const Color(0xffE5E6F6),
            ),
            child: Column(
              children: [
                SizedBox(height: 20.h),
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
          SizedBox(height: 20.h),
          Container(
            color: const Color(0xffE0F3FD),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: kWhite,
                  child:
                      Image.asset("assets/icons/pin_black.png", height: 30.h),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Text(
                    "You haven't pinned any of your photos yet! Just tap the pin on your three favorite photos and they will be displayed first in your gallery.",
                    style: MediaQuery.of(context).size.width > 700
                        ? urbanist400(kGrey, 14)
                        : urbanist400(kGrey, 12),
                  ),
                ),
                SizedBox(width: 5.w),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 25.sp,
                  color: kdarkPrime,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width > 700 ? 40.h : 20.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 680 ? 3 : 2,
              crossAxisSpacing: 7.w,
              childAspectRatio:
                  MediaQuery.of(context).size.width > 680 ? 1 / 1.2 : 1 / 1.5,
              mainAxisSpacing: 20.h,
            ),
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1.2,
                    child: Container(
                      // height: 200.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imgList[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: kBlack,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        color: kWhite,
                                        size: 20.sp,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/icons/pin_white.png",
                                        height: 20.sp,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete_outline,
                                        color: kWhite,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

class ManageAvailability extends StatelessWidget {
  const ManageAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 700
          ? EdgeInsets.symmetric(horizontal: 60.w)
          : EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Manage Availability", style: urbanist600(kBlack, 18)),
          SizedBox(height: 30.h),
          Text(
            "Front Desk",
            style: urbanist400(kdescription, 18),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              MediaQuery.of(context).size.width > 700
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          child: AlertDialog(
                            title: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.sp,
                                  color: kGrey,
                                ),
                              ),
                            ),
                            backgroundColor: const Color(0xfff8f8f8),
                            content: const SingleChildScrollView(
                              child: ServiceMenu(),
                            ),
                          ),
                        );
                      },
                    )
                  :

                  // bottom sheet for service menu
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 15.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 20.sp,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: const ServiceMenu(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Services",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              MediaQuery.of(context).size.width > 700
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Edit Availability",
                                style: urbanist600(kBlack, 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.sp,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: SingleChildScrollView(
                            child: editAvailability(),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kWhite,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                      side: const BorderSide(
                                        color: kGrey,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: urbanist400(kGrey, 14),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kBlack,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    minimumSize: Size(100.w, 40.h),
                                  ),
                                  child: Text(
                                    "Save",
                                    style: urbanist400(kWhite, 14),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    )
                  : showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Edit Availability",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 20.sp,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  child: editAvailability(),
                                ),
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.all(13.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: kWhite,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              side: const BorderSide(
                                                color: kGrey,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Cancel",
                                            style: urbanist400(kGrey, 14),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: kBlack,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            minimumSize: Size(100.w, 40.h),
                                          ),
                                          child: Text(
                                            "Save",
                                            style: urbanist400(kWhite, 14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Manage Schedule",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              MediaQuery.of(context).size.width > 700
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Upcoming Hours",
                                style: urbanist600(kBlack, 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.sp,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: const SingleChildScrollView(
                            child: EditUpcomingHours(),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kWhite,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                      side: const BorderSide(
                                        color: kGrey,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: urbanist400(kGrey, 14),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kBlack,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    minimumSize: Size(100.w, 40.h),
                                  ),
                                  child: Text(
                                    "Save",
                                    style: urbanist400(kWhite, 14),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    )
                  : showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Upcoming Hours",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 20.sp,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  child: const EditUpcomingHours(),
                                ),
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.all(13.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: kWhite,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              side: const BorderSide(
                                                color: kGrey,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Cancel",
                                            style: urbanist400(kGrey, 14),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: kBlack,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            minimumSize: Size(100.w, 40.h),
                                          ),
                                          child: Text(
                                            "Save",
                                            style: urbanist400(kWhite, 14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Adjust Upcoming Hours",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Manage Vacation Time",
                          style: urbanist600(kBlack, 18),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 20.sp,
                            color: kGrey,
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: const Color(0xfff8f8f8),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Divider(
                            color: klines,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Setting vacation time will block off your availability for the selected time span.",
                            style: urbanist400(kGrey, 16),
                          ),
                          SizedBox(height: 60.h),
                          Text(
                            "Upcoming time off",
                            style: urbanist600(kBlack, 14),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "You have no upcoming time off scheduled.",
                            style: urbanist400(kBlack, 14),
                          )
                        ],
                      ),
                    ),
                    actions: [
                      SizedBox(
                        width: double.infinity,
                        //opens calender
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Select a date",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 20.sp,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  backgroundColor: const Color(0xfff8f8f8),
                                  content: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Divider(
                                        color: klines,
                                      ),
                                      SizedBox(height: 10.h),
                                      Expanded(
                                        child: SizedBox(
                                          // height: 200.h,
                                          width: 300,
                                          child: CalendarCarousel<Event>(
                                            onDayPressed: (
                                              DateTime date,
                                              List<Event> events,
                                            ) {
                                              // setState(() {});
                                            },
                                            todayButtonColor: kBlue,
                                            todayBorderColor: kBlue,
                                            markedDateShowIcon: true,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75,
                                            daysHaveCircularBorder: true,
                                            daysTextStyle: GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            weekendTextStyle:
                                                GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            weekdayTextStyle:
                                                GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            headerTextStyle:
                                                GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            headerTitleTouchable: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kBlack,
                                          padding: EdgeInsets.symmetric(
                                            vertical: 20.h,
                                            horizontal: 5.w,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              5.r,
                                            ),
                                          ),
                                          minimumSize: Size(100.w, 40.h),
                                        ),
                                        child: Text(
                                          "Add New Vacation",
                                          style: urbanist400(kWhite, 14),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kBlack,
                            padding: EdgeInsets.symmetric(
                              vertical: 20.h,
                              horizontal: 5.w,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            minimumSize: Size(100.w, 40.h),
                          ),
                          child: Text(
                            "Add New Vacation",
                            style: urbanist400(kWhite, 14),
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Manage Vacation Time",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Calendar Sync",
                          style: urbanist600(kBlack, 18),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 20.sp,
                            color: kGrey,
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: kWhite,
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Divider(
                            color: klines,
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Sync your Google calendar to prevent double bookings",
                            style: urbanist400(kdescription, 16),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: kBlue,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Image.asset(
                                    "assets/icons/google_color.png",
                                    height: 30.h,
                                    // width: 30.w,
                                  ),
                                ),
                                // SizedBox(width: 10.w),
                                Text(
                                  "Connect Google Account",
                                  style: urbanist500(kWhite, 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 50.h),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10.h),
                            color: kselected,
                            child: Text(
                              "You can only edit appointments made in Cosmetropolis.\nCosmetropolis appointments will not sync back to Google Calendar.\nText reminders will not be sent for Google synced appointments.",
                              style: urbanist400(kdescription, 12),
                            ),
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Google Calendar Sync",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget editAvailability() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Divider(
        color: klines,
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Let Clients book online", style: urbanist400(kdescription, 18)),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: true,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Text(
        "Timezone*",
        style: urbanist600(kBlack, 14),
      ),
      SizedBox(height: 5.h),
      TextField(
        decoration: InputDecoration(
          hintText: "US/Pacific (GMT - 800)",
          hintStyle: urbanist400(kGrey, 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: const BorderSide(color: kGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Monday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Tuesday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Wednesday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Thursday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Friday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Saturday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sunday",
            style: urbanist500(kBlack, 16),
          ),
          Theme(
            data: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch().copyWith(outline: kdisable),
            ),
            child: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: kBlack,
              activeColor: kWhite,
              inactiveThumbColor: kWhite,
              inactiveTrackColor: kdisable,
              focusColor: kBlack,
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
    ],
  );
}

class EditUpcomingHours extends StatefulWidget {
  const EditUpcomingHours({super.key});

  @override
  State<EditUpcomingHours> createState() => _EditUpcomingHoursState();
}

class _EditUpcomingHoursState extends State<EditUpcomingHours> {
  DateTime now = DateTime.now();

  // Format the date
  String formattedDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: klines,
        ),
        SizedBox(height: 20.h),
        GestureDetector(
          onTap: () {
            // Show the date picker
            showDatePicker(
              context: context,
              initialDate: now,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            ).then((value) {
              // Set the date
              setState(() {
                formattedDate = DateFormat('MMMM d, yyyy').format(value!);
              });
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back_ios_outlined,
                color: kBlack,
                size: 20,
              ),
              SizedBox(width: 10.w),
              Text(
                formattedDate,
                style: urbanist500(kBlack, 16),
              ),
              SizedBox(width: 10.w),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: kBlack,
                size: 20,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "24 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "25 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "26 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "27 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "28 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "29 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "30 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

class ProfileReviews extends StatelessWidget {
  const ProfileReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Avg. user rating', style: urbanist600(kBlack, 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: kBlack,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text('4.82', style: urbanist600(kBlack, 24)),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text('856k booking reviews', style: urbanist400(kBlack, 12)),
              ],
            ),
            const Spacer(),
            FittedBox(
              child: SizedBox(
                width: 80.w,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 60.w,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            color: kBlack,
                            size: 10,
                          ),
                          Text("${5 - index}", style: urbanist400(kBlack, 12)),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                            child: LinearProgressBar(
                              maxSteps: 100,
                              progressType:
                                  LinearProgressBar.progressTypeLinear,
                              currentStep: 50,
                              progressColor: kBlue,
                              backgroundColor: Colors.grey,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                kBlack,
                              ),
                              semanticsLabel: "Label",
                              semanticsValue: "Value",
                              minHeight:
                                  MediaQuery.of(context).size.height * 0.01,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "${10 + index}K",
                            style: urbanist400(kdescription, 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        const Divider(
          color: klines,
        ),
        SizedBox(height: 40.h),
        ...List.generate(
          9,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: kdisable,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGrey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(
                      0,
                      1,
                    ), // changes position of shadow
                  ),
                ],
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        "https://st4.depositphotos.com/4509995/21763/i/600/depositphotos_217634160-stock-photo-portrait-of-white-young-woman.jpg",
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jacob Jones",
                              style: urbanist600(kBlack, 14),
                            ),
                            // SizedBox(
                            //   height: 10.h,
                            // ),
                            SizedBox(
                              width: 200.w,
                              child: Text(
                                "April 2023 • Haltu, Kolkata, West Bengal 700078, India",
                                style: urbanist400(kBlack, 12),
                              ),
                            ),

                            if (MediaQuery.of(context).size.width < 920)
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                allowHalfRating: true,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.w),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: kBlack,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            else
                              Container()
                          ],
                        ),
                      ),
                      if (MediaQuery.of(context).size.width > 920)
                        Expanded(
                          child: Row(
                            children: [
                              const Spacer(),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                allowHalfRating: true,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.w),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: kBlack,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        )
                      else
                        Container()
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Very happy with my visit at this salon. It was my first time there which made me a bit nervous. Esme was very helpful, knowledgeable, beauticianl and attentive. I am very happy with my new hairstyle. Very nice atmosphere. It’s hard to find a hairdresser you can trust but I think I just did. Highly recommended.",
                    style: urbanist400(kdescription, 12),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
