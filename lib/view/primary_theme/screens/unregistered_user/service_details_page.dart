import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/data/remote/services/models/beautician_detail_model.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheets_dialog.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_preview.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_tabs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_collapse/image_collapse.dart';
import 'package:latlong2/latlong.dart';
import 'package:readmore/readmore.dart';

class ServiceDetailsPage extends ConsumerStatefulWidget {
  final String id;
  const ServiceDetailsPage({super.key, required this.id});

  @override
  ConsumerState<ServiceDetailsPage> createState() => _ServiceDetailsPageState();
}

class _ServiceDetailsPageState extends ConsumerState<ServiceDetailsPage>
    with SingleTickerProviderStateMixin, BaseScreenView {
  late HomePageViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 4, vsync: this);
    _viewModel = ref.read(homePageViewModel)..attachView(this);
    getData();
  }

  bool isLoading = false;
  Future<void> getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel
        .getBeauticianDetails(BeauticianDetailRequest(beauticianId: widget.id));
    // await _viewModel.getAllCategories();
    isLoading = false;
    setState(() {});
  }

  late TabController _tabcontroller;
  // final TextEditingController _dateController = TextEditingController();

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

  int selected = 0;
  void _onDaySelected(DateTime day, DateTime focussedDay) {
    setState(() {
      today = day;
    });
    // filterData["date"] = day.toString();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(homePageViewModel);
    List<Widget> screens = [
      ServiceI(
        data: _viewModel.beauticianDetailResponse ?? BeauticianDetailResponse(),
      ),
      ReviewI(
        beauticianDetailResponse:
            _viewModel.beauticianDetailResponse ?? BeauticianDetailResponse(),
      ),
      const aboutI(),
      const productI(),
    ];
    return Scaffold(
      appBar: defaultTargetPlatform == TargetPlatform.iOS ||
              defaultTargetPlatform == TargetPlatform.android
          ? AppBar(
              backgroundColor: kWhite,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: kBlack,
                ),
              ),
              title: Text(
                "Service Details",
                style: GoogleFonts.urbanist(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: kBlack,
                ),
              ),
              centerTitle: true,
            )
          : null,
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: kBlack,
              ),
            )
          : SingleChildScrollView(
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
                              _viewModel.beauticianDetailResponse?.data?.name ??
                                  "",
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
                              "Full location | ${_viewModel.beauticianDetailResponse?.data?.address ?? ''}",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 12.sp,
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
                              initialRating: _viewModel
                                      .beauticianDetailResponse?.data?.avgRating
                                      ?.toDouble() ??
                                  0.0,
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
                              "${_viewModel.beauticianDetailResponse?.data?.avgRating}",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "(${_viewModel.beauticianDetailResponse?.data?.ratingCount} booking reviews)",
                              style: GoogleFonts.urbanist(
                                color: kdescription,
                                fontSize: 12.sp,
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
                                        borderRadius:
                                            BorderRadius.circular(5.r),
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
                                        borderRadius:
                                            BorderRadius.circular(5.r),
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
                                        borderRadius:
                                            BorderRadius.circular(5.r),
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
                                            MediaQuery.of(context).size.width >
                                                    300
                                                ? true
                                                : false,
                                        child: Text(
                                          "Filter",
                                          style: GoogleFonts.urbanist(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible:
                                            MediaQuery.of(context).size.width >
                                                300,
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
                                    itemCount: _viewModel.serviceCategoriesList
                                            ?.data?.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.w),
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
                                                  _viewModel
                                                          .serviceCategoriesList
                                                          ?.data?[index]
                                                          .name ??
                                                      "",
                                                  style: GoogleFonts.urbanist(
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        selected == index
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
  final BeauticianDetailResponse beauticianDetailResponse;
  const ReviewI({
    super.key,
    required this.beauticianDetailResponse,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileReviews(
            beauticianDetailResponse: beauticianDetailResponse,
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

class ServiceI extends StatelessWidget {
  final BeauticianDetailResponse? data;
  const ServiceI({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          service(
            beauticianDetailResponse: null,
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
              fontSize: 12.sp,
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
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "10:00 - 20:00",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 12.sp,
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
  final BeauticianDetailResponse? beauticianDetailResponse;
  const service({
    super.key,
    this.beauticianDetailResponse,
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
            fontSize: 16.sp,
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
            fontSize: 16.sp,
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
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        ...List.generate(
          beauticianDetailResponse?.data?.services?.length ?? 0,
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
                          beauticianDetailResponse
                                  ?.data?.services![index].name ??
                              "",
                          style: GoogleFonts.urbanist(
                            color: kBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 200.w,
                          child: ReadMoreText(
                            beauticianDetailResponse
                                    ?.data?.services![index].description ??
                                "",
                            colorClickableText: kBlue,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: ' Read less',
                            style: TextStyle(
                              color: kGrey,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                        if (MediaQuery.of(context).size.width < 920)
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Row(
                              children: [
                                Text(
                                  "${beauticianDetailResponse?.data?.services![index].durationInMinutes}min | \$${beauticianDetailResponse?.data?.services![index].price}",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 12.sp,
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
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  context.pop();
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
                              fontSize: 12.sp,
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
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () => context.pop(),
                                            icon: Icon(
                                              Icons.close,
                                              color: kGrey,
                                            ))
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

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
