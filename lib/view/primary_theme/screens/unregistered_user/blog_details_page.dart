import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogDetailsPage extends StatelessWidget {
  const BlogDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: 13.sp,
                ),
              ),
              SizedBox(
                width: 0.w,
              ),
              Text(
                "Blog",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kBlack,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: 13.sp,
                ),
              ),
              Text(
                "Blog Details",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(
                    0xffFFBB0D,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Beyond Beauty — 1 in 3 Americans View Their Stylist as a Therapist",
                    style: GoogleFonts.urbanist(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                      color: kBlack,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/logo_small.png",
                        height: 50.h,
                        width: 50.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cosmetropolis",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kBlack,
                            ),
                          ),
                          Text(
                            "May 20, 2021",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          onPressed: () {},
                          icon: Icon(
                            Icons.insert_link_sharp,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          focusColor: const Color(0xffF1F1F1),
                          autofocus: true,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          focusColor: const Color(0xffF1F1F1),
                          autofocus: true,
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_border,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          focusColor: const Color(0xffF1F1F1),
                          autofocus: true,
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    child: CachedNetworkImage(
                      imageUrl: "https://i.imgur.com/VQaFfbm.jpg",
                      width: double.infinity,
                      height: 450.h,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Introduction",
                    style: GoogleFonts.urbanist(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: kdark,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "May is fast approaching, and with it comes Mental Health Awareness Month. While there are countless ways to prioritize mental well-being, one activity is treating yourself to a trip to the salon. Our research has shown that many Americans view their salon visits as a needed form of self-care. With many using this pampered downtime as a chance to confide in their stylists, clients tend to think of their beauty Pros as a kind of therapist, too. But what makes a trip to the salon so therapeutic, and just how common is it for people to treat their stylists like therapists? To find out, we conducted a survey of salon-goers across the country to explore the surprising ways that people treat a simple haircut or manicure as a two-in-one therapy session. For the survey, we defined “stylist” broadly, including hair stylists, nail technicians, laser treatment beautician, facialists, and even tattoo artists. So, join us as we delve into what makes a simple visit to the salon a positive step toward prioritizing mental health. Collaboratively deploy intuitive partnerships whereas customized e-markets. Energistically maintain performance based strategic theme areas whereas just in time methodologies. Phosfluorescently drive functionalized intellectual capital and.",
                    style: GoogleFonts.poppins(
                      fontSize: 11.5.sp,
                      fontWeight: FontWeight.w400,
                      color: kdescription,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "What Makes a Trip to the Salon So Therapeutic?",
                    style: GoogleFonts.urbanist(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: kdark,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "May is fast approaching, and with it comes Mental Health Awareness Month. While there are countless ways to prioritize mental well-being, one activity is treating yourself to a trip to the salon. Our research has shown that many Americans view their salon visits as a needed form of self-care. With many using this pampered downtime as a chance to confide in their stylists, clients tend to think of their beauty Pros as a kind of therapist, too. But what makes a trip to the salon so therapeutic, and just how common is it for people to treat their stylists like therapists? To find out, we conducted a survey of salon-goers across the country to explore the surprising ways that people treat a simple haircut or manicure as a two-in-one therapy session. For the survey, we defined “stylist” broadly, including hair stylists, nail technicians, laser treatment beautician, facialists, and even tattoo artists. So, join us as we delve into what makes a simple visit to the salon a positive step toward prioritizing mental health. Collaboratively deploy intuitive partnerships whereas customized e-markets. Energistically maintain performance based strategic theme areas whereas just in time methodologies. Phosfluorescently drive functionalized intellectual capital and.",
                    style: GoogleFonts.poppins(
                      fontSize: 11.5.sp,
                      fontWeight: FontWeight.w400,
                      color: kdescription,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Conclusion",
                    style: GoogleFonts.urbanist(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: kdark,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "For those seeking more than just a haircut or manicure, the salon can be a sanctuary. For many Americans, the salon is a place where we can discuss topics beyond just beauty and style tips — we can also share our thoughts and emotions. As we enter Mental Health Awareness Month, it’s important to recognize the value of these safe spaces and the comfort they provide to those seeking a deeper conversation. At Cosmetropolis, we understand the importance of self-care and how it can emotionally uplift clients. Our platform allows you to find a stylist who not only understands your beauty needs, but also values your emotional well-being. In a world where it’s easy to feel alone, finding a trusted stylist can be a valuable source of support. So whether you’re in the mood for lash extensions or a massage, go ahead and treat yourself to a therapeutic salon experience and prioritize your mental health at the same time.",
                    style: GoogleFonts.poppins(
                      fontSize: 11.5.sp,
                      fontWeight: FontWeight.w400,
                      color: kdescription,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/logo_small.png",
                        height: 50.h,
                        width: 50.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cosmetropolis",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kBlack,
                            ),
                          ),
                          Text(
                            "May 20, 2021",
                            style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          onPressed: () {},
                          icon: Icon(
                            Icons.insert_link_sharp,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          focusColor: const Color(0xffF1F1F1),
                          autofocus: true,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          focusColor: const Color(0xffF1F1F1),
                          autofocus: true,
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_border,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        radius: 15.r,
                        child: IconButton(
                          color: kdescription,
                          focusColor: const Color(0xffF1F1F1),
                          autofocus: true,
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: const Color(0xff3D48D5),
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "Related Articles",
                    style: GoogleFonts.urbanist(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: kdark,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.w),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width > 700
                          ? 350.h
                          : 300.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return Container(
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
                                    imageUrl: "https://i.imgur.com/AbdCKXZ.png",
                                    height:
                                        MediaQuery.of(context).size.width > 700
                                            ? 160.h
                                            : 100.h,
                                    width:
                                        MediaQuery.of(context).size.width > 700
                                            ? 100.w
                                            : 170.w,
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Text(
                                      "12 April, 2023",
                                      style: GoogleFonts.urbanist(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: kdescription,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "Client Relationship",
                                      style: GoogleFonts.urbanist(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffFFBB0D),
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
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
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kBlack,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                  ),
                                  child: Text(
                                    "Read More",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Image.asset(
                      "assets/images/home_banner_p.png",
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
