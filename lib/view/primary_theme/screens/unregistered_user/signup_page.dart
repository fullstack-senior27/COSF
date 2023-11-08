import 'dart:math';

import 'package:cosmetropolis/data/remote/user/models/user_register_model.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/user_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> with BaseScreenView {
  late UserViewModel _viewModel;
  bool isLoading = false;
  // final UserDetailService _userDetailService = getIt<UserDetailService>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(userViewModel)..attachView(this);
    // getData();
    image1 = Image.asset(
      "assets/icons/signup.webp",
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }

  Country? selectedCountry;
  String selectedCountryCode = '+91';
  String selectedCountryFlag = 'flags/usa.png';
  bool isAgree = false;
  Future<void> _showCountryPicker() async {
    final country = await showCountryPickerDialog(
      context,
      cornerRadius: 15,
    );
    if (country != null) {
      setState(() {
        selectedCountry = country;
        selectedCountryCode = country.callingCode;
        selectedCountryFlag = country.flag;
        print(selectedCountryFlag);
      });
    }
  }

  late Image image1;

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }

  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(userViewModel);
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
                          "Sign Up",
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
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        TextFormField(
                          controller: phoneNumberController,
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhite,
                            floatingLabelStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: const OutlineInputBorder(),
                            border: const OutlineInputBorder(),
                            enabledBorder: const OutlineInputBorder(),
                            labelText: "Phone Number",
                            hintText: "Enter your phone number",
                            prefixIcon: InkWell(
                              onTap: () {
                                _showCountryPicker();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 5,
                                ),
                                child: SizedBox(
                                  width: 65,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        selectedCountryFlag,
                                        package: countryCodePackageName,
                                        width: 35,
                                        height: 30,
                                        fit: BoxFit.fill,
                                      ),
                                      const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        TextFormField(
                          controller: nameController,
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: kWhite,
                            floatingLabelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            labelText: "Full Name",
                            hintText: "Enter your Full Name",
                          ),

                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your full name';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          controller: emailController,
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 15.sp,
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
                          controller: passwordController,
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 15.sp,
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
                        // add agree to terms and conditions with a checkbox
                        Row(
                          children: [
                            Checkbox(
                              fillColor: MaterialStateProperty.all(kBlack),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.r),
                              ),
                              side: const BorderSide(
                                color: kdisable,
                              ),
                              value: isAgree,
                              onChanged: (value) {
                                isAgree = value ?? false;
                                setState(() {});
                              },
                            ),
                            Text(
                              "I agree to the ",
                              style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              "Terms and Conditions",
                              style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                                color: kBlue,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: kBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {
                              isLoading = true;
                              setState(() {});
                              print(UserRegisterRequest(
                                email: emailController.text,
                                password: passwordController.text,
                                phone: phoneNumberController.text,
                                name: nameController.text,
                                role: "user",
                              ).toString());
                              print(
                                UserRegisterRequest(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  phone: phoneNumberController.text,
                                  name: nameController.text,
                                  role: "user",
                                ),
                              );
                              await _viewModel.register(
                                  UserRegisterRequest(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    phone: phoneNumberController.text,
                                    name: nameController.text,
                                    role: "user",
                                  ),
                                  context);
                              isLoading = false;
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kBlack,
                              padding: EdgeInsets.symmetric(
                                vertical: 15.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            child: isLoading
                                ? Center(
                                    child: SizedBox(
                                        height: 20.h,
                                        width: 20.h,
                                        child: const CircularProgressIndicator(
                                          color: kWhite,
                                        )),
                                  )
                                : Text(
                                    "Sign Up",
                                    style: GoogleFonts.urbanist(
                                      color: kWhite,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service apply.",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.sp,
                            color: kdescription,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
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
                                  fontSize: 12.sp,
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
                            "Have you used Cosmetropolis before?",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
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
                            onPressed: () => {
                              ref.read(styleProvider).setSelectedPage("Log In")
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
                              "To Sign In",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 12.sp,
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

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }
}
