import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionsPage extends StatefulWidget {
  const PromotionsPage({super.key});

  @override
  State<PromotionsPage> createState() => _PromotionsPageState();
}

class _PromotionsPageState extends State<PromotionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffFEF9ED),
                  borderRadius: BorderRadius.circular(5.r),
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
                            "Promotion Campaigns",
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
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Nec ut faucibus senectus facilisi commodo tempor at.",
                              style: GoogleFonts.urbanist(
                                color: kBlack,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          if (MediaQuery.of(context).size.width < 920)
                            Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15.w,
                                      vertical: 10.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kBlack,
                                      borderRadius: BorderRadius.circular(
                                        5.r,
                                      ),
                                    ),
                                    child: Text(
                                      "Create Promotion",
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
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                color: kBlack,
                                borderRadius: BorderRadius.circular(
                                  5.r,
                                ),
                              ),
                              child: Text(
                                "Create Promotion",
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: SizedBox(
                height: 340.h,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: const PromotionCard(),
                    );
                  },
                ),
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
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 920 ? 92.w : 250.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE5E5E5),
        ),
        image: const DecorationImage(
          image: AssetImage("assets/images/promotion_bg.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$25",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Edit",
                style: GoogleFonts.urbanist(
                  color: kBlue,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "Off",
            style: GoogleFonts.urbanist(
              color: kBlack,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Promotion Demo",
            style: GoogleFonts.urbanist(
              color: kBlack,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            child: Text(
              "26/04/2023",
              style: GoogleFonts.urbanist(
                color: kBlack,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Services",
            style: GoogleFonts.urbanist(
              color: kBlack,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            child: Text(
              "Beard Trim, Deep Conditioning Treatment",
              style: GoogleFonts.urbanist(
                color: kBlack,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.h,
                    ),
                    backgroundColor: kBlack,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: const Text(
                    "Update",
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              // outline button
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.h,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      side: const BorderSide().copyWith(
                        color: kBlack,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: kBlack),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
