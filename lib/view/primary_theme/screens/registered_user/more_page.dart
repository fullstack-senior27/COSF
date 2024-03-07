import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_edit.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_tabs.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_section1.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/registered_user_dialogs.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
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
    'assets/icons/edit_profile.webp',
    'assets/icons/plan_and_bill.webp',
    'assets/icons/front_desk.webp',
    'assets/icons/login_and_security.webp',
    'assets/icons/notification_settings.webp',
    'assets/icons/email_marketing.webp',
    'assets/icons/online_booking_Profile.webp',
    'assets/icons/promotions.webp',
    'assets/icons/payments.webp',
    'assets/icons/cosmetropolis_blog.webp',
    'assets/icons/instagram_book_button.webp',
    'assets/icons/help_center.webp',
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
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
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
                                          context.pop();
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
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          backgroundColor: kselected,
                          content: EmailMarketing(),
                        ),
                      );
                    } else if (index == 6) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Online Booking & Profile",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                    color: kGrey,
                                  ),
                                  onPressed: () {
                                    context.pop();
                                  },
                                ),
                              ],
                            ),
                            backgroundColor: const Color(0xfff8f8f8),
                            content: SingleChildScrollView(
                              child: SizedBox(
                                width: MediaQuery.of(
                                          context,
                                        ).size.width >
                                        900
                                    ? 400
                                    : MediaQuery.of(
                                          context,
                                        ).size.width *
                                        0.8,
                                child: const OnlineBookingProfile(),
                              ),
                            ),
                          );
                        },
                      );
                    } else if (index == 7) {
                      ref.read(styleProvider).setSelectedPage("Promotions");
                    } else if (index == 8) {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          content: PaymentNoShowProtection(),
                        ),
                      );
                    } else if (index == 9) {
                      // Get.to(() => const BlogPage());
                      context.go('/blogs');
                    } else if (index == 10) {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(),
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => const PromoteSection1(),
                      );
                    } else {
                      context.go('/help');
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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
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
          leading: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              iconUrl,
              height: 25.h,
              width: 25.w,
            ),
          ),
          title: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              cardName,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          subtitle: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              cardDescription,
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
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
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Plan & Billing Details",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
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
                fontSize: 16.sp,
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
                fontSize: 16.sp,
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
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Login & Security",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
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
                context.pop();
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
                context.pop();
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
                        context.pop();
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
                        context.pop();
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
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Notification Settings",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
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

//! Email Marketing =============>
class EmailMarketing extends StatefulWidget {
  const EmailMarketing({super.key});

  @override
  State<EmailMarketing> createState() => _EmailMarketingState();
}

class _EmailMarketingState extends State<EmailMarketing> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 700
          ? 200.w
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
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Email Marketing",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
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
            EasyStepper(
              defaultStepBorderType: BorderType.normal,
              // lineType: LineType.normal,
              activeStep: activeStep,
              // lineLength: 80,
              stepRadius: 20,
              unreachedStepIconColor: kBlack,
              unreachedStepBorderColor: kBlack,
              unreachedStepTextColor: kBlack,
              finishedStepTextColor: kblueColor,
              activeStepTextColor: kblueColor,
              activeStepBorderColor: kblueColor,
              activeStepIconColor: kWhite,
              activeStepBackgroundColor: kblueColor,
              // finishedLineColor: kblueColor,
              finishedStepBackgroundColor: kblueColor,
              // unreachedLineColor: kBlack,
              unreachedStepBorderType: BorderType.dotted,
              showLoadingAnimation: false,
              steps: const [
                EasyStep(
                  icon: Icon(Icons.my_location),
                  title: 'Create',
                ),
                EasyStep(
                  icon: Icon(CupertinoIcons.person_2_alt),
                  title: 'Recipients',
                ),
                EasyStep(
                  icon: Icon(Icons.edit_note),
                  title: 'Compose',
                ),
                EasyStep(
                  icon: Icon(CupertinoIcons.perspective),
                  title: 'Preview',
                ),
              ],
              onStepReached: (index) => setState(() => activeStep = index),
            ),
            SizedBox(
              height: 20.h,
            ),
            if (activeStep == 0)
              const EmailCreate()
            else
              activeStep == 1
                  ? const EmailRecipients()
                  : activeStep == 2
                      ? const EmailCompose()
                      : const EmailPreview(),
          ],
        ),
      ),
    );
  }
}

// ! Email-create =============>

class EmailCreate extends StatefulWidget {
  const EmailCreate({super.key});

  @override
  State<EmailCreate> createState() => _EmailCreateState();
}

class _EmailCreateState extends State<EmailCreate> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "First, choose your template, campaign name, and subject line.",
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Template",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Template",
              hintStyle: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.24,
              ),
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
          Text(
            "Email Name*",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email Name",
              hintStyle: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.24,
              ),
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
          Text(
            "Subject line*",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "See you soon?",
              hintStyle: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.24,
              ),
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
          SizedBox(
            height: 50.h,
            width: double.infinity,
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
                "Continue",
                style: TextStyle(
                  color: kWhite,
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//! Email-Recipients =============>

class EmailRecipients extends StatefulWidget {
  const EmailRecipients({super.key});

  @override
  State<EmailRecipients> createState() => _EmailRecipientsState();
}

class _EmailRecipientsState extends State<EmailRecipients> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Which clients would you like to send this campaign to?.",
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Recipients",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ...List.generate(
            3,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                tileColor: kWhite,
                title: Text(
                  "All Clients",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.24,
                  ),
                ),
                subtitle: Text(
                  "Everyone in your client list with an email address.",
                  style: GoogleFonts.urbanist(
                    fontSize: 10.sp,
                    color: kGrey,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 0.24,
                  ),
                ),
                trailing: Radio(
                  value: index,
                  groupValue: 0,
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 50.h,
            width: double.infinity,
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
                "Continue",
                style: TextStyle(
                  color: kWhite,
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//! Email-Compose =============>

class EmailCompose extends StatefulWidget {
  const EmailCompose({super.key});

  @override
  State<EmailCompose> createState() => _EmailComposeState();
}

class _EmailComposeState extends State<EmailCompose> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          ...List.generate(
            2,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                tileColor: kWhite,
                title: Text(
                  "Headline",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.24,
                  ),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet consectetur.",
                  style: GoogleFonts.urbanist(
                    fontSize: 10.sp,
                    color: kGrey,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 0.24,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    // Get.to(TextEditorPage());
                    context.go('/text-editor');
                  },
                  icon: const Icon(Icons.edit),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//! Email-Preview =============>

class EmailPreview extends StatefulWidget {
  const EmailPreview({super.key});

  @override
  State<EmailPreview> createState() => _EmailPreviewState();
}

class _EmailPreviewState extends State<EmailPreview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Headline",
            style: GoogleFonts.urbanist(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum.",
            style: GoogleFonts.urbanist(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Sending to",
            style: GoogleFonts.urbanist(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.24,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          ...List.generate(
            3,
            (index) => ListTile(
              tileColor: kWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              title: Text(
                "Client Name",
                style: GoogleFonts.urbanist(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.24,
                ),
              ),
              leading: const CircleAvatar(
                backgroundColor: kGrey,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1595152452543-e5fc28ebc2b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8&w=1000&q=80",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 45.h,
            width: double.infinity,
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
                "Send",
                style: TextStyle(
                  color: kWhite,
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//! payment & No-show PROTECTION ==>

class PaymentNoShowProtection extends StatefulWidget {
  const PaymentNoShowProtection({super.key});

  @override
  State<PaymentNoShowProtection> createState() =>
      _PaymentNoShowProtectionState();
}

class _PaymentNoShowProtectionState extends State<PaymentNoShowProtection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 700
            ? 130.w
            : MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Payment & No-Show Protection",
                style: GoogleFonts.urbanist(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Ready to get paid?",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width > 700 ? 0.w : 10.w,
                    bottom: 15.h,
                    top: 10.h,
                  ),
                  child: Text(
                    "Set up your payment account to get paid for your services.  ",
                    style: GoogleFonts.urbanist(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.urbanist(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: kWhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            ...List.generate(
              3,
              (index) => Text(
                "Charge clients from your phone, tablet or desktop",
                style: GoogleFonts.urbanist(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Complete these steps",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Your Bank Account",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.r),
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => AddBankAccount(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kWhite,
                    surfaceTintColor: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      side: const BorderSide(),
                    ),
                  ),
                  child: Text(
                    "  Add  ",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: kBlack,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Verify Your Identity",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.r),
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => VerifyAcount(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kWhite,
                    surfaceTintColor: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      side: const BorderSide(),
                    ),
                  ),
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: kBlack,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Your Mailing Address",
                  style: GoogleFonts.urbanist(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.r),
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return MailingAddress();
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kWhite,
                    surfaceTintColor: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      side: const BorderSide(),
                    ),
                  ),
                  child: Text(
                    "  Add  ",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: kBlack,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBlack,
                  surfaceTintColor: kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    side: const BorderSide(),
                  ),
                ),
                child: Text(
                  "Update",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: kWhite,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView VerifyAcount() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 700 ? 80.w : 20,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (MediaQuery.of(context).size.width > 700)
              Container()
            else
              SizedBox(
                height: 40.h,
              ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Verify Your Identity",
                style: GoogleFonts.urbanist(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Federal law requires we verify your identity to make sure your account is secure.",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            // add textfield for First Name ,Last Name* , phone number , Last 4 Digits of SSN* , DOB
            Text(
              "First Name*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "First Name",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Last Name*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Wick",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Phone number*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "(987) 654 3210",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Last 4 Digits of SSN*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "1234",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Date of Birth*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "--/--/--",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 10.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Do you have an Employer Identification Number?",
                style: GoogleFonts.urbanist(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "This information will be used for verification purposes only. It will not be shared with your clients or displayed on your profile. By updating this form, you agree to our Terms of Service",
              style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBlack,
                  surfaceTintColor: kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    side: const BorderSide(),
                  ),
                ),
                child: Text(
                  "Update",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: kWhite,
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
    );
  }

  SingleChildScrollView AddBankAccount() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 700 ? 80.w : 20,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (MediaQuery.of(context).size.width > 700)
              Container()
            else
              SizedBox(
                height: 40.h,
              ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Where should we send your payouts? Pay booking fee now, this card will be charged at time of service. Learn More",
                style: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Account Holder's Name*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Routing Number*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Account Number*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Re-enter Account Number*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 10.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Business bank account?",
                style: GoogleFonts.urbanist(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBlack,
                  surfaceTintColor: kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    side: const BorderSide(),
                  ),
                ),
                child: Text(
                  "Update",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: kWhite,
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
    );
  }

  SingleChildScrollView MailingAddress() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 700 ? 80.w : 20,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Add your mailing address",
                style: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Street Address*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "e.g South ave 123",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "Routing Number*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "e.g South ave 123",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "City*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "e.g South ave 123",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 15.h,
            ),
            Text(
              "State",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "State",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 10.h,
            ),
            Text(
              "Zip*",
              style: GoogleFonts.urbanist(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Zip",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
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
              height: 10.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBlack,
                  surfaceTintColor: kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    side: const BorderSide(),
                  ),
                ),
                child: Text(
                  "Update",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: kWhite,
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
    );
  }
}
