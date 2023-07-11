import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarningsTable extends StatelessWidget {
  const EarningsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: const MaterialStatePropertyAll(kselected),
        columns: [
          DataColumn(label: Text("Order ID", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Fee", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Tip", style: urbanist600(kBlack, 14))),
          DataColumn(
              label: Text("Payment Mood", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Booking", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Status", style: urbanist600(kBlack, 14))),
          DataColumn(
              label: Text("Appointment", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Total", style: urbanist600(kBlack, 14))),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 2
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 3
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 4
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Unpaid",
                      style: urbanist600(Colors.red, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 5
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 6
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 7
          DataRow(
            cells: [
              DataCell(Text("#89895682", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$20", style: urbanist500(kGrey, 12))),
              DataCell(Text("Credit Card", style: urbanist500(kGrey, 12))),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Unpaid",
                      style: urbanist600(Colors.red, 10),
                    )
                  ],
                ),
              ),
              //Date time column
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$220", style: urbanist500(kBlack, 12))),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),
        ],
      ),
    );
  }
}

class PayoutsTable extends StatelessWidget {
  const PayoutsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: const MaterialStatePropertyAll(kselected),
        columns: [
          DataColumn(
              label: Text("Payout Date", style: urbanist600(kBlack, 16))),
          DataColumn(label: Text("Amount", style: urbanist600(kBlack, 16))),
          DataColumn(label: Text("Mode", style: urbanist600(kBlack, 16))),
          DataColumn(label: Text("Total", style: urbanist600(kBlack, 16))),
          DataColumn(label: Text("Status", style: urbanist600(kBlack, 16))),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),

              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 2
          DataRow(
            cells: [
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),

              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 3
          DataRow(
            cells: [
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),

              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 4
          DataRow(
            cells: [
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),

              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 5
          DataRow(
            cells: [
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),

              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),

          //row 6
          DataRow(
            cells: [
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("20-04-2023", style: urbanist500(kBlack, 12)),
                  Text("12:30 PM", style: urbanist400(kdescription, 10)),
                ],
              )),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("\PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),

              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Paid",
                      style: urbanist600(Colors.green, 10),
                    )
                  ],
                ),
              ),
            ],
            color: const MaterialStatePropertyAll(Colors.white),
          ),
        ],
      ),
    );
  }
}
