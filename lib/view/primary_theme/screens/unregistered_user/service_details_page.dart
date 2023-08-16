import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheets_dialog.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_preview.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_tabs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_collapse/image_collapse.dart';
import 'package:latlong2/latlong.dart';
import 'package:readmore/readmore.dart';

class ServiceDetailsPage extends StatefulWidget {
  const ServiceDetailsPage({super.key});

  @override
  State<ServiceDetailsPage> createState() => _ServiceDetailsPageState();
}

class _ServiceDetailsPageState extends State<ServiceDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  final TextEditingController _dateController = TextEditingController();

  DateTime today = DateTime.now();
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
  List<Widget> screens = [
    const ServiceI(),
    const ReviewI(),
    const aboutI(),
    const productI(),
  ];

  int selected = 0;
  void _onDaySelected(DateTime day, DateTime focussedDay) {
    setState(() {
      today = day;
    });
    // filterData["date"] = day.toString();
  }

  @override
  initState() {
    super.initState();
    _tabcontroller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultTargetPlatform == TargetPlatform.iOS ||
              defaultTargetPlatform == TargetPlatform.android
          ? AppBar(
              backgroundColor: kWhite,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: kBlack,
                ),
              ),
              title: Text(
                "Service Details",
                style: GoogleFonts.urbanist(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: kBlack,
                ),
              ),
              centerTitle: true,
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Akeba Thompson",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Image.asset(
                        "assets/icons/verify.webp",
                        height: 20.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: kdescription,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "Full location | 39495 Washington",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        itemSize: 20.sp,
                        allowHalfRating: true,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_rounded,
                          color: kBlack,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "4.9",
                        style: GoogleFonts.urbanist(
                          color: kBlack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "(856k booking reviews)",
                        style: GoogleFonts.urbanist(
                          color: kdescription,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      if (MediaQuery.of(context).size.width < 700)
                        Container()
                      else
                        Row(
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                // filterBottomSheet(
                                //   context,
                                //   const SelectSlotBottomSheet(),
                                // );
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
                              label: Text(
                                "Message",
                                style: GoogleFonts.urbanist(
                                  color: kWhite,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextButton.icon(
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
                              label: Text(
                                "favorite",
                                style: GoogleFonts.urbanist(
                                  color: kdarkPrime,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextButton.icon(
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
                              label: Text(
                                "Share",
                                style: GoogleFonts.urbanist(
                                  color: kdarkPrime,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        )
                    ],
                  ),
                  if (MediaQuery.of(context).size.width > 700)
                    Container()
                  else
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.h,
                      ),
                      child: Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {},
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
                            label: Text(
                              "Message",
                              style: GoogleFonts.urbanist(
                                color: kWhite,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextButton.icon(
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
                            label: Text(
                              "favorite",
                              style: GoogleFonts.urbanist(
                                color: kdarkPrime,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextButton.icon(
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
                            label: Text(
                              "Share",
                              style: GoogleFonts.urbanist(
                                color: kdarkPrime,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ImageCollapse(
                    crossAxisCount: 10,
                    titleGallery: "Gallery",
                    imageUrls: [
                      "https://images.unsplash.com/photo-1560066984-138dadb4c035?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                      "https://images.news18.com/ibnlive/uploads/2022/11/001-10-1-166782742016x9.webp",
                      "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                      "https://images.unsplash.com/photo-1560066984-138dadb4c035?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                      "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                      "https://plus.unsplash.com/premium_photo-1677616798094-d34c85b61e36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60"
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          // width: 50.w,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.w,
                              vertical: 5.h,
                            ),
                            child: Row(
                              children: [
                                Visibility(
                                  visible:
                                      MediaQuery.of(context).size.width > 300
                                          ? true
                                          : false,
                                  child: Text(
                                    "Filter",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible:
                                      MediaQuery.of(context).size.width > 300,
                                  child: SizedBox(
                                    width: 20.w,
                                  ),
                                ),
                                Image.asset(
                                  "assets/icons/filter.webp",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: SizedBox(
                          height: 50.h,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h),
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = index;
                                      });
                                    },
                                    child: FittedBox(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          color: selected == index
                                              ? kBlack
                                              : kselected,
                                          border: Border.all(
                                            color: selected != index
                                                ? Colors.grey
                                                : Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.r,
                                            horizontal: 7.w,
                                          ),
                                          child: Text(
                                            items[index],
                                            style: GoogleFonts.urbanist(
                                              fontSize: 12.sp,
                                              fontWeight: selected == index
                                                  ? FontWeight.w600
                                                  : FontWeight.w400,
                                              color: selected == index
                                                  ? kWhite
                                                  : kdescription,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
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
            const Footer()
          ],
        ),
      ),
    );
  }
}

class productI extends StatelessWidget {
  const productI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProductsCard(),
          Visibility(
            visible: MediaQuery.of(context).size.width < 700,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
              child: const Sidebar(),
            ),
          ),
        ],
      ),
    );
  }
}

class aboutI extends StatelessWidget {
  const aboutI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            visible: MediaQuery.of(context).size.width < 700,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
              child: const Sidebar(),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewI extends StatelessWidget {
  const ReviewI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileReviews(),
          Visibility(
            visible: MediaQuery.of(context).size.width < 700,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
              child: const Sidebar(),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceI extends StatelessWidget {
  const ServiceI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const service(),
          Visibility(
            visible: MediaQuery.of(context).size.width < 700,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
              child: const Sidebar(),
            ),
          ),
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 210.h,
            width: double.infinity,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
              ),
              child: FlutterMap(
                options: MapOptions(
                  enableScrollWheel: false,
                  center: LatLng(
                    22.57290731661063,
                    88.43274351134704,
                  ),
                  zoom: 15,
                  keepAlive: true,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
            child: CachedNetworkImage(
              imageUrl: "https://i.imgur.com/5M7w0dc.webp",
              width: double.infinity,
              height: 140.h,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Hours of operation",
            style: GoogleFonts.urbanist(
              color: kBlack,
              fontSize: 14.sp,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
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
                  ),
                ),
              ],
            ),
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 4.h,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Monday",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "10:00 - 20:00",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      if (index != 6)
                        const Divider(
                          color: kdisable,
                        )
                      else
                        const SizedBox.shrink()
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}

class service extends StatelessWidget {
  const service({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Book online for an appointment at hairstyle",
          style: GoogleFonts.urbanist(
            color: kBlack,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "24h Immediate confirmation",
          style: GoogleFonts.urbanist(
            color: kGrey,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Choose your service",
          style: GoogleFonts.urbanist(
            color: kBlack,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Highlighted service",
          style: GoogleFonts.urbanist(
            color: kBlack,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        ...List.generate(
          10,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Medium knotless/Box Braids",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 200.w,
                          child: ReadMoreText(
                            "Hair is not included but can be provided for an additional fee. Please check the add-on section for more details. Hair is not included but can be provided for an additional fee. Please check the add-on section for more details. Hair is not included but can be provided for an additional fee. Please check the add-on section for more details.",
                            colorClickableText: kBlue,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: ' Read less',
                            style: TextStyle(
                              color: kGrey,
                              fontSize: 11.sp,
                            ),
                          ),
                        ),
                        if (MediaQuery.of(context).size.width < 920)
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Row(
                              children: [
                                Text(
                                  "60min | \$150",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                InkWell(
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
                                                "Your appointment with",
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
                                            child: SelectDate(),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
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
                                      "Choose",
                                      style: GoogleFonts.urbanist(
                                        color: kWhite,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
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
                          Text(
                            "60min | \$150",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          InkWell(
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
                                          "Your appointment with",
                                          style: GoogleFonts.urbanist(
                                            color: kBlack,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.close,
                                          color: kGrey,
                                        )
                                      ],
                                    ),
                                    backgroundColor: const Color(0xfff8f8f8),
                                    content: const SingleChildScrollView(
                                      child: SelectDate(),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
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
                                "Choose",
                                style: GoogleFonts.urbanist(
                                  color: kWhite,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
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
