import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_collapse/image_collapse.dart';
import 'package:readmore/readmore.dart';

import '../screens/unregistered_user/service_details_page.dart';

class ProfilePreview extends StatefulWidget {
  const ProfilePreview({super.key});

  @override
  State<ProfilePreview> createState() => _ProfilePreviewState();
}

class _ProfilePreviewState extends State<ProfilePreview>
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
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MediaQuery.of(context).size.width < 401
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: const NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.zVsxx9pE2k-e6iTe5DMFwAHaGv&pid=Api&P=0&h=180"),
                        radius: 60.r,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Visibility(
                          visible: MediaQuery.of(context).size.width < 601,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: kdarkPrime,
                                  size: 15.sp,
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: kWhite,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                    side: const BorderSide(
                                      color: kdarkPrime,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.ios_share_rounded,
                                  color: kdarkPrime,
                                  size: 15.sp,
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: kWhite,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                    side: const BorderSide(
                                      color: kdarkPrime,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  // filterBottomSheet(context, SelectSlotBottomSheet());
                                },
                                icon: Icon(
                                  Icons.messenger_outline_rounded,
                                  color: kWhite,
                                  size: 15.sp,
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: kdarkPrime,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                label: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: Text("Message",
                                      style: urbanist400(kWhite, 12)),
                                ),
                              ),
                            ],
                          )),
                      Visibility(
                        child: SizedBox(
                          height: 10.h,
                        ),
                        visible: MediaQuery.of(context).size.width < 401,
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width < 401,
                        child: Column(
                          crossAxisAlignment:
                              MediaQuery.of(context).size.width < 401
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Eleanor Pena",
                              style: urbanist600(kBlack, 16),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Hair Stylist",
                              style: urbanist400(kdescription, 12),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Business name- Cosmetropolis",
                              style: urbanist400(kdescription, 12),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Instagram - @ mr.johnwick",
                              style: urbanist400(kdescription, 12),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Facebook - @ Mr. Wick",
                              style: urbanist400(kdescription, 12),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 1.w),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xFFFF7500),
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Visibility(
                                visible:
                                    MediaQuery.of(context).size.width < 601,
                                child: SizedBox(
                                  height: 20.h,
                                )),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: MediaQuery.of(context).size.width > 400,
                    child: SizedBox(
                      width: 5.w,
                    ),
                  ),
                  Visibility(
                    visible: MediaQuery.of(context).size.width > 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Eleanor Pena",
                          style: urbanist600(kBlack, 16),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Hair Stylist",
                          style: urbanist400(kdescription, 12),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Business name- Cosmetropolis",
                          style: urbanist400(kdescription, 12),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Instagram - @ mr.johnwick",
                          style: urbanist400(kdescription, 12),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Facebook - @ Mr. Wick",
                          style: urbanist400(kdescription, 12),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFFF7500),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Visibility(
                            visible: MediaQuery.of(context).size.width < 501,
                            child: SizedBox(
                              height: 20.h,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                      visible: MediaQuery.of(context).size.width > 600,
                      child: Spacer()),
                  Visibility(
                      visible: MediaQuery.of(context).size.width > 600,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: kdarkPrime,
                              size: 15.sp,
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: kWhite,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                                side: const BorderSide(
                                  color: kdarkPrime,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.ios_share_rounded,
                              color: kdarkPrime,
                              size: 15.sp,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: kWhite,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                                side: const BorderSide(
                                  color: kdarkPrime,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              // filterBottomSheet(context, SelectSlotBottomSheet());
                            },
                            icon: Icon(
                              Icons.messenger_outline_rounded,
                              color: kWhite,
                              size: 15.sp,
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: kdarkPrime,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            label: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Text("Message",
                                  style: urbanist400(kWhite, 12)),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              TabBar(
                physics: const BouncingScrollPhysics(),
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
                  Tab(text: 'Services'),
                  Tab(text: 'Review'),
                  Tab(text: 'About'),
                  Tab(text: 'Products'),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  height: 750.h,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child:
                            TabBarView(controller: _tabcontroller, children: [
                          //Services tab
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                service(),
                                Visibility(
                                    visible:
                                        MediaQuery.of(context).size.width < 700,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.h),
                                      child: Sidebar(),
                                    )),
                              ],
                            ),
                          ),
                          //Review tab
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProfileReviews(),
                                const Divider(
                                  color: klines,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Client Photos",
                                    style: urbanist600(kBlack, 20)),
                                SizedBox(height: 10.h),
                                SizedBox(
                                  height: 150.h,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.network(
                                            "https://images.news18.com/ibnlive/uploads/2022/11/001-10-1-166782742016x9.png",
                                            fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                                            fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1560066984-138dadb4c035?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                                            fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.network(
                                            "https://plus.unsplash.com/premium_photo-1677616798094-d34c85b61e36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                                            fit: BoxFit.cover,
                                          )),
                                    ],
                                  ),
                                ),
                                Visibility(
                                    visible:
                                        MediaQuery.of(context).size.width < 700,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.h),
                                      child: Sidebar(),
                                    )),
                              ],
                            ),
                          ),
                          //About tab
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Me",
                                  style: urbanist600(kBlack, 20),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsu",
                                  style: urbanist400(kdescription, 14),
                                ),
                                Visibility(
                                    visible:
                                        MediaQuery.of(context).size.width < 700,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.h),
                                      child: Sidebar(),
                                    )),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                ProductsCard(),
                                Visibility(
                                    visible:
                                        MediaQuery.of(context).size.width < 700,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.h),
                                      child: Sidebar(),
                                    )),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 700,
                        child: SizedBox(
                          width: 10.w,
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 700,
                        child: Expanded(
                          flex: 2,
                          child: SingleChildScrollView(child: Sidebar()),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Footer(),
      ],
    ));
  }
}

class ProductsCard extends StatelessWidget {
  const ProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Add Products to your profile",
                style: urbanist400(kBlack, 16)),
            FittedBox(
              child: SizedBox(
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: Text(
                    "Add Product",
                    style: urbanist400(kWhite, 12),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        ...List.generate(
          5,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: kdisable,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGrey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(
                      0,
                      1,
                    ), // changes position of shadow
                  ),
                ],
              ),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://tse1.mm.bing.net/th?id=OIP.3B1u2WR60N8Yhdl4E7OsvAHaKJ&pid=Api&P=0&h=180",
                    // width: 30.w,
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hair Growth Oil",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        SizedBox(
                          width: 200.w,
                          child: ReadMoreText(
                              "Hair is not included but can be provided for an additional fee. Please check",
                              colorClickableText: kBlue,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: ' Read less',
                              style: urbanist400(kGrey, 12)),
                        ),
                        if (MediaQuery.of(context).size.width < 920)
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete_rounded,
                                      color: kBlack,
                                      size: 25,
                                    )),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                    vertical: 5.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kBlack,
                                    borderRadius: BorderRadius.circular(
                                      5.r,
                                    ),
                                  ),
                                  child: Text(
                                    "Edit",
                                    style: GoogleFonts.urbanist(
                                      color: kWhite,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        else
                          Container()
                      ],
                    ),
                  ),
                  if (MediaQuery.of(context).size.width > 920)
                    Expanded(
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_rounded,
                                color: kBlack,
                                size: 15.sp,
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 5.h,
                            ),
                            decoration: BoxDecoration(
                              color: kBlack,
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                            ),
                            child: Text(
                              "Edit",
                              style: GoogleFonts.urbanist(
                                color: kWhite,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  else
                    Container()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
