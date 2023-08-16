import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FortgotPassPage extends ConsumerStatefulWidget {
  const FortgotPassPage({super.key});

  @override
  ConsumerState<FortgotPassPage> createState() => _FortgotPassPageState();
}

class _FortgotPassPageState extends ConsumerState<FortgotPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (MediaQuery.of(context).size.width > 945)
              SizedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20.h,
                      ),
                      child: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: kBlack,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              SizedBox(
                height: 80.h,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20.h,
                      ),
                      child: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: kBlack,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: GoogleFonts.urbanist(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Not a problem, please enter your email address.",
                          style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            fillColor: kWhite,
                            filled: true,
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

                        TextButton(
                          onPressed: () => {
                            Get.back(),
                          },
                          child: Text(
                            " Back to login",
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
                            onPressed: () => {},
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
                              "Reset my Password",
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
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 35.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => {
                              ref
                                  .read(styleProvider)
                                  .setSelectedPage("Sign Up"),
                              Get.back()
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
                                color: kdarkPrime,
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
                    child: Image.asset(
                      "assets/icons/forgotpass.webp",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height - 55,
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
