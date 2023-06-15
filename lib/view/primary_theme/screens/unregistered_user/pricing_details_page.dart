import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingDetails extends StatelessWidget {
  const PricingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "We believe the basics should be free",
            style: GoogleFonts.urbanist(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Get all the features major booking apps offer for a \$0 monthly fee.",
            style: GoogleFonts.urbanist(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Text(
                "We believe the basics should be free",
                style: GoogleFonts.urbanist(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              DataTable(
                columns: [
                  DataColumn(
                      label: Text(
                    "  ",
                    style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    "Cosmetropolis",
                    style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    "Square",
                    style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    "Acuity",
                    style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    "GlossGenius",
                    style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    "Booksy",
                    style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text("Monthly fee",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ))),
                      DataCell(Text("Free",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ))),
                      DataCell(Text("Free",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ))),
                      DataCell(Text("\$14/mo",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ))),
                      DataCell(Text("\$24/mo",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ))),
                      DataCell(Text("\$29.99/mo",
                          style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ))),
                    ],
                    color:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Footer(),
            ],
          )
        ],
      ),
    );
  }
}
