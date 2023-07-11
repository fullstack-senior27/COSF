import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClintsPage extends StatefulWidget {
  const ClintsPage({super.key});

  @override
  State<ClintsPage> createState() => _ClintsPageState();
}

class _ClintsPageState extends State<ClintsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).size.width < 801,
        child: GestureDetector(
            onTap: () {
              filterBottomSheet(
                  context,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: kdescription,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )),
                          SizedBox(
                            height: 20.h,
                          ),
                          sideBar(context),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                  ));
            },
            child: const CircleAvatar(
              backgroundColor: kBlack,
              child: Icon(
                Icons.search_outlined,
                color: kWhite,
              ),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: MediaQuery.of(context).size.width > 800 ? 1 : 0,
                      child: Visibility(
                          visible: MediaQuery.of(context).size.width > 800,
                          child: sideBar(context))),
                  Visibility(
                      visible: MediaQuery.of(context).size.width > 800,
                      child: SizedBox(width: 10.w)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/export.png",
                                        height: 25.h,
                                        // width: 25.w,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Visibility(
                                        visible:
                                            MediaQuery.of(context).size.width >
                                                530,
                                        child: Text(
                                          "Export Client List",
                                          style: urbanist500(kBlack, 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/import.png",
                                        height: 25.h,
                                        // width: 20.w,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Visibility(
                                        visible:
                                            MediaQuery.of(context).size.width >
                                                530,
                                        child: Text(
                                          "Import Phone Contacts",
                                          style: urbanist500(kBlack, 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              // width: double.infinity,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: kBlack,
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person_add_alt,
                                        color: kWhite,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Visibility(
                                        visible:
                                            MediaQuery.of(context).size.width >
                                                530,
                                        child: Text(
                                          "Add a Client",
                                          style: urbanist500(kWhite, 12),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: klines)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 20.h),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: Text(
                                    "Clients Details",
                                    style: urbanist600(kBlack, 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Divider(
                                  color: klines,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/add_photo.png",
                                          height: 35.h,
                                          width: 35.w,
                                        ),
                                        Text(
                                          "Add Photo",
                                          style: urbanist500(kBlack, 12),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/add_note.png",
                                          height: 35.h,
                                          width: 35.w,
                                        ),
                                        Text(
                                          "Add Note",
                                          style: urbanist500(kBlack, 12),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/icons/book_appointment.png",
                                          height: 35.h,
                                          width: 35.w,
                                        ),
                                        Text(
                                          "Book Next",
                                          style: urbanist500(kBlack, 12),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: klines,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: const NetworkImage(
                                              "https://tse1.mm.bing.net/th?id=OIP.zVsxx9pE2k-e6iTe5DMFwAHaGv&pid=Api&P=0&h=180"),
                                          radius: 60.r,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Visibility(
                                          visible: MediaQuery.of(context)
                                                  .size
                                                  .width <
                                              501,
                                          child: Container(
                                            // width: double.infinity,
                                            height: 40.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7.r),
                                                border:
                                                    Border.all(color: kBlue)),
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.edit_note_outlined,
                                                      color: kBlue,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      style: urbanist600(
                                                          kBlue, 14),
                                                    )
                                                  ],
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Eleanor Pena",
                                          style: urbanist600(kBlack, 16),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Eleanorexaple123@gmail.com",
                                          style: urbanist400(kdescription, 12),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "(603) 555-0123",
                                          style: urbanist400(kdescription, 12),
                                        ),
                                        Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                501,
                                            child: SizedBox(
                                              height: 20.h,
                                            )),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: kBlue,
                                              radius: 20.r,
                                              child: const Icon(
                                                Icons.message_outlined,
                                                color: kWhite,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            CircleAvatar(
                                              backgroundColor: kBlue,
                                              radius: 20.r,
                                              child: const Icon(
                                                Icons.email_outlined,
                                                color: kWhite,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            CircleAvatar(
                                              backgroundColor: kBlue,
                                              radius: 20.r,
                                              child: const Icon(
                                                Icons.call_outlined,
                                                color: kWhite,
                                              ),
                                            ),
                                            // Spacer(),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width >
                                              500,
                                      child: Container(
                                        // width: double.infinity,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.r),
                                            border: Border.all(color: kBlue)),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.edit_note_outlined,
                                                  color: kBlue,
                                                ),
                                                Text(
                                                  "Edit",
                                                  style: urbanist600(kBlue, 14),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                )
                                //add tab bar here with 4 tabs
                                ,
                                DefaultTabController(
                                  length: 4, // Number of tabs
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const TabBar(
                                        physics: BouncingScrollPhysics(),
                                        isScrollable: true,
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        // controller: _tabcontroller,
                                        indicatorColor: kBlack,
                                        labelColor: kBlack,
                                        unselectedLabelColor: kGrey,
                                        dividerColor: klines,
                                        tabs: [
                                          Tab(
                                              icon: Text(
                                            'All',
                                          )),
                                          Tab(icon: Text('Notes')),
                                          Tab(
                                              icon: Text(
                                            'Appointments',
                                            // maxLines: 1,
                                          )),
                                          Tab(icon: Text('Photos')),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      SizedBox(
                                        height: 800.h,
                                        child: TabBarView(
                                          children: [
                                            // Content for the first tab
                                            Column(
                                              children: [
                                                ListView.builder(
                                                  itemCount: 3,
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Column(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5.w),
                                                              child: Row(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius:
                                                                        30.r,
                                                                    backgroundColor:
                                                                        kBlack,
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          5.w),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.r),
                                                                      color: const Color(
                                                                          0xffCED2FF),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 5
                                                                              .w,
                                                                          vertical:
                                                                              5.h),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          const Icon(
                                                                            Icons.photo_outlined,
                                                                            color:
                                                                                kBlue,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                2.w,
                                                                          ),
                                                                          Text(
                                                                            "Client Photo",
                                                                            style:
                                                                                urbanist500(kBlue, 14),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Spacer(),
                                                                  Text(
                                                                    "24 April 2023",
                                                                    style: urbanist400(
                                                                        kdescription,
                                                                        14),
                                                                  )
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

                                                //Notes Section>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ListView.builder(
                                                  itemCount: 2,
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      5.w),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.r),
                                                                      color:
                                                                          kdisable,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 5
                                                                              .w,
                                                                          vertical:
                                                                              5.h),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          const Icon(
                                                                            Icons.photo_outlined,
                                                                            color:
                                                                                kBlack,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                2.w,
                                                                          ),
                                                                          Text(
                                                                            "Note",
                                                                            style:
                                                                                urbanist500(kBlack, 14),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "24 April 2023",
                                                                    style: urbanist400(
                                                                        kdescription,
                                                                        14),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Text(
                                                                "Lorem ipsum dolor sit amet consectetur. Nam eu interdum id sed vitae egestas.",
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: urbanist400(
                                                                    kdescription,
                                                                    12),
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Divider(
                                                          color: klines,
                                                        )
                                                      ],
                                                    );
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),

                                                SizedBox(
                                                  height: 182.h,
                                                  child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 5,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 3.w),
                                                        child: Container(
                                                          // height: 180.h,
                                                          width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width >
                                                                  700
                                                              ? 110.w
                                                              : MediaQuery.of(context)
                                                                          .size
                                                                          .width >
                                                                      550
                                                                  ? 130.w
                                                                  : 170.w,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r),
                                                            color: kselected,
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.w),
                                                                child: Row(
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          20.r,
                                                                      backgroundImage:
                                                                          const NetworkImage(
                                                                              "https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=180"),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          3.w,
                                                                    ),
                                                                    Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          "Akeba Thomson",
                                                                          style: urbanist500(
                                                                              kBlack,
                                                                              14),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          maxLines:
                                                                              2,
                                                                        ),
                                                                        Visibility(
                                                                          visible:
                                                                              MediaQuery.of(context).size.width < 1041,
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                height: 10.h,
                                                                                width: 10.w,
                                                                                decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 20.h,
                                                                              ),
                                                                              Text(
                                                                                "Pending",
                                                                                style: urbanist600(Colors.red, 10),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    Spacer(),
                                                                    Visibility(
                                                                      visible: MediaQuery.of(context)
                                                                              .size
                                                                              .width >
                                                                          1040,
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                10.h,
                                                                            width:
                                                                                10.w,
                                                                            decoration:
                                                                                const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                20.h,
                                                                          ),
                                                                          Text(
                                                                            "Pending",
                                                                            style:
                                                                                urbanist600(Colors.red, 10),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.w),
                                                                child: Text(
                                                                    "Services",
                                                                    style: urbanist500(
                                                                        kBlack,
                                                                        14)),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.w),
                                                                child: Text(
                                                                  "Services hair cut, hair color, shawing",
                                                                  style:
                                                                      urbanist400(
                                                                          kBlack,
                                                                          12),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.w),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "20-04-2023",
                                                                        style: urbanist500(
                                                                            kBlack,
                                                                            14)),
                                                                    Text(
                                                                        "\$120.00",
                                                                        style: urbanist500(
                                                                            kBlack,
                                                                            14)),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.w),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "12:30 PM",
                                                                        style: urbanist400(
                                                                            kdescription,
                                                                            10)),
                                                                    Text("Paid",
                                                                        style: urbanist400(
                                                                            kdescription,
                                                                            10)),
                                                                  ],
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              Container(
                                                                height: 10.h,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .red,
                                                                    borderRadius: BorderRadius.only(
                                                                        bottomLeft:
                                                                            Radius.circular(10
                                                                                .r),
                                                                        bottomRight:
                                                                            Radius.circular(10.r))),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                SizedBox(height: 20.h),
                                                SizedBox(
                                                  height: 120.h,
                                                  child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 10,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 3.w),
                                                        child: Container(
                                                          height: 120.h,
                                                          //
                                                          width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width >
                                                                  1200
                                                              ? 40.w
                                                              : MediaQuery.of(context)
                                                                          .size
                                                                          .width >
                                                                      800
                                                                  ? 60.w
                                                                  : MediaQuery.of(context)
                                                                              .size
                                                                              .width >
                                                                          500
                                                                      ? 80.w
                                                                      : 140.w,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.r),
                                                              image: const DecorationImage(
                                                                  image: NetworkImage(
                                                                      "https://tse3.mm.bing.net/th?id=OIP.qYQ35uBFjE3Izk9sx8v0HwHaE_&pid=Api&P=0&h=180"),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                            // Content for the second tab
                                            Center(child: Text('Tab 2')),
                                            // Content for the third tab
                                            Center(child: Text('Tab 3')),
                                            // Content for the fourth tab
                                            Center(child: Text('Tab 4')),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sideBar(BuildContext context) {
  return Column(
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
        height: 10.h,
      ),
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: klines)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              children: [
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
                                    backgroundColor: kBlack,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Eleanor Pena",
                                    style: urbanist400(kBlack, 14),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Spacer(),
                                  BlackButton(context, "Invite", () {}),
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
                Text(
                  "Add your clients and invite them to book an appointment",
                  textAlign: TextAlign.center,
                  style: urbanist600(kBlack,
                      MediaQuery.of(context).size.width > 850 ? 20 : 16),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      color: kBlack,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.person_add_alt,
                              color: kWhite,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Add Clients From Contacts",
                              style: urbanist500(kWhite, 12),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        border: Border.all(color: kBlack)),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.person_add_alt,
                              color: kBlack,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Add New Client",
                              style: urbanist500(kBlack, 12),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffE0F3FD),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3.w),
                        child: Column(
                          children: [
                            Text(
                              "Learn how to gain more clients",
                              textAlign: TextAlign.center,
                              style: urbanist400(kBlack, 14),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Get More Clients",
                              style: urbanist600(kBlack, 14),
                            )
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffFEF9ED),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3.w),
                        child: Column(
                          children: [
                            Text(
                              "What do my clients see when they book?",
                              textAlign: TextAlign.center,
                              style: urbanist400(kBlack, 14),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Show Me",
                              style: urbanist600(kBlack, 14),
                            )
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Need help importing your client list? We can help.\nSend your client list Here",
                  style: urbanist500(kBlack, 10),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )),
    ],
  );
}
