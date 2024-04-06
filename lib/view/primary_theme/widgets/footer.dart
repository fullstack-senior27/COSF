import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        ? Column(
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      kGreyPink2Color,
                      kGreyPinkColor,
                    ],
                  ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(363),),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  width: double.infinity,
                  child: Column(
                      children: [
                        const SizedBox(height: 63,),
                        Text(
                          'Subscribe To Our Newsletter',
                          style: GoogleFonts.urbanist(
                            color: kWhite,
                            fontSize: 38.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Stay up to date with the latest news, updates, and special offers by subscribing to our newsletter.\nEnter your email address below to join our mailing list. you can unsubscribe at any time.',
                          style: GoogleFonts.urbanist(
                            color: kWhite,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 600.0, // Set this to limit the width of the subscription box
                          ),
                          child: Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              const Expanded(
                                child: SizedBox(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: 'Enter your email',
                                      contentPadding:EdgeInsets.symmetric(vertical: 10.0),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your subscription logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: kWhite,
                                  backgroundColor:
                                      kGreyPink2Color, // Adjust the button color to match the image
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  padding: const EdgeInsets.all(20.0),
                                ),
                                child: const Text('Subscribe'),
                              ),
                            ],
                          ),
                        ),
                        ),
                        
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.youtube, color: kWhite, size: 30,)),
                            const SizedBox(width: 30),
                            IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.facebook, color: kWhite, size: 30,)),
                            const SizedBox(width: 30),
                            IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.facebook, color: kWhite, size: 30,)),
                            const SizedBox(width: 30),
                            IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.instagram, color: kWhite, size: 30,)),
                            const SizedBox(width: 30),
                            IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.linkedin, color: kWhite, size: 30,)),
                          ],
                        )
                      ],
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          flex: 4,
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Why Cosmetropolis",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Welcome to Cosmetropolis, where beauty meets luxury. Our salon offers a wide range of services, from haircuts and coloring to skincare and makeup. Our expert stylists and estheticians use only the highest quality products to give you the perfect look. Book your appointment today",
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
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(
                      color: kdisable,
                      thickness: 1,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // This container will wrap the two widgets you want to align on the left.
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Use this to limit the row's size to its children
                            children: <Widget>[
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
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(FontAwesomeIcons.whatsapp, color: Colors.green), // WhatsApp icon
                          label: const Text('+1 514 826 3107', style: TextStyle(color: kBlack)),
                          onPressed: () {
                            // Add your onPressed code here
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.green, // Background color of the button
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30), // Match the border radius
                            ),
                            side: const BorderSide(), // Border color and width
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: kdisable,
                      thickness: 1,
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Text(
                        "Cosmetropolis 2024 | Terms & Conditions | Privacy Policy | Customer Acceptance Policy",
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
            ],
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
                        "assets/icons/logo_big.png",
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
                      )
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
                        )
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
