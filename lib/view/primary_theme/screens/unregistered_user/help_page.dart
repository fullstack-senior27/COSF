import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  final int? nav;
  const HelpPage({super.key, this.nav});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  List<String> ques = [
    'What is a Payment Gateway?',
    "Do I need to pay to Instapay even when there is no transaction going on in my Beautician?",
    "What platforms does Instapay payment gateway support?",
    "Does Instapay provide international payments support?",
    "Is there any setup fee or annual maintainance fee that I need to pay regularly?",
  ];
  List<String> ans = [
    "A payment gateway is an ecommerce service that processes online payments for online as well as offline Beautician. Payment gateways help accept payments by transferring key information from their merchant websites to issuing banks, card associations and online wallet players.Payment gateways play a vital role in the online transaction process, which is the realisation of value, and hence are seen as an important pillar of ecommerce.",
    "While many Americans find emotional support during a visit, it isnt the top reason cited for why salon visits are therapeutic. So, what exactly makes a trip to the salon so emotionally appealing? The top reason cited by respondents was the uplifting change in appearance (38%), followed closely by the physical touch and pampering (34%). an ecommerce service that processes online payments for online as well as offline Beautician. Payment gateways help accept payments by transferring key information from their merchant websites to issuing banks, card associations and online wallet players. Payment gateways play a vital role in the online transaction process, which is the realisation of value, and hence are seen as an important pillar of ecommerce.",
    "Does Instapay provide international payments support?",
    "Is there any setup fee or annual maintainance fee that I need to pay regularly?",
    "Is there any setup fee or annual maintainance fee that I need to pay regularly?",
  ];
  int selectedQues = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.nav == 1
          ? AppBar(
              backgroundColor: kWhite,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: kBlack,
                ),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 17.w,
              ),
              child: Text(
                "Help",
                style: GoogleFonts.urbanist(
                  color: kBlack,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // qustions and answer section
            if (MediaQuery.of(context).size.width > 700)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // radiobox list tile with ios arrow in the end
                            ...List.generate(
                              ques.length,
                              (index) => ListTile(
                                onTap: () {
                                  selectedQues = index;
                                  setState(() {});
                                },
                                contentPadding: EdgeInsets.all(2.w),
                                tileColor: index == selectedQues
                                    ? const Color(0xffF2FBFF)
                                    : kWhite,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.r),
                                  side: const BorderSide(
                                    color: Color(0xffE5E5E5),
                                    width: 0.3,
                                  ),
                                ),
                                title: Text(
                                  ques[index],
                                  style: GoogleFonts.urbanist(
                                    color: kdark,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: index == selectedQues
                                      ? kBlue
                                      : kBlue.withOpacity(0.2),
                                ),
                                leading: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 10.r,
                                    backgroundColor: index == selectedQues
                                        ? kBlue
                                        : kBlue.withOpacity(0.2),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: const Color(0xffF2FBFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                          border: Border.all(
                            color: const Color(0xffE5E5E5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ques[selectedQues],
                              style: GoogleFonts.urbanist(
                                color: kdark,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              ans[selectedQues],
                              style: GoogleFonts.urbanist(
                                color: k2e,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            else
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  children: [
                    ...List.generate(
                      ques.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: ExpansionTile(
                          onExpansionChanged: (value) {
                            if (value) {
                              selectedQues = index;
                              setState(() {});
                            }
                          },

                          collapsedBackgroundColor: kdisable.withOpacity(0.1),

                          backgroundColor: const Color(0xffF2FBFF),
                          tilePadding: EdgeInsets.only(
                            left: 10.w,
                            top: 10.h,
                            right: 10.w,
                          ),
                          childrenPadding: EdgeInsets.all(10.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            side: const BorderSide(
                              color: Color(0xffE5E5E5),
                              width: 0.5,
                            ),
                          ),
                          // ignore: avoid_bool_literals_in_conditional_expressions
                          initiallyExpanded:
                              index == selectedQues ? true : false,
                          title: Text(
                            ques[index],
                            style: GoogleFonts.urbanist(
                              color: kdark,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          children: [
                            Text(
                              ans[index],
                              style: GoogleFonts.urbanist(
                                color: k2e,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            // search section
            ,
            SizedBox(
              height: 100.h,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF2FBFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // search bar section
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF1F1F1),
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Knowledge base",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                            ),
                            child: SizedBox(
                              height: 40.h,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Search...",
                                        hintStyle: GoogleFonts.urbanist(
                                          color: kBlack.withOpacity(0.5),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        suffixIcon: Icon(
                                          Icons.search,
                                          color: kBlack.withOpacity(0.5),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffCCCCCC),
                                          ),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffCCCCCC),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // search result section
                  ...List.generate(
                    2,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            index == 0 ? "For Clients" : "For Beauticians",
                            style: GoogleFonts.urbanist(
                              color: kBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GridView.count(
                            crossAxisCount:
                                MediaQuery.of(context).size.width > 1060
                                    ? 3
                                    : MediaQuery.of(context).size.width > 600
                                        ? 2
                                        : 1,
                            crossAxisSpacing: 10.w,
                            mainAxisSpacing: 10.w,
                            childAspectRatio:
                                MediaQuery.of(context).size.width > 700
                                    ? 2
                                    : MediaQuery.of(context).size.width > 600
                                        ? 1.2
                                        : 3,
                            shrinkWrap: true,
                            children: [
                              ...List.generate(
                                6,
                                (index) => Container(
                                  decoration: BoxDecoration(
                                    color: kWhite,
                                    border: Border(
                                      top: BorderSide(
                                        color: kBlue,
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10.h,
                                        horizontal: 10.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Getting Started on Cosmetropolis",
                                            style: GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          ...List.generate(
                                            3,
                                            (index) => Text(
                                              " • Using the Cosmetropolis Help Center",
                                              style: GoogleFonts.urbanist(
                                                color: kBlack,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Footer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
