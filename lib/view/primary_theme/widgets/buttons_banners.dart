import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget BlackButtonSmall(
    BuildContext context, String text, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: () {
      print(MediaQuery.of(context).size.width);
      onPressed();
    },
    style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(kBlack),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.r))))),
    child: Text(
      text,
      style: GoogleFonts.urbanist(
          fontSize: 12.sp, fontWeight: FontWeight.w400, color: kWhite),
    ),
  );
}
