import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/navigation/navigation_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/pricing_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/edit_profile_dialog.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/tables.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends ConsumerStatefulWidget {
  const EditProfile({super.key});

  @override
  ConsumerState<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends ConsumerState<EditProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: Column(
          children: [
            if (TargetPlatform.android == defaultTargetPlatform)
              SizedBox(
                height: 35.h,
              )
            else
              SizedBox(
                height: 0.h,
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 10.h),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Image.asset(
                    "assets/icons/logo_big.webp",
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: 50.h,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  if (MediaQuery.of(context).size.width > 650)
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            ref.watch(styleProvider).setSelectedPage("Help");
                            // Get.offAll(() =>  DashboardFreePage());
                          },
                          child: Text(
                            'Help',
                            style: urbanist400(kdescription, 16),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            showMenu(
                              surfaceTintColor: kWhite,
                              context: context,
                              position: MediaQuery.of(context).size.width > 700
                                  ? RelativeRect.fromLTRB(90.w, 62.h, 50.w, 0)
                                  : RelativeRect.fromLTRB(52.w, 62.h, 50.w, 0),
                              items: [
                                const PopupMenuItem<String>(
                                  value: 'My Account',
                                  child: Text('My Account'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Beauty Blog',
                                  child: Text('Beauty Blog'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'I am a Beautician',
                                  child: Text('I am a Beautician'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Log Out',
                                  child: Text('Log Out'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                switch (value) {
                                  case 'My Account':
                                    break;
                                  case 'Beauty Blog':
                                    Get.to(() => const BlogPage());
                                    break;
                                  case 'I am a Beautician':
                                    ref
                                        .watch(styleProvider)
                                        .setSelectedPage(value);
                                    //  Get.to(() => const DashboardFreePage());

                                    break;
                                  default:
                                }
                              }
                            });
                          },
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundImage: const NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8&pid=Api&P=0&h=180',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        SizedBox(
                          // width: 50.w,
                          height: 35.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            onPressed: () {
                              // Get.to(() => const PricingDetails());
                              context.go("/pricing");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  const AssetImage("assets/icons/gift.webp"),
                                  color: kWhite,
                                  size: 20.sp,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Get \$50 ",
                                  style: GoogleFonts.urbanist(
                                    color: kWhite,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showMenu(
                              surfaceTintColor: kWhite,
                              context: context,
                              position: MediaQuery.of(context).size.width > 700
                                  ? RelativeRect.fromLTRB(90.w, 62.h, 50.w, 0)
                                  : RelativeRect.fromLTRB(60.w, 95.h, 25.w, 0),
                              items: [
                                const PopupMenuItem<String>(
                                  value: 'My Account',
                                  child: Text('My Account'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Beauty Blog',
                                  child: Text('Beauty Blog'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'I am a Beautician',
                                  child: Text('I am a Beautician'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Help',
                                  child: Text('Help'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Log Out',
                                  child: Text('Log Out'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                switch (value) {
                                  case 'My Account':
                                    break;
                                  case 'Beauty Blog':
                                    // Get.to(() => const BlogPage());
                                    context.go('/blogs');
                                    break;
                                  case 'I am a Beautician':
                                    ref
                                        .watch(styleProvider)
                                        .setSelectedPage(value);
                                    Get.off(() => const NavigationPage());

                                    break;
                                  case 'Help': // Help
                                    ref
                                        .watch(styleProvider)
                                        .setSelectedPage(value);
                                    Get.off(() => const NavigationPage());
                                    break;
                                  case 'Log Out': // Log Out
                                    ref
                                        .watch(styleProvider)
                                        .setSelectedPage('Sign In');
                                    Get.off(() => const NavigationPage());

                                    break;
                                  default:
                                }
                              }
                            });
                          },
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundImage: const NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8&pid=Api&P=0&h=180',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width > 660
                                ? 220.h
                                : 140.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://i.imgur.com/cmEfJ7e.webp",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width > 300
                                ? 90.h
                                : 70.h,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 15,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: kWhite, // Set the color of the border
                                  width: 5.0, // Set the width of the border
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundImage: const NetworkImage(
                                  "https://i.imgur.com/YITuclG.pngs",
                                ), // Set the image for the circle avatar
                                radius: 50
                                    .r, // Adjust the radius to control the size of the avatar
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "John Wick",
                                  style: urbanist600(kBlack, 20),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "John@gmail.com",
                                  style: urbanist400(kGrey, 12),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Change Password",
                                                style: GoogleFonts.urbanist(
                                                  color: kBlack,
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: kGrey,
                                                ),
                                              )
                                            ],
                                          ),
                                          backgroundColor:
                                              const Color(0xfff8f8f8),
                                          content: const SingleChildScrollView(
                                            child: ChangePasswordDialog(),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.lock,
                                        color: kBlack,
                                        size: 16.sp,
                                      ),
                                      // SizedBox(
                                      //   width: 2.w,
                                      // ),
                                      Text(
                                        "Change Password",
                                        style: urbanist500(kBlack, 14).copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            if (MediaQuery.of(context).size.width > 660)
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // width: double.infinity,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.r),
                                      border: Border.all(color: kBlue),
                                    ),
                                    child: TextButton.icon(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Edit Your Profile",
                                                    style: GoogleFonts.urbanist(
                                                      color: kBlack,
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      Get.back();
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: kGrey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              backgroundColor:
                                                  const Color(0xfff8f8f8),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                horizontal: 0.w,
                                              ),
                                              content:
                                                  const SingleChildScrollView(
                                                child: EditProfileDialog(),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      icon: Icon(
                                        Icons.edit_note_outlined,
                                        color: kBlue,
                                        size: 15.sp,
                                      ),
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                        ),
                                        backgroundColor: kWhite,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                      ),
                                      label: Text(
                                        "Edit Profile",
                                        style: urbanist600(kBlue, 12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                    child: TextButton.icon(
                                      onPressed: () {
                                        //  Get.offAll(const DashboardFreePage());
                                        ref
                                            .watch(styleProvider)
                                            .setSelectedPage(
                                              "Sign In",
                                            );
                                      },
                                      icon: Icon(
                                        Icons.logout,
                                        color: kWhite,
                                        size: 15.sp,
                                      ),
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                        ),
                                        backgroundColor: kBlue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                      ),
                                      label: Text(
                                        "Log Out",
                                        style: urbanist600(kWhite, 12),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            else
                              Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  if (MediaQuery.of(context).size.width < 661)
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // width: double.infinity,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              border: Border.all(color: kBlue),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // show bottom sheet
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      color: Colors.transparent,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            // add icon to the top
                                            SizedBox(height: 40.h),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: kWhite,
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.r),
                                                  topRight:
                                                      Radius.circular(20.r),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 20.w,
                                                  vertical: 20.h,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Edit Your Profile",
                                                          style: GoogleFonts
                                                              .urbanist(
                                                            color: kBlack,
                                                            fontSize: 18.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),

                                                        // add close icon
                                                        const Spacer(),
                                                        IconButton(
                                                          onPressed: () {
                                                            Get.back();
                                                          },
                                                          icon: const Icon(
                                                            Icons.close,
                                                            color: kGrey,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    const EditProfileDialog(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.edit_note_outlined,
                                    color: kBlue,
                                  ),
                                  Text(
                                    "Edit Profile",
                                    style: urbanist600(kBlue, 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40.h,
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.logout,
                                color: kWhite,
                                size: 15.sp,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: kBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                              ),
                              label: Text(
                                "Log Out",
                                style: urbanist600(kWhite, 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    Container(),
                  SizedBox(
                    height: 40.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      dividerColor: kGrey.withOpacity(0.5),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: _tabcontroller,
                      indicatorColor: kBlack,
                      labelColor: kBlack,
                      unselectedLabelColor: kGrey,
                      labelStyle: urbanist600(kBlack, 12),
                      unselectedLabelStyle: urbanist400(kGrey, 12),
                      tabs: const [
                        Tab(text: 'My Appointment'),
                        Tab(text: 'Term & Conditions'),
                        Tab(text: 'Privacy Policy'),
                        Tab(text: 'Payment Method'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width >= 400
                        ? 420.h
                        : 470.h,
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabcontroller,
                      children: [
                        if (MediaQuery.of(context).size.width > 450)
                          const EarningsTable()
                        else
                          ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 4,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 7.h),
                                child: Container(
                                  // height: 160.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: kselected,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.w,
                                        ),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20.r,
                                              backgroundImage:
                                                  const NetworkImage(
                                                "https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=180",
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Akeba Thomson",
                                                  style: urbanist500(
                                                    kBlack,
                                                    14,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                                Image.asset(
                                                  "assets/icons/verify.webp",
                                                  height: 15.h,
                                                  width: 15.w,
                                                )
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 10.h,
                                              width: 10.w,
                                              decoration: const BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              "Pending",
                                              style: urbanist600(
                                                Colors.red,
                                                10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.w,
                                        ),
                                        child: Text(
                                          "Services",
                                          style: urbanist500(kBlack, 14),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.w,
                                        ),
                                        child: Text(
                                          "Services hair cut, hair color, shawing",
                                          style: urbanist400(kBlack, 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.w,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "20-04-2023",
                                              style: urbanist500(
                                                kBlack,
                                                14,
                                              ),
                                            ),
                                            Text(
                                              "\$120.00",
                                              style: urbanist500(
                                                kBlack,
                                                14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 7.w,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "12:30 PM",
                                              style: urbanist400(
                                                kdescription,
                                                10,
                                              ),
                                            ),
                                            Text(
                                              "Paid",
                                              style: urbanist400(
                                                kdescription,
                                                10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Terms & Conditions",
                                style: urbanist600(kBlack, 18),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\n\nVestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis.\n Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Risus at ultrices mi tempus imperdiet nulla. Mauris rhoncus aenean vel elit. Aliquet eget sit amet tellus. Consequat mauris nunc congue nisi vitae suscipit tellus. Tortor posuere ac ut consequat semper viverra nam. Mattis rhoncus urna neque viverra justo nec ultrices.",
                                style: urbanist400(kdescription, 14),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                style: urbanist400(kdescription, 14),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Privacy Policy",
                                style: urbanist600(kBlack, 18),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\nTurpis in eu mi bibendum neque. Nisl suscipit adipiscing bibendum est. Pellentesque habitant morbi tristique senectus. Velit scelerisque in dictum non consectetur a erat. Nisl rhoncus mattis rhoncus urna. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. \n\nScelerisque purus semper eget duis at tellus at urna. Lorem sed risus ultricies tristique nulla aliquet. Ultricies integer quis auctor elit sed. Est placerat in egestas erat. Nulla pharetra diam sit amet nisl suscipit adipiscing. Eu ultrices vitae auctor eu augue ut lectus arcu. Cursus turpis massa tincidunt dui ut ornare lectus sit. Ut eu sem integer vitae. Eget est lorem ipsum dolor sit amet consectetur.Faucibus pulvinar elementum integer enim neque. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Ipsum consequat nisl vel pretium lectus quam id leo in. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Nulla facilisi cras fermentum odio eu feugiat pretium. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Felis eget nunc lobortis mattis aliquam faucibus purus. Duis at tellus at urna. ",
                                style: urbanist400(kdescription, 14),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Choose Card",
                                style: urbanist600(kBlack, 18),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Card(
                                      color: kWhite,
                                      surfaceTintColor: kWhite,
                                      elevation: 5,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.w,
                                          vertical: 20.h,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Saved Cards",
                                              style: urbanist600(kBlack, 18),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            ...List.generate(
                                              3,
                                              (index) => Padding(
                                                padding: EdgeInsets.only(
                                                  top: 10.h,
                                                ),
                                                child: ListTile(
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                      color: klines,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                  ),
                                                  tileColor: kWhite,
                                                  leading: Radio(
                                                    focusColor: kBlack,
                                                    value: index,
                                                    groupValue: 1,
                                                    onChanged: (value) {},
                                                  ),
                                                  title: Row(
                                                    children: [
                                                      Image.network(
                                                        'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                                                        // width: 60.w,
                                                        height: 30.h,
                                                      ),
                                                      SizedBox(width: 5.w),
                                                      Expanded(
                                                        child: Text(
                                                          '**** **** **** 3947',
                                                          style: TextStyle(
                                                            color: kBlack,
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  trailing: TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Delete',
                                                      style:
                                                          GoogleFonts.urbanist(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: MediaQuery.of(context).size.width >
                                        1000,
                                    child: SizedBox(
                                      width: 10.w,
                                    ),
                                  ),
                                  Visibility(
                                    visible: MediaQuery.of(context).size.width >
                                        1200,
                                    child: Expanded(
                                      flex: 3,
                                      child: Card(
                                        surfaceTintColor: kWhite,
                                        color: kWhite,
                                        elevation: 5,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15.w,
                                            vertical: 20.h,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Add New Card",
                                                style: urbanist600(kBlack, 18),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              ListTile(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                    color: klines,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    7.r,
                                                  ),
                                                ),
                                                tileColor: kWhite,
                                                leading: Radio(
                                                  focusColor: kBlack,
                                                  value: -1,
                                                  groupValue: 0,
                                                  onChanged: (value) {},
                                                ),
                                                title: Row(
                                                  children: [
                                                    const Text('Credit Card'),
                                                    SizedBox(width: 5.w),
                                                    Image.network(
                                                      'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                                                      // width: 60.w,
                                                      height: 30.h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "Card Number",
                                                        hintStyle: urbanist400(
                                                          kdescription,
                                                          14,
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5.w),
                                                  Expanded(
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "MM/YY",
                                                        hintStyle: urbanist400(
                                                          kdescription,
                                                          14,
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5.w),
                                                  Expanded(
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "CVV",
                                                        hintStyle: urbanist400(
                                                          kdescription,
                                                          14,
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 25.h),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: kBlack,
                                                  minimumSize: Size(
                                                    double.infinity,
                                                    50.h,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Add New Card",
                                                  style:
                                                      urbanist600(kWhite, 16),
                                                ),
                                              ),
                                              SizedBox(height: 20.h),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Visibility(
                                visible:
                                    MediaQuery.of(context).size.width <= 1200,
                                child: Card(
                                  surfaceTintColor: kWhite,
                                  color: kWhite,
                                  elevation: 5,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15.w,
                                      vertical: 20.h,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Add New Card",
                                          style: urbanist600(kBlack, 18),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        ListTile(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              color: klines,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(7.r),
                                          ),
                                          tileColor: kWhite,
                                          leading: Radio(
                                            focusColor: kBlack,
                                            value: -1,
                                            groupValue: 0,
                                            onChanged: (value) {},
                                          ),
                                          title: Row(
                                            children: [
                                              const Text('Credit Card'),
                                              SizedBox(width: 5.w),
                                              Image.network(
                                                'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                                                // width: 60.w,
                                                height: 30.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText: "Card Number",
                                                  hintStyle: urbanist400(
                                                    kdescription,
                                                    14,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText: "MM/YY",
                                                  hintStyle: urbanist400(
                                                    kdescription,
                                                    14,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText: "CVV",
                                                  hintStyle: urbanist400(
                                                    kdescription,
                                                    14,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: klines,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25.h),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: kBlack,
                                            minimumSize:
                                                Size(double.infinity, 50.h),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                7.r,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Add New Card",
                                            style: urbanist600(kWhite, 16),
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
