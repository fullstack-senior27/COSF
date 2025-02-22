// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/data/remote/public/models/beauticians_list_model.dart'
    as beautician;
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchfield/searchfield.dart';

class HomePageView extends ConsumerStatefulWidget {
  const HomePageView({super.key});

  @override
  ConsumerState<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends ConsumerState<HomePageView>
    with BaseScreenView, SingleTickerProviderStateMixin {
  late Image image1;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  List<String> blogimg = [
    "https://i.imgur.com/Yl5A28c.webp",
    "https://i.imgur.com/gax4BO9.webp",
    "https://i.imgur.com/n9ckE5M.webp",
    "https://t4.ftcdn.net/jpg/04/35/38/13/360_F_435381398_Z5mBaTW5HHD3748nsGRDsFQr0iXa893X.jpg",
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
    image1 = Image.asset(
      "assets/icons/banner_p.webp",
      width: double.infinity,
      fit: BoxFit.cover,
      // height: MediaQuery.of(context).size.height,
    );
  }

  Future<void> getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel.getBeauticiansByFilter(
      const beautician.BeauticiansFilterRequest(
        filters: beautician.Filters(
          search: "",
          // serviceCategory: "",
          // serviceType: "",
          // location: "",
          // avgRating: null,
          // priceRange: beautician.PriceRange(minPrice: 0, maxPrice: 200),
        ),
      ),
    );
    isLoading = false;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(homePageViewModel);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: image1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find Best Services Near you",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Discover & book local beauty Beautician",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  if (MediaQuery.of(context).size.width > 700)
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
                                                                fontSize: 12,
                                                              ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            if (e.services
                                                                    ?.isNotEmpty ??
                                                                true)
                                                              Text(
                                                                "${e.services?.first.name ?? ""} | ${e.name ?? ""}",
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize: 12,
                                                                  color: kGrey,
                                                                ),
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
                                                              color: kGrey,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                          const Icon(
                                                            Icons.star_rounded,
                                                            color: kGrey,
                                                            size: 20,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
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
                                                155,
                                                97,
                                                95,
                                                95,
                                              ),
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
                                                filters: beautician.Filters(
                                                  search: _viewModel
                                                      .searchController.text,

                                                  location: _viewModel
                                                          .locationController
                                                          .text
                                                          .isEmpty
                                                      ? null
                                                      : _viewModel
                                                          .locationController
                                                          .text,
                                                  date: _viewModel
                                                          .dateController
                                                          .text
                                                          .isEmpty
                                                      ? null
                                                      : _viewModel
                                                          .dateController.text,
                                                  // avgRating: null,
                                                  // priceRange:
                                                  //     const beautician.PriceRange(
                                                  //         minPrice: 0,
                                                  //         maxPrice: 200),
                                                ),
                                              ),
                                            );
                                          }
                                          if (_viewModel.searchController.text
                                                  .length <
                                              4) {
                                            _viewModel.getBeauticiansByFilter(
                                              beautician
                                                  .BeauticiansFilterRequest(
                                                filters: beautician.Filters(
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
                                                          .locationController
                                                          .text,
                                                  date: _viewModel
                                                          .dateController
                                                          .text
                                                          .isEmpty
                                                      ? null
                                                      : _viewModel
                                                          .dateController.text,
                                                ),
                                              ),
                                            );
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
                  else
                    isLoading
                        ? const CircularProgressIndicator()
                        : Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              children: [
                                SearchField<beautician.Result>(
                                  controller: _viewModel.searchController,
                                  hint: "Services or beautician name",
                                  itemHeight: 60,
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
                                    suffixIcon: Padding(
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
                                        (e) => SearchFieldListItem<
                                            beautician.Result>(
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
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          e.name ?? "",
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                        if (e.services
                                                                ?.isNotEmpty ??
                                                            true)
                                                          Text(
                                                            "${e.services?.first.name ?? ""} | ${e.name ?? ""}",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 12,
                                                              color: kGrey,
                                                            ),
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
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
                                    suffixIcon: const Icon(
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
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                        vertical:
                                            MediaQuery.of(context).size.width >
                                                    700
                                                ? 15.h
                                                : 16.h,
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
                                      if (_viewModel
                                              .searchController.text.length >
                                          3) {
                                        _viewModel.getBeauticiansByFilter(
                                          beautician.BeauticiansFilterRequest(
                                            filters: beautician.Filters(
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
                                            ),
                                          ),
                                        );
                                      }
                                      if (_viewModel
                                              .searchController.text.length <
                                          4) {
                                        _viewModel.getBeauticiansByFilter(
                                          beautician.BeauticiansFilterRequest(
                                            filters: beautician.Filters(
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
                                            ),
                                          ),
                                        );
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
                              ],
                            ),
                          ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            "assets/icons/wwo_img.webp",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.width > 700 ? 160.h : 110.h,
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 765
                    ? 4
                    : MediaQuery.of(context).size.width > 360
                        ? 2
                        : 1,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                childAspectRatio: MediaQuery.of(context).size.width > 1300
                    ? 0.68
                    : MediaQuery.of(context).size.width > 760
                        ? MediaQuery.of(context).size.width > 700
                            ? 0.62
                            : 0.8
                        : MediaQuery.of(context).size.width > 360
                            ? 0.7
                            : 0.75,
              ),
              children: [
                ...List.generate(
                    _viewModel.serviceCategoriesList?.data?.length ?? 0,
                    (index) {
                  if (_viewModel.serviceCategoriesList?.data?[index] == null) {
                    return Container();
                  } else {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.w),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          MouseRegion(
                            onHover: (event) {
                              setState(() {
                                serviceIndex = index;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                serviceIndex = -1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.r),
                                border: Border.all(
                                  color: kdisable,
                                ),
                              ),
                              padding: EdgeInsets.all(10.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AspectRatio(
                                    aspectRatio: 0.95,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0.r),
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              "https://dummyimage.com/300.png/09f/fff",
                                          width: double.infinity,
                                          fit: BoxFit.contain,
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    _viewModel.serviceCategoriesList
                                            ?.data?[index].name ??
                                        "",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            right: 24,
                            child: MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  serviceIndex = index;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  serviceIndex = -1;
                                });
                              },
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeIn,
                                opacity: serviceIndex == index ? 1 : 0,
                                child: DottedBorder(
                                  color: kWhite,
                                  strokeWidth: 5,
                                  dashPattern: const [6, 5, 6, 5],
                                  borderType: BorderType.Circle,
                                  radius: const Radius.circular(100),
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    child: CircleAvatar(
                                      backgroundColor: kBlue,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            // print(_viewModel.services.data?[index].salon?.id ?? "");
                                            // _viewModel.getSalonById(_viewModel
                                            //         .services
                                            //         .data?[index]
                                            //         .salon
                                            //         ?.id ??
                                            //     "");
                                            _viewModel.getBeauticiansByFilter(
                                              beautician
                                                  .BeauticiansFilterRequest(
                                                filters: beautician.Filters(
                                                  search: "",
                                                  serviceCategory: _viewModel
                                                          .serviceCategoriesList
                                                          ?.data?[index]
                                                          .name ??
                                                      "",
                                                ),
                                              ),
                                            );
                                            _viewModel.category = _viewModel
                                                    .serviceCategoriesList
                                                    ?.data?[index]
                                                    .name ??
                                                "";
                                            context.go("/beautician-listing");
                                            //
                                          },
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: kWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GestureDetector(
              onTap: () => {},
              child: Image.asset(
                "assets/icons/home_banner_p.webp",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Image.asset(
            "assets/icons/mcp_img.webp",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.width > 700 ? 160.h : 110.h,
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              height: MediaQuery.of(context).size.width > 700 ? 320.h : 250.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: blogimg.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => {context.go("/blogs")},
                    child: Container(
                      padding: EdgeInsets.only(right: 10.w),
                      width: MediaQuery.of(context).size.width > 700
                          ? 100.w
                          : 170.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                            child: CachedNetworkImage(
                              imageUrl: blogimg[index],
                              height: MediaQuery.of(context).size.width > 870
                                  ? 180.h
                                  : 100.h,
                              width: MediaQuery.of(context).size.width > 870
                                  ? 100.w
                                  : 170.w,
                              fit: BoxFit.fill,
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Manuel, Makeup Artist erbgiergbieru",
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Between glam looks and good vibes, it’s no surprise why Manuel’s clients keep coming back.",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
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
