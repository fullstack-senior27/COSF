import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class AddClient extends StatelessWidget {
  const AddClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Number", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Mobile Number",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Home Number", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Home Number",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Street Address*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Street Address",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Suite, Apt, etc. (optional)*",
                        style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Suite, Apt, etc. (optional)",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "City",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("State*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "State",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ZIP*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "ZIP",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Birthday*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Birthday",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: BlackButton(context, "Save", () {
            Navigator.pop(context);
          }),
        )
      ],
    );
  }
}

class EditClient extends StatelessWidget {
  const EditClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Block Client",
                              style: urbanist600(kBlack, 16),
                            ),
                            const Icon(
                              Icons.close,
                              color: kGrey,
                            )
                          ],
                        ),
                        backgroundColor: Color(0xfff8f8f8),
                        content: SingleChildScrollView(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width > 900
                                  ? 400
                                  : MediaQuery.of(context).size.width * 0.8,
                              child: MergeClient()),
                        )
                        // actions: [

                        // ],
                        );
                  },
                );
              },
              child: Column(
                children: [
                  Icon(Icons.merge_type_outlined, color: kBlack, size: 25.sp),
                  SizedBox(height: 5.h),
                  Text("Merge", style: urbanist500(kBlack, 12)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Block Client",
                            style: urbanist600(kBlack, 16),
                          ),
                          const Icon(
                            Icons.close,
                            color: kGrey,
                          )
                        ],
                      ),
                      backgroundColor: Color(0xfff8f8f8),
                      content: SingleChildScrollView(
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width > 900
                                ? 400
                                : MediaQuery.of(context).size.width * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Please add a reason for blocking this client",
                                  style: urbanist400(kBlack, 12),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Reason*", style: urbanist500(kBlack, 16)),
                                SizedBox(height: 5.h),
                                TextFormField(
                                  maxLines: 4,
                                  decoration: InputDecoration(
                                      hintText: "Type reason",
                                      hintStyle: urbanist400(kGrey, 14),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.r),
                                        borderSide:
                                            const BorderSide(color: kGrey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.r),
                                        borderSide: BorderSide(),
                                      )),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      Expanded(
                                        child: SizedBox(
                                          height: 40.h,
                                          width: double.infinity,
                                          child: BlackOutlineButton(
                                              context, "Cancel", () {
                                            Navigator.pop(context);
                                          }),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: 40.h,
                                          width: double.infinity,
                                          child: BlackButton(context, "Submit",
                                              () {
                                            Navigator.pop(context);
                                          }),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      // actions: [

                      // ],
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Icon(Icons.block, color: kBlack, size: 25.sp),
                  SizedBox(height: 5.h),
                  Text("Block", style: urbanist500(kBlack, 12)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Confirm",
                            style: urbanist600(kBlack, 16),
                          ),
                          const Icon(
                            Icons.close,
                            color: kGrey,
                          )
                        ],
                      ),
                      backgroundColor: Color(0xfff8f8f8),
                      content: SingleChildScrollView(
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width > 900
                                ? 400
                                : MediaQuery.of(context).size.width * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Are you sure you want to delete this client?\nThere's no undo!",
                                  style: urbanist400(kBlack, 14),
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                                SizedBox(
                                    height: 40.h,
                                    width: double.infinity,
                                    child:
                                        BlackButton(context, "Delete", () {})),
                                SizedBox(height: 10.h),
                                SizedBox(
                                    height: 40.h,
                                    width: double.infinity,
                                    child: BlackOutlineButton(
                                        context, "Cancel", () {}))
                              ],
                            )),
                      ),
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Icon(Icons.delete_outline_outlined,
                      color: kBlack, size: 25.sp),
                  SizedBox(height: 5.h),
                  Text("Delete", style: urbanist500(kBlack, 12)),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Number", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Mobile Number",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Home Number", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Home Number",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Street Address*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Street Address",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Suite, Apt, etc. (optional)*",
                        style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Suite, Apt, etc. (optional)",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "City",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("State*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "State",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ZIP*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "ZIP",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Birthday*", style: urbanist500(kBlack, 16)),
                    SizedBox(height: 5.h),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Birthday",
                          hintStyle: urbanist400(kGrey, 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: const BorderSide(color: kGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: BlackButton(context, "Save", () {
            Navigator.pop(context);
          }),
        )
      ],
    );
  }
}

class MergeClient extends StatelessWidget {
  const MergeClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: kselected,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80.r),
                borderSide: const BorderSide(
                  color: klines,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80.r),
                borderSide: const BorderSide(
                  color: klines,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80.r),
                borderSide: const BorderSide(
                  color: klines,
                )),
            prefixIcon: Icon(
              Icons.search,
              color: kdescription,
            ),
            hintText: 'Search name or phone number',
            // contentPadding: EdgeInsets.symmetric(
            //     horizontal: 16.h, vertical: 12.w),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 20.r,
                              backgroundImage: NetworkImage(
                                  "https://tse3.mm.bing.net/th?id=OIP.ZqRQho6x1d-WhyN6LoVLggHaJQ&pid=Api&P=0&h=180")),
                          SizedBox(width: 5.w),
                          Text(
                            "Eleanor Pena",
                            style: urbanist400(kBlack, 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Spacer(),
                          BlackButton(context, "Merge", () {}),
                        ],
                      ),
                    ),
                    const Divider(
                      color: klines,
                    )
                  ],
                )
              ],
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: BlackOutlineButton(context, "Cancel", () {
                    Navigator.pop(context);
                  }),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: BlackButton(context, "Merge", () {
                    Navigator.pop(context);
                  }),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class AddPhoto extends StatelessWidget {
  const AddPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: kLightBlue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/icons/add_photo.png", height: 30.sp),
                SizedBox(
                  height: 10.h,
                ),
                Text("Upload From Your Device", style: urbanist600(kBlack, 16)),
                SizedBox(
                  height: 10.h,
                ),
                BlackButton(context, "Upload Photo", () {})
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: double.infinity,
          color: kLightBlue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/icons/add_photo.png", height: 30.sp),
                SizedBox(
                  height: 10.h,
                ),
                Text("Import From Instagram", style: urbanist600(kBlack, 16)),
                SizedBox(
                  height: 10.h,
                ),
                BlackButton(context, "Import From Instagram", () {})
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: kselected,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/icons/add_photo.png", height: 30.sp),
                SizedBox(
                  height: 10.h,
                ),
                Text("Sync Instagram Photos", style: urbanist600(kBlack, 16)),
                Text(
                  "Syncing uploads your last 30 photos to Cosmetropolis and any new ones you post!",
                  textAlign: TextAlign.center,
                  style: urbanist400(kdescription, 12),
                ),
                SizedBox(
                  height: 10.h,
                ),
                BlackButton(context, "Import From Instagram", () {})
              ],
            ),
          ),
        ),
      ],
    );
  }
}
