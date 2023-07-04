import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/beauticians_list_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/blog_page.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "assets/images/banner_p.png",
      width: double.infinity,
      fit: BoxFit.cover,
      // height: MediaQuery.of(context).size.height,
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height, child: image1),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find Best Services Near you",
                    style: GoogleFonts.urbanist(
                      color: kWhite,
                      fontSize: 16.sp,
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
                      child: Container(
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Services or beautician name",
                                  hintStyle: GoogleFonts.urbanist(
                                    color: kGrey,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.search,
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
                                decoration: InputDecoration(
                                  hintText: "Location",
                                  hintStyle: GoogleFonts.urbanist(
                                    color: kGrey,
                                    fontSize: 16.sp,
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
                                decoration: InputDecoration(
                                  hintText: "Date",
                                  hintStyle: GoogleFonts.urbanist(
                                    color: kGrey,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.date_range,
                                    color: kGrey,
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
                                    Get.to(() => const BeauticiansListPage());
                                  },
                                  child: const Text(
                                    "Search",
                                    style: TextStyle(color: kWhite),
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
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Services or beautician name",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: const Icon(
                                Icons.search,
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
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Location",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 16.sp,
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
                          SizedBox(
                            height: 10.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Date",
                              hintStyle: GoogleFonts.urbanist(
                                color: kGrey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: const Icon(
                                Icons.date_range,
                                color: kGrey,
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
                              onPressed: () {
                                Get.to(() => const BeauticiansListPage());
                              },
                              child: const Text(
                                "Search",
                                style: TextStyle(color: kWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              )
            ],
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
                crossAxisCount: MediaQuery.of(context).size.width > 720 ? 4 : 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                childAspectRatio: MediaQuery.of(context).size.width > 720
                    ? 0.62
                    : MediaQuery.of(context).size.width > 360
                        ? 0.7
                        : 0.8,
              ),
              children: [
                ...List.generate(
                  8,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 15.w),
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
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.r)),
                                child: CachedNetworkImage(
                                  imageUrl: "https://i.imgur.com/mrIm9g9.png",
                                  width: double.infinity,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Braids",
                            style: GoogleFonts.urbanist(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GestureDetector(
              onTap: () => {},
              child: Image.asset(
                "assets/images/home_banner_p.png",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              height: MediaQuery.of(context).size.width > 700 ? 300.h : 250.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => {Get.to(() => const BlogPage())},
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
                              imageUrl:
                                  "https://cdn.pixabay.com/photo/2015/08/23/06/03/dream-catcher-902508__480.jpg",
                              height: MediaQuery.of(context).size.width > 700
                                  ? 150.h
                                  : 100.h,
                              width: MediaQuery.of(context).size.width > 700
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
                              fontSize: 16.sp,
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
}
