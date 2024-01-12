import 'package:cosmetropolis/data/remote/user/models/get_all_user_appointments.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentsTable extends StatelessWidget {
  final GetAllUserAppointments data;
  const AppointmentsTable({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: const MaterialStatePropertyAll(kselected),
        columns: [
          DataColumn(label: Text("Salon Name", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Services", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Time", style: urbanist600(kBlack, 14))),
          DataColumn(
            label: Text("Amount", style: urbanist600(kBlack, 14)),
          ),
          DataColumn(label: Text("Status", style: urbanist600(kBlack, 14))),
          DataColumn(
            label: Text("      Action", style: urbanist600(kBlack, 14)),
          ),
        ],
        rows: [
          ...List.generate(
            data.data?.results?.length ?? 0,
            (index) => DataRow(
              cells: [
                DataCell(
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20.r,
                        child: CircleAvatar(
                          radius: 15.r,
                          backgroundImage: const NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=180",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Row(
                        children: [
                          Text(
                            "${data.data?.results?[index].beautician?.name}",
                            style: urbanist500(
                              kBlack,
                              12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Image.asset(
                            "assets/icons/verify.webp",
                            height: 10.h,
                            width: 10.w,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                DataCell(Row(
                  children: [
                    ...List.generate(
                      data.data?.results?[index].services?.length ?? 0,
                      (ind) => Text(
                        "${data.data?.results?[index].services?[ind].name ?? ""}, ",
                        style: urbanist500(kBlack, 12),
                      ),
                    ),
                  ],
                )),

                DataCell(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "${data.data?.results?[index].date.toString().split(" ")[0]}",
                          style: urbanist500(kBlack, 12)),
                      Text("${data.data?.results?[index].timeSlot}",
                          style: urbanist400(kdescription, 9)),
                    ],
                  ),
                ),
                DataCell(
                  Column(
                    children: [
                      Text("\$${data.data?.results?[index].amount}",
                          style: urbanist500(kBlack, 12)),
                      Text("${data.data?.results?[index].paymentStatus}",
                          style: urbanist400(kdescription, 9)),
                    ],
                  ),
                ),
                //Date time column

                //widget row
                DataCell(
                  Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color:
                              data.data?.results?[index].status == "confirmed"
                                  ? Colors.green
                                  : Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "${data.data?.results?[index].status}",
                        style: urbanist600(
                            data.data?.results?[index].status == "confirmed"
                                ? Colors.green
                                : Colors.red,
                            14),
                      )
                    ],
                  ),
                ),
                DataCell(
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: kGrey.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Action",
                              style: urbanist600(kGrey, 10),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: kGrey,
                              size: 20.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              color: const MaterialStatePropertyAll(Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class EarningsTable extends StatelessWidget {
  final GetAllUserAppointments? data;
  const EarningsTable({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: const MaterialStatePropertyAll(kselected),
        columns: [
          DataColumn(label: Text("Salon Name", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Services", style: urbanist600(kBlack, 14))),
          DataColumn(label: Text("Time", style: urbanist600(kBlack, 14))),
          DataColumn(
            label: Text("Amount", style: urbanist600(kBlack, 14)),
          ),
          DataColumn(label: Text("Status", style: urbanist600(kBlack, 14))),
          DataColumn(
            label: Text("      Action", style: urbanist600(kBlack, 14)),
          ),
        ],
        rows: [
          ...List.generate(
            data?.data?.results?.length ?? 0,
            (index) => DataRow(
              cells: [
                DataCell(
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20.r,
                        child: CircleAvatar(
                          radius: 15.r,
                          backgroundImage: const NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=180",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Row(
                        children: [
                          Text(
                            "${data?.data?.results?[index].beautician?.name}",
                            style: urbanist500(
                              kBlack,
                              12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Image.asset(
                            "assets/icons/verify.webp",
                            height: 10.h,
                            width: 10.w,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                DataCell(Row(children: [
                  ...List.generate(
                    data?.data?.results?[index].services?.length ?? 0,
                    (index) => Text(
                      "${data?.data?.results?[index].services?[index].name}, ",
                      style: urbanist500(kBlack, 12),
                    ),
                  ),
                ])),
                DataCell(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "${data?.data?.results?[index].date.toString().split(" ").first}",
                          style: urbanist500(kBlack, 12)),
                      Text("${data?.data?.results?[index].timeSlot}",
                          style: urbanist400(kdescription, 9)),
                    ],
                  ),
                ),
                DataCell(
                  Column(
                    children: [
                      Text("\$${data?.data?.results?[index].amount}",
                          style: urbanist500(kBlack, 12)),
                      Text(data?.data?.results?[index].paymentStatus ?? "",
                          style: urbanist400(kdescription, 9)),
                    ],
                  ),
                ),
                //Date time column

                //widget row
                DataCell(
                  Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        data?.data?.results?[index].status ?? "",
                        style: urbanist600(Colors.green, 11),
                      )
                    ],
                  ),
                ),
                DataCell(
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: kGrey.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Action",
                              style: urbanist600(kGrey, 10),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: kGrey,
                              size: 20.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              color: const MaterialStatePropertyAll(Colors.white),
            ),
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
            label: Text("Payout Date", style: urbanist600(kBlack, 16)),
          ),
          DataColumn(label: Text("Amount", style: urbanist600(kBlack, 15))),
          DataColumn(label: Text("Mode", style: urbanist600(kBlack, 15))),
          DataColumn(label: Text("Total", style: urbanist600(kBlack, 15))),
          DataColumn(label: Text("Status", style: urbanist600(kBlack, 15))),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("20-04-2023", style: urbanist500(kBlack, 12)),
                    Text("12:30 PM", style: urbanist400(kdescription, 10)),
                  ],
                ),
              ),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
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
          DataRow(
            cells: [
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("20-04-2023", style: urbanist500(kBlack, 12)),
                    Text("12:30 PM", style: urbanist400(kdescription, 10)),
                  ],
                ),
              ),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
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
          DataRow(
            cells: [
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("20-04-2023", style: urbanist500(kBlack, 12)),
                    Text("12:30 PM", style: urbanist400(kdescription, 10)),
                  ],
                ),
              ),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
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
          DataRow(
            cells: [
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("20-04-2023", style: urbanist500(kBlack, 12)),
                    Text("12:30 PM", style: urbanist400(kdescription, 10)),
                  ],
                ),
              ),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
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
          DataRow(
            cells: [
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("20-04-2023", style: urbanist500(kBlack, 12)),
                    Text("12:30 PM", style: urbanist400(kdescription, 10)),
                  ],
                ),
              ),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
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
          DataRow(
            cells: [
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("20-04-2023", style: urbanist500(kBlack, 12)),
                    Text("12:30 PM", style: urbanist400(kdescription, 10)),
                  ],
                ),
              ),
              DataCell(Text("\$200", style: urbanist500(kGrey, 12))),
              DataCell(Text("PayPal", style: urbanist500(kGrey, 12))),
              DataCell(Text("\$50.00", style: urbanist500(kGrey, 12))),
              //widget row
              DataCell(
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
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
