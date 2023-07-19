import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/help_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_edit.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MorePage extends ConsumerStatefulWidget {
  const MorePage({super.key});

  @override
  ConsumerState<MorePage> createState() => _MorePageState();
}

class _MorePageState extends ConsumerState<MorePage> {
  List<String> cardName = [
    'Edit Profile',
    'Plan & Billing Details',
    'Front Desk',
    'Login & Security',
    'Notification Settings',
    'Email Marketing',
    'Online Booking & Profile',
    'Promotions',
    'Payments & No-Show Protection',
    'Cosmetropolis Blog',
    'Instagram Book Button',
    'Help Center',
  ];
  List<String> cardDes = [
    "View and update your photos, services, prices, and more.",
    "Manage your plan and subscription information here.",
    "Manage your front desk settings and staff access.",
    "View and update your account information.",
    "Manage your personal and client notifications.",
    "Send clients rebooking reminders, updates, new services, special offers.",
    "Allow your clients to see your work, services and book appointments online.",
    "Provide offers and deals that will encourage your clients to visit more often.",
    "Offer clients a seamless checkout experience",
    'Get the latest industry news and pro insights on our blog.',
    "Add a book call-to-action button to your Instagram page.",
    "Learn best practices and practical tips from our dedicated team of experts.",
  ];
  List<String> iconUrl = [
    'assets/icons/more/edit_profile.png',
    'assets/icons/more/plan_and_bill.png',
    'assets/icons/more/front_desk.png',
    'assets/icons/more/login_and_security.png',
    'assets/icons/more/notification_settings.png',
    'assets/icons/more/email_marketing.png',
    'assets/icons/more/online_booking_Profile.png',
    'assets/icons/more/promotions.png',
    'assets/icons/more/payments.png',
    'assets/icons/more/cosmetropolis_blog.png',
    'assets/icons/more/instagram_book_button.png',
    'assets/icons/more/help_center.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: MediaQuery.of(context).size.width < 600 ? 15.h : 60.h,
              ),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: MediaQuery.of(context).size.width > 920
                    ? 3
                    : MediaQuery.of(context).size.width > 430
                        ? 2
                        : 1,
                itemCount: 12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => InkWell(
                  onTap: () {
                    if (index == 0) {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(),
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const ProfileEdit(),
                              ],
                            ),
                          );
                        },
                      );
                    } else if (index == 1) {
                      MediaQuery.of(context).size.width > 920
                          ? showDialog(
                              context: context,
                              builder: (context) =>
                                  const AlertDialog(content: BillPage()),
                            )
                          : showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(),
                              context: context,
                              builder: (context) => const BillPage(),
                            );
                    } else if (index == 2) {
                      Get.to(
                        () => Scaffold(
                          backgroundColor: kselected,
                          appBar: AppBar(),
                          body: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                const ManageAvailability(),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else if (index == 3) {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          backgroundColor: kselected,
                          content: LoginandSecuriry(),
                        ),
                      );
                    } else if (index == 4) {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          backgroundColor: kselected,
                          content: NotificationSetting(),
                        ),
                      );
                    } else if (index == 5) {
                    } else if (index == 6) {
                    } else if (index == 7) {
                      ref.read(styleProvider).setSelectedPage("Promotions");
                    } else if (index == 8) {
                    } else if (index == 9) {
                      Get.to(() => const BlogPage());
                    } else if (index == 10) {
                    } else {
                      Get.to(() => const HelpPage(nav: 1));
                    }
                  },
                  child: MoreCard(
                    cardDescription: cardDes[index],
                    cardName: cardName[index],
                    iconUrl: iconUrl[index],
                  ),
                ),
                staggeredTileBuilder: MediaQuery.of(context).size.width > 920
                    ? (int index) => const StaggeredTile.fit(1)
                    : (int index) => const StaggeredTile.fit(2),
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.w,
              ),
            ),
            SizedBox(height: 20.h),
            const Footer()
          ],
        ),
      ),
    );
  }
}

class MoreCard extends StatelessWidget {
  final String cardName;
  final String iconUrl;
  final String cardDescription;
  const MoreCard({
    super.key,
    required this.cardName,
    required this.iconUrl,
    required this.cardDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        border: Border.all(
          color: kdisable,
          width: 0.3.w,
        ),
      ),
      child: ListTile(
        contentPadding: MediaQuery.of(context).size.width > 700
            ? EdgeInsets.only(right: 5.w)
            : EdgeInsets.only(right: 8.w, left: 8.w),
        leading: Image.asset(
          iconUrl,
          height: 25.h,
          width: 25.w,
        ),
        title: Text(
          cardName,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          cardDescription,
          style: GoogleFonts.urbanist(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

//! Bill Page =============>
class BillPage extends StatefulWidget {
  const BillPage({super.key});

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Plan & Billing Details",
                  style: GoogleFonts.urbanist(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  "\$35 / mo",
                  style: GoogleFonts.urbanist(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    color: kblueColor,
                  ),
                ),
                const Spacer(),
                Text(
                  "Current Plan",
                  style: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlack,
                  ),
                ),
                Radio(
                  value: 't',
                  groupValue: const ['t', 'n'],
                  onChanged: (value) {},
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Scheduling Plan",
              style: GoogleFonts.urbanist(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: kBlack,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Your business, your way. Customize how you want to use Cosmetropolis.",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBlack,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              " Take payments however you want",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              " Low 2.75% credit card rate",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Access to all Cosmetropolis features (including New Client Delivery & Smart Pricing) with choice to opt-out",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Payment Details",
              style: GoogleFonts.urbanist(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: kBlack,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              decoration: const BoxDecoration(color: Color(0xFFE0F3FD)),
              width: double.infinity,
              height: 24.h,
              child: Row(
                children: const [
                  Text(
                    '  Your trial subscription ends May 10th, 2023',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 12,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Your account will be billed \$35.00 on May 10th, 2023*',
              style: TextStyle(
                color: const Color(0xFF202020),
                fontSize: 12.sp,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.16,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  'No Card On File',
                  style: TextStyle(
                    color: const Color(0xFF202020),
                    fontSize: 12.sp,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.16,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      side: const BorderSide(),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add Card",
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 12.sp,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    side: const BorderSide(),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Subscribe",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 12.sp,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Want exposure to new clients and are open to charging clients through the app?',
              style: TextStyle(
                color: const Color(0xFF202020),
                fontSize: 12.sp,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.16,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width > 700
                  ? 250.w
                  : MediaQuery.of(context).size.width,
              child: Text(
                '*Your first billing date will be 30 days after your trial begins. Your subscription will automatically be renewed every 30 days. To cancel your subscription during the trial, contact us 24 hours before the end of your trial period.',
                style: TextStyle(
                  color: const Color(0xFF202020),
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//! Login and security =============>

class LoginandSecuriry extends StatefulWidget {
  const LoginandSecuriry({super.key});

  @override
  State<LoginandSecuriry> createState() => _LoginandSecuriryState();
}

class _LoginandSecuriryState extends State<LoginandSecuriry> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 700
          ? 130.w
          : MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Login & Security",
                  style: GoogleFonts.urbanist(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                Get.back();
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    backgroundColor: kselected,
                    content: ChangePassword(
                      titte: "Email",
                    ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                color: kWhite,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Row(
                  children: [
                    Text(
                      "Change Email",
                      style: urbanist400(kGrey, 16),
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
                Get.back();
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    backgroundColor: kselected,
                    content: ChangePassword(
                      titte: "Password",
                    ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                color: kWhite,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Row(
                  children: [
                    Text(
                      "Change Password",
                      style: urbanist400(kGrey, 16),
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
      ),
    );
  }
}

class ChangePassword extends StatefulWidget {
  final String titte;
  const ChangePassword({super.key, required this.titte});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: MediaQuery.of(context).size.width > 700
          ? 130.w
          : MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // add textformfield here
            SizedBox(
              height: 20.h,
            ),
            Text(
              widget.titte,
              style: urbanist400(kBlack, 16),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: widget.titte,
                hintStyle: urbanist400(kGrey, 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
              ),
            ),

            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kBlack,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          side: const BorderSide(),
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 12.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          side: const BorderSide(),
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 12.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//! notification settings =============>
class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 700
          ? 130.w
          : MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Notification Settings",
                  style: GoogleFonts.urbanist(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: kWhite,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Row(
                  children: [
                    Text(
                      "My Notifications",
                      style: urbanist400(kGrey, 14),
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
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: kWhite,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Row(
                  children: [
                    Text(
                      "Notification My Clients Receive",
                      style: urbanist400(kGrey, 14),
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
      ),
    );
  }
}



//! online booking and profile =============>