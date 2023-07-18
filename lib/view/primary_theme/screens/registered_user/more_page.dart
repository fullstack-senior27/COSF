import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
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
                itemBuilder: (BuildContext context, int index) => MoreCard(
                  cardDescription: cardDes[index],
                  cardName: cardName[index],
                  iconUrl: iconUrl[index],
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
