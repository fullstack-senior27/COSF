import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_collapse/image_collapse.dart';

class ServiceDetailsPage extends StatefulWidget {
  const ServiceDetailsPage({super.key});

  @override
  State<ServiceDetailsPage> createState() => _ServiceDetailsPageState();
}

class _ServiceDetailsPageState extends State<ServiceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                    "assets/icons/verify.png",
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
                  "https://images.news18.com/ibnlive/uploads/2022/11/001-10-1-166782742016x9.png",
                  "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                  "https://images.unsplash.com/photo-1560066984-138dadb4c035?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                  "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60",
                  "https://plus.unsplash.com/premium_photo-1677616798094-d34c85b61e36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXR5JTIwc2Fsb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1200&q=60"
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: ActionChip(
                        backgroundColor: kWhite,
                        side: const BorderSide(
                          color: kdisable,
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.r),
                          ),
                        ),
                        label: const Text(
                          "Natural Hair",
                          style: TextStyle(
                            color: kdarkPrime,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
