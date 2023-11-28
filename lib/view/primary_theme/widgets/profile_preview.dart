import 'package:cosmetropolis/data/remote/services/models/beautician_detail_model.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/service_details_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/registered_user_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ProfilePreview extends StatefulWidget {
  const ProfilePreview({super.key});

  @override
  State<ProfilePreview> createState() => _ProfilePreviewState();
}

class _ProfilePreviewState extends State<ProfilePreview>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  List<String> items = [
    "View All",
    "Women",
    "Trends",
    "Success Stories",
    "Skin",
    "Promotions",
    "Nails",
    "Makeup",
    "Lashes",
    "How- Tos",
    "Hair",
    "Eyebrows",
    "Client Relationship",
    "Brows",
    "Beautician Growth",
    "Beard Style"
  ];
  int selectedScreen = 0;
  int selected = 0;
  List<Widget> screens = [
    ServiceI(
      data: BeauticianDetailResponse(),
    ),
    ReviewI(
      beauticianDetailResponse: BeauticianDetailResponse(),
    ),
    const aboutI(),
    const productI(),
  ];
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              children: [
                SizedBox(height: 25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MediaQuery.of(context).size.width > 700
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment:
                          MediaQuery.of(context).size.width > 700
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: const NetworkImage(
                            "https://t3.ftcdn.net/jpg/02/00/90/24/360_F_200902415_G4eZ9Ok3Ypd4SZZKjc8nqJyFVp1eOD6V.jpg",
                          ),
                          radius: 60.r,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Visibility(
                          visible: MediaQuery.of(context).size.width <= 700,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
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
                                allowHalfRating: true,
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
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  // outline button
                                  IconButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kWhite,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(),
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_rounded,
                                      color: kBlack,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  // outline button
                                  IconButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kWhite,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(),
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.share_rounded,
                                      color: kBlack,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),

                                  FittedBox(
                                    child: SizedBox(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kBlack,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                          ),
                                        ),
                                        child: Text(
                                          "Message",
                                          style: urbanist400(kWhite, 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Visibility(
                                visible:
                                    MediaQuery.of(context).size.width < 700,
                                child: SizedBox(
                                  height: 10.h,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: SizedBox(
                        width: 10.w,
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
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
                            allowHalfRating: true,
                            itemSize: 20.sp,
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
                            height: 20.h,
                          ),
                          Visibility(
                            visible: MediaQuery.of(context).size.width <= 700,
                            child: SizedBox(
                              height: 10.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: const Spacer(),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: Row(
                        children: [
                          // outline button
                          IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kWhite,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(),
                                borderRadius: BorderRadius.circular(
                                  5.r,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                              color: kBlack,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          // outline button
                          IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kWhite,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(),
                                borderRadius: BorderRadius.circular(
                                  5.r,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_rounded,
                              color: kBlack,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),

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
                                  "Message",
                                  style: urbanist400(kWhite, 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 950
                        ? 120.w
                        : double.infinity,
                    child: TabBar(
                      physics: const BouncingScrollPhysics(),
                      dividerColor: kGrey.withOpacity(0.5),
                      // isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: _tabcontroller,
                      indicatorColor: kBlack,
                      labelColor: kBlack,
                      unselectedLabelColor: kGrey,
                      onTap: (value) {
                        setState(() {
                          selectedScreen = value;
                        });
                      },
                      labelStyle: urbanist600(kBlack, 12),
                      unselectedLabelStyle: urbanist400(kGrey, 12),
                      tabs: const [
                        Tab(text: 'Services'),
                        Tab(text: 'Review'),
                        Tab(text: 'About'),
                        Tab(text: 'Products'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: screens[selectedScreen],
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: SizedBox(
                        width: 10.w,
                      ),
                    ),
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 700,
                      child: const Expanded(
                        flex: 2,
                        child: SingleChildScrollView(child: Sidebar()),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
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
            Text(
              "Add Products to your profile",
              style: urbanist400(kBlack, 16),
            ),
            FittedBox(
              child: SizedBox(
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Client Photo",
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
                                  Navigator.pop(context);
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
                              child: const AddProduct(),
                            ),
                          ),
                        );
                      },
                    );
                  },
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
                            fontSize: 12.sp,
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
                            style: urbanist400(kGrey, 12),
                          ),
                        ),
                        if (MediaQuery.of(context).size.width < 920)
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete_rounded,
                                    color: kBlack,
                                    size: 25,
                                  ),
                                ),
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
                            ),
                          ),
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
