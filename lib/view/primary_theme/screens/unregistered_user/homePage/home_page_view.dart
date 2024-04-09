// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart'
    as beautician;
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/carousel_with_conditional_arrow_state.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchfield/searchfield.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/button_with_icon.dart';

class HomePageView extends ConsumerStatefulWidget {
  const HomePageView({super.key});

  @override
  ConsumerState<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends ConsumerState<HomePageView>
    with BaseScreenView, SingleTickerProviderStateMixin {
  late FlutterCarousel carousel;
    final TextEditingController _dateController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  List<String> blogimg = [
    "https://i.imgur.com/Yl5A28c.webp",
    "https://i.imgur.com/gax4BO9.webp",
    "https://i.imgur.com/n9ckE5M.webp",
    "https://t4.ftcdn.net/jpg/04/35/38/13/360_F_435381398_Z5mBaTW5HHD3748nsGRDsFQr0iXa893X.jpg"
  ];

  // List<String> _viewModel.services.data?[index].salon?.image ?? ""[
  //   "https://i.imgur.com/p9IzdwU.webp",
  //   "https://i.imgur.com/Oif31Oz.webp",
  //   "https://i.imgur.com/z7l6NNF.webp",
  //   "https://i.imgur.com/MT1HxiT.webp",
  //   "https://i.imgur.com/4JvUJRQ.webp",
  //   "https://i.imgur.com/8CVJF3x.webp",
  //   "https://i.imgur.com/dAOC8GF.webp",
  //   "https://i.imgur.com/1F9IUEz.webp",
  // ];

  // create list of service of tittle images
  bool isLoading = false;
  List<String> servicetittle = [
    "Braids",
    "Natural hairs",
    "Haircut",
    "Men’s Haircut",
    "Silk press",
    "Nails",
    "Eyelashes",
    "Kids",
  ];
  int serviceIndex = -1;

  late HomePageViewModel _viewModel;
  final serviceTitles = <String>[
    "Hair",
    "Spa",
    "Nail",
    "Makeup",
    "Removal",
    "Lash Bar",
    "Lips",
    "Massage",
    "Skin Care",
    "Yoga",
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(homePageViewModel);
      _viewModel.getServiceCategories();
      _viewModel.getServiceTypes();
      getData();
      // _viewModel.fetchAllSalons("");
    });
  }

  Future<void> getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel
        .getBeauticiansByFilter(const beautician.BeauticiansFilterRequest(
            filters: beautician.Filters(
      search: "",
      // serviceCategory: "",
      // serviceType: "",
      // location: "",
      // avgRating: null,
      // priceRange: beautician.PriceRange(minPrice: 0, maxPrice: 200),
    ),),);
    isLoading = false;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(homePageViewModel);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    carousel = FlutterCarousel(
      options: CarouselOptions(
        height: height,
        aspectRatio: width / height,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        slideIndicator: CircularWaveSlideIndicator(),
      ),
      items: [
        CachedNetworkImage(imageUrl: 'assets/images/banner_1.jpg', 
          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
          ),
        CachedNetworkImage(imageUrl: 'assets/images/banner_2.jpg',
          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
        ),
        CachedNetworkImage(imageUrl: 'assets/images/banner_3.jpg',
          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
        ),
        CachedNetworkImage(imageUrl: 'assets/images/banner_4.jpg',
          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
        ),
        CachedNetworkImage(imageUrl: 'assets/images/banner_5.jpg',
          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
        ),
        // Image.asset('assets/images/banner_1.jpg'),
        // Image.asset('assets/images/banner_2.jpg'),
        // Image.asset('assets/images/banner_3.jpg'),
        // Image.asset('assets/images/banner_4.jpg'),
        // Image.asset('assets/images/banner_5.jpg'),
      ],
    );

    final list = [
                        'Hair Salon',
                        'Nail Salon',
                        'Skin Care',
                        'Hair Removal',
                        'Brows & Lashes',
                        'Make Up',
                        'Self Care',
                    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          if (MediaQuery.of(context).size.width > 700)
          Stack(
            alignment: Alignment.center,
            children: [
              // carousel,
              CachedNetworkImage(imageUrl: "assets/images/banner_1.jpg", ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Glow. Shine. Inspire.",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Book appointments with local beauty and wellness experts",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      // ignore: use_decorated_box
                      child: isLoading
                          ? const CircularProgressIndicator()
                          : Container(
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SearchField<beautician.Result>(
                                      controller: _viewModel.searchController,
                                      hint: "Services or beautician name",
                                      itemHeight: 60,
                                      maxSuggestionsInViewPort: 10,
                                      offset: const Offset(0, 59),
                                      suggestionsDecoration:
                                          SuggestionDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      onSearchTextChanged: (p0) {
                                        if (p0.isEmpty) {
                                          _viewModel.clearFilter();
                                        }
                                        if (p0.length > 3) {
                                          _viewModel.getBeauticiansByFilter(
                                            beautician.BeauticiansFilterRequest(
                                                filters: beautician.Filters(
                                              search: p0,
                                            ),),
                                          );
                                        }
                                        return null;
                                      },
                                      searchInputDecoration: InputDecoration(
                                        hintText: "Services or beautician name",
                                        hintStyle: GoogleFonts.urbanist(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        suffixIcon: Padding(
                                          padding: EdgeInsets.all(10.sp),
                                          child: const ImageIcon(
                                            AssetImage(
                                              "assets/icons/search.webp",
                                            ),
                                            color:
                                                Color.fromARGB(155, 97, 95, 95),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: kWhite,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: kWhite,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                      marginColor: Colors.white,
                                      suggestions: _viewModel
                                          .beauticiansListResponse!.data.results
                                          .map(
                                            (e) => SearchFieldListItem<
                                                beautician.Result>(
                                              e.name ?? "",
                                              item: e,
                                              // Use child to show Custom Widgets in the suggestions
                                              // defaults to Text widget
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,),
                                                height: 60,
                                                color: kWhite,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[200],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      child: const Center(
                                                        child: Icon(
                                                          Icons.search,
                                                          color: kGrey,
                                                          size: 15,
                                                        ),
                                                      ),
                                                    ),
                                                    gapW8,
                                                    Flexible(
                                                      child: SizedBox(
                                                        width: 250,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              e.name ?? "",
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          12,),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            if (e.services
                                                                    ?.isNotEmpty ??
                                                                true)
                                                              Text(
                                                                "${e.services?.first.name ?? ""} | ${e.name ?? ""}",
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color:
                                                                        kGrey,),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              )
                                                            else
                                                              Container(),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    // Spacer(),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "${e.avgRating ?? 0}",
                                                            style:
                                                                const TextStyle(
                                                                    color:
                                                                        kGrey,
                                                                    fontSize:
                                                                        12,),
                                                          ),
                                                          const Icon(
                                                            Icons.star_rounded,
                                                            color: kGrey,
                                                            size: 20,
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                  Container(
                                    color: kWhite,
                                    child: Container(
                                      height: 52.h,
                                      width: 0.5.w,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFB7B7B7),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: _viewModel.locationController,
                                      style: GoogleFonts.urbanist(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Location",
                                        hintStyle: GoogleFonts.urbanist(
                                          color: kGrey,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        suffixIcon: Padding(
                                          padding: EdgeInsets.all(10.sp),
                                          child: const ImageIcon(
                                            AssetImage(
                                              "assets/icons/location.webp",
                                            ),
                                            color:
                                                Color.fromARGB(155, 97, 95, 95),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: kWhite,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.r),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: kWhite,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: kWhite,
                                    child: Container(
                                      height: 52.h,
                                      width: 0.5.w,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFB7B7B7),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      readOnly: true,
                                      controller: _viewModel.dateController,
                                      style: GoogleFonts.urbanist(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Date",
                                        hintStyle: GoogleFonts.urbanist(
                                          color: kGrey,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                              context:
                                                  context, //context of current state
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(
                                                2000,
                                              ), //DateTime.now() - not to allow to choose before today.
                                              lastDate: DateTime(2101),
                                            );

                                            if (pickedDate != null) {
                                              //pickedDate output format => 2021-03-10 00:00:00.000
                                              String formattedDate =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);

                                              _dateController.text =
                                                  formattedDate; //set output date to TextField value.
                                              //formatted date output using intl package =>  2021-03-16
                                            }
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(10.sp),
                                            child: const ImageIcon(
                                              AssetImage(
                                                "assets/icons/calendar.webp",
                                              ),
                                              color: Color.fromARGB(
                                                  155, 97, 95, 95,),
                                            ),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: kWhite,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.r),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.r),
                                          borderSide: const BorderSide(
                                            color: kWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      color: kWhite,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.h,
                                            horizontal: 10.w,
                                          ),
                                          backgroundColor: kBlue,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                          ),
                                        ),
                                        onPressed: () {
                                          // print(_viewModel.searchController.text);
                                          if (_viewModel.searchController.text
                                                  .length >
                                              3) {
                                            _viewModel.getBeauticiansByFilter(
                                                beautician
                                                    .BeauticiansFilterRequest(
                                                        filters:
                                                            beautician.Filters(
                                              search: _viewModel
                                                  .searchController.text,

                                              location: _viewModel
                                                      .locationController
                                                      .text
                                                      .isEmpty
                                                  ? null
                                                  : _viewModel
                                                      .locationController.text,
                                              date: _viewModel.dateController
                                                      .text.isEmpty
                                                  ? null
                                                  : _viewModel
                                                      .dateController.text,
                                              // avgRating: null,
                                              // priceRange:
                                              //     const beautician.PriceRange(
                                              //         minPrice: 0,
                                              //         maxPrice: 200),
                                            ),),);
                                          }
                                          if (_viewModel.searchController.text
                                                  .length <
                                              4) {
                                            _viewModel.getBeauticiansByFilter(
                                                beautician
                                                    .BeauticiansFilterRequest(
                                                        filters:
                                                            beautician.Filters(
                                              search: _viewModel
                                                          .locationController
                                                          .text
                                                          .isEmpty &&
                                                      _viewModel
                                                          .locationController
                                                          .text
                                                          .isEmpty
                                                  ? ""
                                                  : null,
                                              location: _viewModel
                                                      .locationController
                                                      .text
                                                      .isEmpty
                                                  ? null
                                                  : _viewModel
                                                      .locationController.text,
                                              date: _viewModel.dateController
                                                      .text.isEmpty
                                                  ? null
                                                  : _viewModel
                                                      .dateController.text,
                                            ),),);
                                          }
                                          context.go("/beautician-listing");
                                        },
                                        child: Text(
                                          "Search",
                                          style: TextStyle(
                                            color: kWhite,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    )
                  
                  ,  
                  const SizedBox(height: 160), 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 104),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: list.map<Widget>(
                          (title) => Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/${'icon_' + title}.png"),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    title,
                                    style: urbanist600(kWhite, 18),
                                  ),
                                ],
                              ),
                              if (list.indexOf(title) < list.length - 1)
                                const SizedBox(
                                  width: 136,
                                )
                              else
                                Container(),
                            ],
                          ),
                          ).toList(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
          else
          Container(
            color: kGreyPinkColor,
            child: isLoading ? const CircularProgressIndicator()
                : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Column(
                        children: [
                          SearchField<beautician.Result>(
                            controller: _viewModel.searchController,
                            hint: "Services, stylist or salon",
                            itemHeight: 45,
                            maxSuggestionsInViewPort: 10,
                            offset: const Offset(0, 59),
                            suggestionsDecoration: SuggestionDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            onSearchTextChanged: (p0) {
                              if (p0.isEmpty) {
                                _viewModel.clearFilter();
                              }
                              if (p0.length > 3) {
                                _viewModel.getBeauticiansByFilter(
                                  beautician.BeauticiansFilterRequest(
                                    filters: beautician.Filters(
                                      search: p0,
                                    ),
                                  ),
                                );
                              }
                              return null;
                            },
                            searchInputDecoration: InputDecoration(
                              hintText: "Services or beautician name",
                              hintStyle: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: const ImageIcon(
                                  AssetImage(
                                    "assets/icons/search.webp",
                                  ),
                                  color: Color.fromARGB(155, 97, 95, 95),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            marginColor: Colors.white,
                            suggestions: _viewModel
                                .beauticiansListResponse!.data.results
                                .map(
                                  (e) => SearchFieldListItem<beautician.Result>(
                                    e.name ?? "",
                                    item: e,
                                    // Use child to show Custom Widgets in the suggestions
                                    // defaults to Text widget
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      height: 60,
                                      color: kWhite,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                30,
                                              ),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.search,
                                                color: kGrey,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                          gapW8,
                                          Flexible(
                                            child: SizedBox(
                                              width: 250,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    e.name ?? "",
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  if (e.services?.isNotEmpty ??
                                                      true)
                                                    Text(
                                                      "${e.services?.first.name ?? ""} | ${e.name ?? ""}",
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: kGrey,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )
                                                  else
                                                    Container(),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // Spacer(),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "${e.avgRating ?? 0}",
                                                  style: const TextStyle(
                                                    color: kGrey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.star_rounded,
                                                  color: kGrey,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          // TextField(
                          //   style: GoogleFonts.urbanist(
                          //     fontSize: 14.sp,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          //   decoration: InputDecoration(
                          //     hintText: "Services or beautician name",
                          //     hintStyle: GoogleFonts.urbanist(
                          //       color: kGrey,
                          //       fontSize: 14.sp,
                          //       fontWeight: FontWeight.w600,
                          //     ),
                          //     suffixIcon: const Icon(
                          //       Icons.search,
                          //       color: kGrey,
                          //     ),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderSide: const BorderSide(
                          //         color: kWhite,
                          //       ),
                          //       borderRadius: BorderRadius.circular(10.r),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderSide: const BorderSide(
                          //         color: kWhite,
                          //       ),
                          //       borderRadius: BorderRadius.circular(10.r),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            controller: _viewModel.locationController,
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Location",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              prefixIcon: const Icon(
                                Icons.location_on,
                                color: kGrey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            controller: _viewModel.dateController,
                            keyboardType: TextInputType.datetime,
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Date",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              prefixIcon: InkWell(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context, //context of current state
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(
                                      2000,
                                    ), //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101),
                                  );

                                  if (pickedDate != null) {
                                    //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);

                                    _dateController.text =
                                        formattedDate; //set output date to TextField value.
                                    //formatted date output using intl package =>  2021-03-16
                                  }
                                },
                                child: const Icon(
                                  Icons.date_range,
                                  color: kGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          // SizedBox(
                          //   width: double.infinity,
                          //   child: ElevatedButton(
                          //     style: ElevatedButton.styleFrom(
                          //       padding: EdgeInsets.symmetric(
                          //         vertical:
                          //             MediaQuery.of(context).size.width > 700
                          //                 ? 15.h
                          //                 : 16.h,
                          //       ),
                          //       backgroundColor: kBlue,
                          //       elevation: 0,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(5.r),
                          //       ),
                          //     ),
                          //     onPressed: () {
                          //       // print(_viewModel.searchController.text);
                          //       if (_viewModel.searchController.text.length > 3) {
                          //         _viewModel.getBeauticiansByFilter(
                          //           beautician.BeauticiansFilterRequest(
                          //             filters: beautician.Filters(
                          //               search:
                          //                   _viewModel.searchController.text,

                          //               location: _viewModel
                          //                       .locationController.text.isEmpty
                          //                   ? null
                          //                   : _viewModel
                          //                       .locationController.text,
                          //               date: _viewModel
                          //                       .dateController.text.isEmpty
                          //                   ? null
                          //                   : _viewModel.dateController.text,
                          //               // avgRating: null,
                          //               // priceRange:
                          //               //     const beautician.PriceRange(
                          //               //         minPrice: 0,
                          //               //         maxPrice: 200),
                          //             ),
                          //           ),
                          //         );
                          //       }
                          //       if (_viewModel.searchController.text.length < 4) {
                          //         _viewModel.getBeauticiansByFilter(
                          //           beautician.BeauticiansFilterRequest(
                          //             filters: beautician.Filters(
                          //               search: _viewModel.locationController
                          //                           .text.isEmpty &&
                          //                       _viewModel.locationController
                          //                           .text.isEmpty
                          //                   ? ""
                          //                   : null,
                          //               location: _viewModel
                          //                       .locationController.text.isEmpty
                          //                   ? null
                          //                   : _viewModel
                          //                       .locationController.text,
                          //               date: _viewModel
                          //                       .dateController.text.isEmpty
                          //                   ? null
                          //                   : _viewModel.dateController.text,
                          //             ),
                          //           ),
                          //         );
                          //       }
                          //       context.go("/beautician-listing");
                          //     },
                          //     child: Text(
                          //       "Search",
                          //       style: TextStyle(
                          //         color: kWhite,
                          //         fontSize: 14.sp,
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          const SizedBox(height: 20), 
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: list.map<Widget>(
                              (title) => Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CachedNetworkImage(imageUrl: "assets/images/${'icon_' + title}.png", width: 53),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        title,
                                        style: urbanist600(kWhite, 12),
                                      ),
                                    ],
                                  ),
                                  if (list.indexOf(title) < list.length - 1)
                                    const SizedBox(
                                      width: 30,
                                    )
                                  else
                                    Container(),
                                ]
                              ),
                              ).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),


          SizedBox(
            height: 50.h,
          ),
          // Image.asset(
          //   "assets/icons/wwo_img.webp",
          //   fit: BoxFit.contain,
          //   height: MediaQuery.of(context).size.width > 700 ? 160.h : 110.h,
          // ),
          Text(
            'What We Offer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 55.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          Text(
            'Our Services',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26.sp,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Wrap(
            spacing: 48,
              children: serviceTitles
                  .map<Widget>(
                    (title) => Container(
                      width: 129,
                      height: 206,
                      margin: const EdgeInsets.only(bottom: 48),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(144,),
                        border: Border.all(
                          color: kLightGreyBorder,
                          width: 1, // Set the border width
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/$title.png"),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(title)
                          ]),
                    ),
                  )
                  .toList()
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 48,
            children: [
              Image.asset("assets/images/Advertise1.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Better.\nWith.\nFriends.",
                    style: GoogleFonts.urbanist(
                      fontSize: 55.sp,
                      fontWeight: FontWeight.bold,
                      color: kdarkColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Refer a friend and you’ll both get 15%\n(up to 50\$) off when you book with a new pro",
                    style: GoogleFonts.urbanist(
                      fontSize: 26.sp,
                      color: kdarkColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ButtonWithIconWidget(
                    iconUrl: "assets/icons/gift.png",
                    text: "Share Now",
                    textColor: kWhite,
                    backgroundColor: kGreyPinkColor,
                    onPressed: () {
                      context.go("/pricing");
                    },
                    space: 20,
                    iconSize: 26,
                    fontSize: 21,
                    borderRadius: 40,
                    paddingHorizontal: 20,
                  ),
                ],
              ),
              Image.asset("assets/images/LashBarAdvertise.png"),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Meet Cosmetropolis Pros',
                      style: GoogleFonts.urbanist(
                        fontSize: 38.sp,
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                      ),
                    ),
                    const SizedBox(width: 70),
                    Text(
                      'See all >',
                      style: GoogleFonts.urbanist(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.normal,
                        color: kLightBlue2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 56),
                CarouselWithConditionalArrows(),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Footer(),
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
    // TODO: implement showSnackbar
  }
}
