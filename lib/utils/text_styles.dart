import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle urbanist400(Color color, int size) {
  return GoogleFonts.urbanist(
    fontWeight: FontWeight.w400,
    fontSize: size.sp,
    color: color,
  );
}

TextStyle urbanist500(Color color, int size) {
  return GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: size.sp,
    color: color,
  );
}

TextStyle urbanist600(Color color, int size) {
  return GoogleFonts.urbanist(
    fontWeight: FontWeight.w600,
    fontSize: size.sp,
    color: color,
  );
}
