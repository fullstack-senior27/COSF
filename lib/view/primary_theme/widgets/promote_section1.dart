import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/promote_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PromoteSection1 extends StatelessWidget {
  const PromoteSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 20.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffFEF9ED),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: kBlack,
                              size: 10.sp,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "Social Media",
                            style: urbanist400(kBlack, 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Drive client bookings on social media",
                        style: urbanist600(kBlack, 20),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        child: Text(
                          "Assets and tools to create performing posts & increase your online bookings",
                          style: urbanist500(kBlack, 13),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  color: kselected,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Custom marketing images",
                        style: urbanist600(kBlack, 16),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Assets to share on all of your social media channels.",
                        style: urbanist400(kBlack, 12),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width > 680 ? 4 : 2,
                          crossAxisSpacing: 7.w,
                          childAspectRatio: 1 / 1.2,
                          mainAxisSpacing: 10.h,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 1 / 1.2,
                                child: Container(
                                  // height: 200.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/icons/template${index + 1}.webp",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            color: kWhite,
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.download_rounded,
                                                    color: kBlue,
                                                    size: 10.sp,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Download template",
                                                    style: urbanist600(
                                                      kBlue,
                                                      13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset(
                        "assets/icons/insta_color.webp",
                        height: 60.h,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Instagram",
                        style: urbanist600(kBlack, 18),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Instagram is the top driver of traffic to your booking page - here are tools to help maximize your bookings",
                        style: urbanist400(kBlack, 12),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Post script",
                                  style: urbanist600(kBlack, 16),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Use this copy to optimize all your posts including your link and hashtags",
                                  style: urbanist400(kBlack, 12),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width > 680
                                      ? double.infinity
                                      : MediaQuery.of(context).size.width * 0.6,
                                  child: const CopyField(),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Managing your DMs",
                                  style: urbanist600(kBlack, 16),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "If your clients are sending you too many DMs, have a quick pre-written response you can send to all the clients that DM you",
                                  style: urbanist400(kBlack, 12),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width > 680
                                      ? double.infinity
                                      : MediaQuery.of(context).size.width * 0.6,
                                  child: const CopyField(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 680,
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Optimize your bio",
                                    style: urbanist600(kBlack, 16),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Give potential clients clear booking instructions in your bio.",
                                    style: urbanist400(kBlack, 12),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  const CopyField(),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Add your book button",
                                    style: urbanist600(kBlack, 16),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "A business profile is required before you can add your Book button",
                                    style: urbanist400(kBlack, 12),
                                  ),
                                  Text(
                                    "• Open your Instagram profile",
                                    style: urbanist500(kBlack, 14),
                                  ),
                                  Text(
                                    "• Tap Edit Profile",
                                    style: urbanist500(kBlack, 14),
                                  ),
                                  Text(
                                    "• Tap Contact Options",
                                    style: urbanist500(kBlack, 14),
                                  ),
                                  Text(
                                    "• Select Add an action button",
                                    style: urbanist500(kBlack, 14),
                                  ),
                                  Text(
                                    "• Select Cosmetropolis",
                                    style: urbanist500(kBlack, 14),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  const BlackButtonSmall(
                                    text: "Open Instagram",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width > 680,
                            child: const Expanded(child: HelpfulBlogsSection()),
                          )
                        ],
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width < 681,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Optimize your bio",
                              style: urbanist600(kBlack, 16),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Give potential clients clear booking instructions in your bio.",
                              style: urbanist400(kBlack, 12),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: const CopyField(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Add your book button",
                              style: urbanist600(kBlack, 16),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "A business profile is required before you can add your Book button",
                              style: urbanist400(kBlack, 12),
                            ),
                            Text(
                              "• Open your Instagram profile",
                              style: urbanist500(kBlack, 14),
                            ),
                            Text(
                              "• Tap Edit Profile",
                              style: urbanist500(kBlack, 14),
                            ),
                            Text(
                              "• Tap Contact Options",
                              style: urbanist500(kBlack, 14),
                            ),
                            Text(
                              "• Select Add an action button",
                              style: urbanist500(kBlack, 14),
                            ),
                            Text(
                              "• Select Cosmetropolis",
                              style: urbanist500(kBlack, 14),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: const BlackButtonSmall(
                                text: "Open Instagram",
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const HelpfulBlogsSection()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Divider(
                        color: klines,
                      ),
                    ],
                  ),
                ),
                // //Facebook section>>>>>>>>>>>>>>>>>>>>>>>>>>>
                Align(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset("assets/icons/fb_color.webp", height: 60.h),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Facebook",
                        style: urbanist600(kBlack, 18),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Our pros use Facebook to send thousands of potential clients to their booking page, and you should be doing the same. Here's how to get started",
                        style: urbanist400(kBlack, 12),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Post script",
                                  style: urbanist600(kBlack, 16),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Use this copy to optimize all your posts including your link and hashtags",
                                  style: urbanist400(kBlack, 12),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const CopyField(),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Managing your DMs",
                                  style: urbanist600(kBlack, 16),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "If your clients are sending you too many DMs, have a quick pre-written response you can send to all the clients that DM you",
                                  style: urbanist400(kBlack, 12),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const CopyField(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Add your book button",
                                  style: urbanist600(kBlack, 16),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Create a Facebook business page",
                                  style: urbanist400(kBlack, 12),
                                ),
                                Text(
                                  "• Once you have created your business page, go to your cover photo and click + Add a button",
                                  style: urbanist500(kBlack, 14),
                                ),
                                Text(
                                  "• Choose Book Now and enter the link to your booking page",
                                  style: urbanist500(kBlack, 14),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const BlackButtonSmall(
                                  text: "Open Facebook",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Expanded(child: HelpfulBlogsSection())
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Divider(
                        color: klines,
                      ),
                    ],
                  ),
                ),
                // Visibility(
                //   visible: MediaQuery.of(context).size.width > 680,
                //   child: Column(
                //     children: [
                //       SizedBox(
                //         height: 20.h,
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             "Post script",
                //             style: urbanist600(kBlack, 16),
                //           ),
                //           SizedBox(
                //             height: 5.h,
                //           ),
                //           Text(
                //             "Use this copy to optimize all your posts including your link and hashtags",
                //             style: urbanist400(kBlack, 12),
                //           ),
                //           SizedBox(
                //             height: 10.h,
                //           ),
                //           const CopyField(),
                //           SizedBox(
                //             height: 20.h,
                //           ),
                //           Text(
                //             "Managing your DMs",
                //             style: urbanist600(kBlack, 16),
                //           ),
                //           SizedBox(
                //             height: 5.h,
                //           ),
                //           Text(
                //             "If your clients are sending you too many DMs, have a quick pre-written response you can send to all the clients that DM you",
                //             style: urbanist400(kBlack, 12),
                //           ),
                //           SizedBox(
                //             height: 10.h,
                //           ),
                //           const CopyField(),
                //         ],
                //       ),
                //       SizedBox(
                //         width: 10.w,
                //       ),
                //       Expanded(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "Add your book button",
                //               style: urbanist600(kBlack, 16),
                //             ),
                //             SizedBox(
                //               height: 5.h,
                //             ),
                //             Text(
                //               "Create a Facebook business page",
                //               style: urbanist400(kBlack, 12),
                //             ),
                //             Text(
                //               "• Once you have created your business page, go to your cover photo and click + Add a button",
                //               style: urbanist500(kBlack, 14),
                //             ),
                //             Text(
                //               "• Choose Book Now and enter the link to your booking page",
                //               style: urbanist500(kBlack, 14),
                //             ),
                //             SizedBox(
                //               height: 10.h,
                //             ),
                //             const BlackButtonSmall(
                //               text: "Open Facebook",
                //             ),
                //           ],
                //         ),
                //       ),
                //       SizedBox(
                //         width: 10.w,
                //       ),
                //       const Expanded(child: HelpfulBlogsSection())
                //     ],
                //   ),
                // ),
                // //Google section>>>>>>>>>>>>>>>>>>>>>>>>>>>
                Align(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset(
                        "assets/icons/google_color.webp",
                        height: 60.h,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Google",
                        style: urbanist600(kBlack, 18),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "With Google My Business, you can create a free business profile and listing to attract new customers.",
                        style: urbanist400(kBlack, 12),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 250.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://tse4.mm.bing.net/th?id=OIP.j4SvRBaGAhJxK-g-q6pNBAHaDt&pid=Api&P=0&h=180",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          const Expanded(
                            flex: 2,
                            child: HelpfulBlogsSection(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          const Footer()
        ],
      ),
    );
  }
}
