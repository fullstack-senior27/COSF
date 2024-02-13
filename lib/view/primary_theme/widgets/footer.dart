import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 920
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/footer.webp"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/icons/logo_big.webp",
                              width: 90.w,
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "Welcome to Cosmetropolis, where beauty meets luxury. Our salon offers a wide range of services, from haircuts and coloring to skincare and makeup. Our expert stylists and estheticians use only the highest quality products to give you the perfect look. Book your appointment today ",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "Available on",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/playstore.webp",
                                  width: 40.w,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 5.w),
                                Image.asset(
                                  "assets/icons/appstore.webp",
                                  width: 40.w,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Align(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quick Links",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Find Beautician",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Get Listed",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Team",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Careers",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Login",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Register",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Align(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Other Links",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Help",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Contact Us",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Sitemap",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Terms for Pros",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Terms for Clients",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Privacy Policy",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Align(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Subscribe",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              TextField(
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: kBlue,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  hintText: "Enter your email",
                                  hintStyle: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.send_outlined,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Stay up to date with the latest news, updates, and special offers by subscribing to our newsletter. Enter your email address below to join our mailing list. You can unsubscribe at any time.",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Available on",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/facebook.webp",
                                    height: 40.h,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 3.w),
                                  Image.asset(
                                    "assets/icons/insta.webp",
                                    height: 40.h,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 3.w),
                                  Image.asset(
                                    "assets/icons/twitter.webp",
                                    height: 40.h,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 3.w),
                                  Image.asset(
                                    "assets/icons/linkdin.webp",
                                    height: 40.h,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                const Divider(
                  color: kdisable,
                  thickness: 1,
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    "©2023, All right reserved.",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/footer.webp"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/icons/logo_big.webp",
                        fit: BoxFit.contain,
                        height: 60.h,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Welcome to Cosmetropolis, where beauty meets luxury. Our salon offers a wide range of services, from haircuts and coloring to skincare and makeup. Our expert stylists and estheticians use only the highest quality products to give you the perfect look. Book your appointment today ",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Available on",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Flexible(
                            child: Image.asset(
                              "assets/icons/playstore.webp",
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              "assets/icons/appstore.webp",
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quick Links",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Find Beautician",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Get Listed",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Team",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Careers",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Login",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Register",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Other Links",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Help",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Contact Us",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Sitemap",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Terms for Pros",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Terms for Clients",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Privacy Policy",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  child: Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subscribe",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: GoogleFonts.urbanist(
                              color: kBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                            suffixIcon: const Icon(
                              Icons.send_outlined,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Stay up to date with the latest news, updates, and special offers by subscribing to our newsletter. Enter your email address below to join our mailing list. You can unsubscribe at any time.",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Available on",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/facebook.webp",
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 3.w),
                            Image.asset(
                              "assets/icons/insta.webp",
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 3.w),
                            Image.asset(
                              "assets/icons/twitter.webp",
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 3.w),
                            Image.asset(
                              "assets/icons/linkdin.webp",
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                const Divider(
                  color: kdisable,
                  thickness: 1,
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    "©2023, All right reserved.",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
