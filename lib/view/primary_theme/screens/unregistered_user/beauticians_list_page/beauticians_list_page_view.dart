import 'package:cosmetropolis/data/remote/salon/models/salon_model.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/beauticians_list.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../../utils/app_sizes.dart';

class BeauticiansListPageView extends ConsumerStatefulWidget {
  const BeauticiansListPageView({super.key});

  @override
  ConsumerState<BeauticiansListPageView> createState() => _BeauticiansListPageViewState();
}

class _BeauticiansListPageViewState extends ConsumerState<BeauticiansListPageView> with BaseScreenView {
  final TextEditingController _dateController = TextEditingController();
  List<String> items = ["View All",];

  int selected = 0;  
  int selectedService = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      for(int i = 0; i < (ref.read(homePageViewModel).services.data?.length ?? 0); i++) {
        items.add(ref.read(homePageViewModel).services.data?[i].name ?? "");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _homePageViewModel = ref.watch(homePageViewModel);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MediaQuery.of(context).size.width > 1000
          ? null
          : FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
              backgroundColor: kBlue,
              onPressed: () {
                filterBottomSheet(
                  context,
                  const BeauticiansFilterBottom(),
                );
              },
              label: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Text("Filter"),
              ),
              icon: ImageIcon(
                const AssetImage(
                  "assets/icons/filter.webp",
                ),
                color: kWhite,
                size: 20.sp,
              ),
            ),
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
                "Beauticians",
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
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
            SizedBox(
              height: 20.h,
            ),
            if (MediaQuery.of(context).size.width > 700)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: kWhite,
                    border: Border.all(
                      color: kdisable,
                      width: 2.h,
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SearchField<Salon>(
                          controller: _homePageViewModel.searchController,
                          hint: "Services or beautician name",
                          itemHeight: 60,
                          maxSuggestionsInViewPort: 10,
                          offset: const Offset(0, 59),
                          onSearchTextChanged: (p0) {
                            if(p0.isEmpty) {
                              _homePageViewModel.clearFilter();
                            }
                            if(p0.length > 3) {
                              _homePageViewModel.fetchAllSalons(p0);
                            }
                          },
                          onSuggestionTap: (p0) {
                            _homePageViewModel.filterSearch(p0.item?.name ?? "");
                          },
                          suggestionsDecoration: SuggestionDecoration(
                            borderRadius: BorderRadius.circular(5)
                          ),
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
                          suggestions: ref.read(homePageViewModel).allSalons
                            .map(
                            (e) => SearchFieldListItem<Salon>(
                              e.name ?? "",
                              item: e,
                              // Use child to show Custom Widgets in the suggestions
                              // defaults to Text widget
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                height: 60,
                                color: kWhite,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: const Center(child: Icon(Icons.search, color: kGrey, size: 15,),),
                                    ),
                                    gapW8,
                                    Flexible(
                                      child: Container(
                                        width: 250,
                                        child: Text(e.name ?? "", style: const TextStyle(fontSize: 12), overflow: TextOverflow.ellipsis,)
                                      )
                                    ),
                                    // Spacer(),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("${e.avgRating ?? 0}", style: const TextStyle(color: kGrey, fontSize: 12),),
                                          const Icon(Icons.star_rounded, color: kGrey, size: 20,)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                          ).toList(),
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
                          style: GoogleFonts.urbanist(
                            fontSize: 15.sp,
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
                              borderRadius: BorderRadius.circular(0.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: kWhite,
                              ),
                              borderRadius: BorderRadius.circular(0.r),
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
                          controller: _dateController,
                          style: GoogleFonts.urbanist(
                            fontSize: 15.sp,
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
                              borderRadius: BorderRadius.circular(0.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.r),
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
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            onPressed: () {
                              ref.read(homePageViewModel).fetchAllSalons(
                                ref.read(homePageViewModel).searchController.text,
                              );
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SearchField<Salon>(
                      controller: _homePageViewModel.searchController,
                      hint: "Services or beautician name",
                      itemHeight: 60,
                      maxSuggestionsInViewPort: 10,
                      offset: const Offset(0, 59),
                      onSearchTextChanged: (p0) {
                        if(p0.length == 0) {
                          _homePageViewModel.clearFilter();
                        }
                      },
                      onSuggestionTap: (p0) {
                        _homePageViewModel.filterSearch(p0.item?.name ?? "");
                      },
                      suggestionsDecoration: SuggestionDecoration(
                        borderRadius: BorderRadius.circular(5)
                      ),
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
                      suggestions: ref.read(homePageViewModel).allSalons
                        .map(
                        (e) => SearchFieldListItem<Salon>(
                          e.name ?? "",
                          item: e,
                          // Use child to show Custom Widgets in the suggestions
                          // defaults to Text widget
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            height: 60,
                            color: kWhite,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: const Center(child: Icon(Icons.search, color: kGrey, size: 15,),),
                                ),
                                gapW8,
                                Flexible(
                                  child: Container(
                                    width: 250,
                                    child: Text(e.name ?? "", style: const TextStyle(fontSize: 12), overflow: TextOverflow.ellipsis,)
                                  )
                                ),
                                // Spacer(),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("${e.avgRating ?? 0}", style: const TextStyle(color: kGrey, fontSize: 12),),
                                      const Icon(Icons.star_rounded, color: kGrey, size: 20,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      ).toList(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
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
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Date",
                        hintStyle: GoogleFonts.urbanist(
                          color: kGrey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        suffixIcon: InkWell(
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
                                  DateFormat('yyyy-MM-dd').format(pickedDate);

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
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.r),
                          borderSide: const BorderSide(
                            color: kGrey,
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
                            vertical: 15.h,
                          ),
                          backgroundColor: kBlue,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Search",
                          style: TextStyle(color: kWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
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
                              visible: MediaQuery.of(context).size.width > 300
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
                              visible: MediaQuery.of(context).size.width > 300
                                  ? true
                                  : false,
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
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                    selectedService = selected + 1;
                                  });

                                  if(index > 0) {
                                    ref.read(homePageViewModel).fetchAllSalons(
                                      ref.read(homePageViewModel).searchController.text,
                                      serviceType: ref.read(homePageViewModel).services.data?[selected - 1].serviceType?.id ?? "",
                                    );
                                  } else {
                                    ref.read(homePageViewModel).fetchAllSalons(
                                      ref.read(homePageViewModel).searchController.text,
                                    );
                                  }
                                },
                                child: FittedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
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
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(color: kGrey, height: 2.h),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: MediaQuery.of(context).size.width > 950
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Best Braids in Dallas, TX",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Cosmetropolis > Dallas, TX > Braids",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: kdescription,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  SizedBox(
                                    child: _homePageViewModel.loading 
                                      ? const Center(child: CircularProgressIndicator(color: kBlack,),)
                                      : _homePageViewModel.salons.isNotEmpty 
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: _homePageViewModel.salons.length,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children: [
                                                  BeauticiansListWebView(salonDetails: _homePageViewModel.salons[index],),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                ],
                                              );
                                            },
                                          ) 
                                        : const Center(child: Text("No Salons/Beauticians/Services Found :(", style: TextStyle(color: kBlack, fontWeight: FontWeight.bold, fontSize: 18),),),
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Best Braids in Dallas, TX",
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "Cosmetropolis > Dallas, TX > Braids",
                                              style: GoogleFonts.poppins(
                                                fontSize: 12.sp,
                                                color: kdescription,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: _homePageViewModel.salons.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          BeauticiansListMobView(salonDetails: _homePageViewModel.salons[index],),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 700,
                        child: SizedBox(
                          width: 20.w,
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 1000,
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BeauticiansSideFilter(upperFilterIndex: selected, selectedService: selectedService,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Footer(),
          ],
        ),
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
