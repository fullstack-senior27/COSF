import 'package:avatar_stack/avatar_stack.dart';
import 'package:cosmetropolis/data/remote/beautician/registration.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/beauticians_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> with BaseScreenView {
  Country? selectedCountry;
  String selectedCountryCode = '+91';
  String selectedCountryFlag = 'flags/usa.png';
  bool isAgree = false;
  late ImageProvider image1;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  late BeauticianViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    image1 = const AssetImage("assets/icons/landing.webp");
    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    // getData();
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1, context);
    super.didChangeDependencies();
  }

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
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(beauticianViewModel);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (MediaQuery.of(context).size.width > 980)
              webview(context)
            else
              mobileview(context),
            const Footer()
          ],
        ),
      ),
    );
  }

  Container webview(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 57,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: image1,
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: SizedBox(
                height: 450.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Partner with Cosmetropolis",
                      style: GoogleFonts.quattrocento(
                        color: kWhite,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "• Be your own boss",
                      style: GoogleFonts.urbanist(
                        color: kWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "• Sign up as a beautician",
                      style: GoogleFonts.urbanist(
                        color: kWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "• and start earning",
                      style: GoogleFonts.urbanist(
                        color: kWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "• Sign up as a beautician",
                      style: GoogleFonts.urbanist(
                        color: kWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "• and start earning",
                      style: GoogleFonts.urbanist(
                        color: kWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AvatarStack(
                      height: 40.sp,
                      width: 200.sp,
                      infoWidgetBuilder: (surplus) => CircleAvatar(
                        backgroundColor: kBlue,
                        child: Text(
                          '+$surplus',
                          style: const TextStyle(
                            color: kWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      avatars: [
                        for (var n = 0; n < 18; n++)
                          const NetworkImage(
                            'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=612x612&w=0&k=20&c=eU56mZTN4ZXYDJ2SR2DFcQahxEnIl3CiqpP3SOQVbbI=',
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 20.h,
                ),
                height: 500.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Please enter your name as it appears on your ID.",
                      style: GoogleFonts.urbanist(
                        color: kBlack,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
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
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: kWhite,
                        floatingLabelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        labelText: "Enter your first Name",
                        hintText: "Enter your first Name",
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your first Name';
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
                        labelText: "Enter your Email",
                        hintText: "Enter your Email",
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your Email';
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
                        labelText: "Enter password",
                        hintText: "Enter password",
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // TextFormField(
                    //   controller: phoneController,
                    //   style: GoogleFonts.urbanist(
                    //     color: kBlack,
                    //     fontSize: 15.sp,
                    //     fontWeight: FontWeight.w500,
                    //   ),
                    //   keyboardType: TextInputType.phone,
                    //   decoration: InputDecoration(
                    //     filled: true,
                    //     fillColor: kWhite,
                    //     floatingLabelStyle: const TextStyle(
                    //       color: Colors.black,
                    //     ),
                    //     focusedBorder: const OutlineInputBorder(),
                    //     border: const OutlineInputBorder(),
                    //     enabledBorder: const OutlineInputBorder(),
                    //     labelText: "Phone Number",
                    //     hintText: "Enter your phone number",
                    //     prefixIcon: InkWell(
                    //       onTap: () {
                    //         _showCountryPicker();
                    //       },
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(
                    //           left: 10,
                    //           right: 5,
                    //         ),
                    //         child: SizedBox(
                    //           width: 65,
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Image.asset(
                    //                 selectedCountryFlag,
                    //                 package: countryCodePackageName,
                    //                 width: 35,
                    //                 height: 30,
                    //                 fit: BoxFit.fill,
                    //               ),
                    //               const Icon(
                    //                 Icons.arrow_drop_down,
                    //                 color: Colors.black,
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),

                    //   // The validator receives the text that the user has entered.
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'Please enter your phone number';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
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
                    Text(
                      "This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service apply.",
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        color: kdescription,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          isLoading = true;
                          setState(() {});
                          await _viewModel.registerBeautician(
                            BeauticianRegisterRequestModel(
                              email: emailController.text,
                              password: passwordController.text,
                              // phone: phoneController.text,
                              role: "beautician",
                              name: nameController.text,
                            ),
                            context,
                          );
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
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: kWhite,
                                ),
                              )
                            : Text(
                                "Get Started",
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
                    Align(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                              ),
                            ),
                            TextSpan(
                              text: "Login",
                              style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                                color: kBlue,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.go("/beauticianLogin");
                                },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container mobileview(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: image1,
          fit: MediaQuery.of(context).size.width > 980
              ? BoxFit.fill
              : BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Partner with Cosmetropolis",
                    style: GoogleFonts.quattrocento(
                      color: kWhite,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "• Be your own boss",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "• Sign up as a beautician",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "• and start earning",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "• Sign up as a beautician",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "• and start earning",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AvatarStack(
                    height: 40.sp,
                    width: 200.sp,
                    infoWidgetBuilder: (surplus) => CircleAvatar(
                      backgroundColor: kBlue,
                      child: Text(
                        '+$surplus',
                        style: const TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    avatars: [
                      for (var n = 0; n < 18; n++)
                        const NetworkImage(
                          'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=612x612&w=0&k=20&c=eU56mZTN4ZXYDJ2SR2DFcQahxEnIl3CiqpP3SOQVbbI=',
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 20.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Please enter your name as it appears on your ID.",
                    style: GoogleFonts.urbanist(
                      color: kBlack,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    controller: nameController,
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
                      labelText: "Enter your  Name",
                      hintText: "Enter your  Name",
                    ),

                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your  Name';
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
                      fontSize: 18.sp,
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
                      labelText: "Enter your Email",
                      hintText: "Enter your Email",
                    ),

                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email address';
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
                      fontSize: 18.sp,
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
                      labelText: "Enter Password",
                      hintText: "Enter password",
                    ),

                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your password';
                      }
                      return null;
                    },
                  ),
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  // TextFormField(
                  //   controller: phoneController,
                  //   keyboardType: TextInputType.phone,
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: kWhite,
                  //     floatingLabelStyle: const TextStyle(
                  //       color: Colors.black,
                  //     ),
                  //     focusedBorder: const OutlineInputBorder(),
                  //     border: const OutlineInputBorder(),
                  //     enabledBorder: const OutlineInputBorder(),
                  //     labelText: "Phone Number",
                  //     hintText: "Enter your phone number",
                  //     prefixIcon: InkWell(
                  //       onTap: () {
                  //         _showCountryPicker();
                  //       },
                  //       child: Padding(
                  //         padding: const EdgeInsets.only(
                  //           left: 10,
                  //           right: 5,
                  //         ),
                  //         child: SizedBox(
                  //           width: 65,
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Image.asset(
                  //                 selectedCountryFlag,
                  //                 package: countryCodePackageName,
                  //                 width: 35,
                  //                 height: 30,
                  //                 fit: BoxFit.fill,
                  //               ),
                  //               const Icon(
                  //                 Icons.arrow_drop_down,
                  //                 color: Colors.black,
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),

                  //   // The validator receives the text that the user has entered.
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Please enter your phone number';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        isLoading = true;
                        setState(() {});
                        await _viewModel.registerBeautician(
                          BeauticianRegisterRequestModel(
                            email: emailController.text,
                            password: passwordController.text,
                            // phone: phoneController.text,
                            role: "beautician",
                            name: nameController.text,
                          ),
                          context,
                        );
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
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: kWhite,
                              ),
                            )
                          : Text(
                              "Get Started",
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
                  Align(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                            ),
                          ),
                          TextSpan(
                            text: "Login",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              color: kBlue,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.go("/beauticianLogin");
                              },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
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
