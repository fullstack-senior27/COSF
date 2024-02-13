import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CopyField extends StatelessWidget {
  const CopyField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40.h,
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Cosmetropolis.com/",
                hintStyle: urbanist400(kGrey, 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
              color: kBlack,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(child: Text("Copy", style: urbanist600(kWhite, 12))),
          ),
        ),
      ],
    );
  }
}

class BlackButtonSmall extends StatelessWidget {
  final String text;
  const BlackButtonSmall({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(MediaQuery.of(context).size.width);
      },
      child: Container(
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          color: kBlack,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(child: Text(text, style: urbanist600(kWhite, 12))),
      ),
    );
  }
}

class HelpfulBlogsSection extends StatelessWidget {
  const HelpfulBlogsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Helpful blog posts",
          style: urbanist600(kBlack, 16),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://tse1.mm.bing.net/th?id=OIP.Q98jkGR5hBPSoR3x4aPGSAHaHa&pid=Api&P=0&h=180",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Beyond Beauty — 1 in 3 Americans View Their Stylist",
                    style: urbanist500(kBlack, 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "12 April, 2023",
                    style: urbanist400(kdescription, 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://tse4.mm.bing.net/th?id=OIP.LvecETOAVmYiwukoi9SDLQHaEK&pid=Api&P=0&h=180",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Beyond Beauty — 1 in 3 Americans View Their Stylist",
                    style: urbanist500(kBlack, 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "12 April, 2023",
                    style: urbanist400(kdescription, 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://tse4.mm.bing.net/th?id=OIP.j4SvRBaGAhJxK-g-q6pNBAHaDt&pid=Api&P=0&h=180",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Beyond Beauty — 1 in 3 Americans View Their Stylist",
                    style: urbanist500(kBlack, 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "12 April, 2023",
                    style: urbanist400(kdescription, 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://tse1.mm.bing.net/th?id=OIP.QPrlnFDnTsbLTp-tusCrqgHaE8&pid=Api&P=0&h=180",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Beyond Beauty — 1 in 3 Americans View Their Stylist",
                    style: urbanist500(kBlack, 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "12 April, 2023",
                    style: urbanist400(kdescription, 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
