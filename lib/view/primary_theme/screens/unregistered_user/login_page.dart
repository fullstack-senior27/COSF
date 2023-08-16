import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/edit_profile.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/forgotpass_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "assets/icons/login.webp",
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign in",
                          style: GoogleFonts.urbanist(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Join now and be part of our exclusive community! Sign up in seconds and gain access to exciting perks, discounts, and special offers.",
                          style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: kWhite,
                            floatingLabelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            labelText: "Email",
                            hintText: "Enter your email",
                          ),

                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: kWhite,
                            floatingLabelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter your Password",
                          ),

                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextButton(
                          onPressed: () {
                            context.go("/login/forgotPassword");
                          },
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.urbanist(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () =>
                                {Get.to(() => const EditProfile())},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kBlack,
                              padding: EdgeInsets.symmetric(
                                vertical: 15.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.urbanist(
                                color: kWhite,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        // create a divider with a text in the middle
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: kdisable,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Text(
                                "or",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  color: kdarkPrime,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: kdisable,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          child: Text(
                            "New to Cosmetropolis?",
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              color: kdarkPrime,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 35.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // ref.read(styleProvider).setSelectedPage("Sign Up")
                              context.go("/signUp");
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: kBlack,
                              surfaceTintColor: kWhite,
                              padding: EdgeInsets.symmetric(
                                vertical: 15.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                                side: const BorderSide(
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Text(
                              "Create my Account",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 920)
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 55,
                      child: image1,
                    ),
                  )
                else
                  Container(),
              ],
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
