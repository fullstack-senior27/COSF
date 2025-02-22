import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/data/remote/user/models/create_card_model.dart'
    as cardModel;
// import 'package:cosmetropolis/data/remote/user/models/create_card_model.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/navigation/navigation_page.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/user_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/edit_profile_dialog.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/tables.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends ConsumerStatefulWidget {
  const EditProfile({super.key});

  @override
  ConsumerState<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends ConsumerState<EditProfile>
    with SingleTickerProviderStateMixin, BaseScreenView {
  late TabController _tabcontroller;
  late UserViewModel _viewModel;
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(userViewModel)..attachView(this);
    _tabcontroller = TabController(length: 4, vsync: this);

    getData();
  }

  Future<void> getData() async {
    print(SharedPreferenceService.getString(AppConstants.accessToken) ?? "");
    isLoading = true;
    setState(() {});
    await _viewModel.getProfileDetails(
      SharedPreferenceService.getString(AppConstants.accessToken) ?? "",
    );
    await _viewModel.getCardsList(
      SharedPreferenceService.getString(AppConstants.accessToken) ?? "",
    );
    await _viewModel.getAllAppointments(
      SharedPreferenceService.getString(AppConstants.accessToken) ?? "",
    );

    isLoading = false;
    setState(() {});
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  bool addCard = false;
  bool deleteCard = false;

  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  String formatMMYY(String input) {
    // Remove any non-numeric characters
    // ignore: parameter_assignments
    input = input.replaceAll(RegExp(r'\D'), '');

    if (input.isNotEmpty) {
      final year = input.substring(input.length - 2);
      final month = input.substring(0, input.length - 2);
      return '$month/$year';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    dateController.addListener(() {
      final text = dateController.text;
      final formattedText = formatMMYY(text);
      if (text != formattedText) {
        dateController.value = dateController.value.copyWith(
          text: formattedText,
          selection: TextSelection.collapsed(offset: formattedText.length),
        );
      }
    });
    _viewModel = ref.watch(userViewModel);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: Column(
          children: [
            if (TargetPlatform.android == defaultTargetPlatform)
              SizedBox(
                height: 35.h,
              )
            else
              SizedBox(
                height: 0.h,
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 10.h),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Image.asset(
                    "assets/icons/logo_big.webp",
                    width: MediaQuery.of(context).size.width >= 700
                        ? MediaQuery.of(context).size.width * 0.2
                        : MediaQuery.of(context).size.width * 0.3,
                    // height: 50.h,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  if (MediaQuery.of(context).size.width > 650)
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            ref.watch(styleProvider).setSelectedPage("Help");
                            // Get.offAll(() =>  DashboardFreePage());
                          },
                          child: Text(
                            'Help',
                            style: urbanist400(kdescription, 16),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            showMenu(
                              surfaceTintColor: kWhite,
                              context: context,
                              position: MediaQuery.of(context).size.width > 700
                                  ? RelativeRect.fromLTRB(90.w, 62.h, 50.w, 0)
                                  : RelativeRect.fromLTRB(52.w, 62.h, 50.w, 0),
                              items: [
                                const PopupMenuItem<String>(
                                  value: 'My Account',
                                  child: Text('My Account'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Home',
                                  child: Text('Home'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Beauty Blog',
                                  child: Text('Beauty Blog'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'I am a Beautician',
                                  child: Text('I am a Beautician'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Log Out',
                                  child: Text('Log Out'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                switch (value) {
                                  case 'My Account':
                                    break;
                                  case 'Home':
                                    context.go("/");
                                    break;
                                  case 'Beauty Blog':
                                    context.go("/blogs");
                                    break;
                                  case 'I am a Beautician':
                                    ref
                                        .watch(styleProvider)
                                        .setSelectedPage(value);
                                    //  Get.to(() => const DashboardFreePage());

                                    break;
                                  default:
                                }
                              }
                            });
                          },
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundImage: const NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8&pid=Api&P=0&h=180',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        SizedBox(
                          // width: 50.w,
                          height: 35.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            onPressed: () {
                              // Get.to(() => const PricingDetails());
                              context.go("/pricing");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  const AssetImage("assets/icons/gift.webp"),
                                  color: kWhite,
                                  size: 20.sp,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Get \$50 ",
                                  style: GoogleFonts.urbanist(
                                    color: kWhite,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showMenu(
                              surfaceTintColor: kWhite,
                              context: context,
                              position: MediaQuery.of(context).size.width > 700
                                  ? RelativeRect.fromLTRB(90.w, 62.h, 50.w, 0)
                                  : RelativeRect.fromLTRB(52.w, 62.h, 50.w, 0),
                              items: [
                                const PopupMenuItem<String>(
                                  value: 'My Account',
                                  child: Text('My Account'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Home',
                                  child: Text('Home'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Beauty Blog',
                                  child: Text('Beauty Blog'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'I am a Beautician',
                                  child: Text('I am a Beautician'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Log Out',
                                  child: Text('Log Out'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                switch (value) {
                                  case 'My Account':
                                    break;
                                  case 'Home':
                                    context.go("/");
                                    break;
                                  case 'Beauty Blog':
                                    context.go("/blogs");
                                    break;
                                  case 'I am a Beautician':
                                    ref
                                        .watch(styleProvider)
                                        .setSelectedPage(value);
                                    //  Get.to(() => const DashboardFreePage());

                                    break;
                                  default:
                                }
                              }
                            });
                          },
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundImage: const NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8&pid=Api&P=0&h=180',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: kBlack,
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width > 660
                                          ? 220.h
                                          : 140.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://i.imgur.com/cmEfJ7e.webp",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width > 300
                                          ? 90.h
                                          : 70.h,
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 15,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color:
                                            kWhite, // Set the color of the border
                                        width:
                                            5.0, // Set the width of the border
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: kBlack,
                                      backgroundImage: NetworkImage(
                                        _viewModel.profileDetailsResponse?.data
                                                        ?.image
                                                        .toString() ==
                                                    "" ||
                                                _viewModel
                                                        .profileDetailsResponse
                                                        ?.data
                                                        ?.image
                                                        .toString() ==
                                                    null
                                            ? "https://cosmetrospace.sfo3.digitaloceanspaces.com/unknown.jpg"
                                            : _viewModel.profileDetailsResponse
                                                    ?.data?.image
                                                    .toString() ??
                                                "https://cosmetrospace.sfo3.digitaloceanspaces.com/unknown.jpg",
                                      ), // Set the image for the circle avatar
                                      radius: 50
                                          .r, // Adjust the radius to control the size of the avatar
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        _viewModel.profileDetailsResponse?.data
                                                ?.name ??
                                            "",
                                        style: urbanist600(kBlack, 20),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        _viewModel.profileDetailsResponse?.data
                                                ?.email ??
                                            "",
                                        style: urbanist400(kGrey, 12),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Change Password",
                                                      style:
                                                          GoogleFonts.urbanist(
                                                        color: kBlack,
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        context.pop();
                                                      },
                                                      icon: const Icon(
                                                        Icons.close,
                                                        color: kGrey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                backgroundColor:
                                                    const Color(0xfff8f8f8),
                                                content:
                                                    const SingleChildScrollView(
                                                  child: ChangePasswordDialog(),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.lock,
                                              color: kBlack,
                                              size: 16.sp,
                                            ),
                                            // SizedBox(
                                            //   width: 2.w,
                                            // ),
                                            Text(
                                              "Change Password",
                                              style: urbanist500(kBlack, 14)
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  if (MediaQuery.of(context).size.width > 660)
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // width: double.infinity,
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.r),
                                            border: Border.all(color: kBlue),
                                          ),
                                          child: TextButton.icon(
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Edit Your Profile",
                                                          style: GoogleFonts
                                                              .urbanist(
                                                            color: kBlack,
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        IconButton(
                                                          onPressed: () {
                                                            context.pop();
                                                          },
                                                          icon: const Icon(
                                                            Icons.close,
                                                            color: kGrey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    backgroundColor:
                                                        const Color(0xfff8f8f8),
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 0.w,
                                                    ),
                                                    content:
                                                        SingleChildScrollView(
                                                      child: EditProfileDialog(
                                                        name: _viewModel
                                                                .profileDetailsResponse
                                                                ?.data
                                                                ?.name ??
                                                            "",
                                                        email: _viewModel
                                                                .profileDetailsResponse
                                                                ?.data
                                                                ?.email ??
                                                            "",
                                                        phoneNumber: _viewModel
                                                                .profileDetailsResponse
                                                                ?.data
                                                                ?.phone ??
                                                            "",
                                                        profilePic: _viewModel
                                                                .profileDetailsResponse
                                                                ?.data
                                                                ?.image
                                                                .toString() ??
                                                            "",
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            icon: Icon(
                                              Icons.edit_note_outlined,
                                              color: kBlue,
                                              size: 15.sp,
                                            ),
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 8.w,
                                              ),
                                              backgroundColor: kWhite,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                              ),
                                            ),
                                            label: Text(
                                              "Edit Profile",
                                              style: urbanist600(kBlue, 12),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        SizedBox(
                                          height: 40.h,
                                          child: TextButton.icon(
                                            onPressed: () {
                                              //  Get.offAll(const DashboardFreePage());
                                              ref
                                                  .watch(styleProvider)
                                                  .setSelectedPage(
                                                    "Sign In",
                                                  );
                                            },
                                            icon: Icon(
                                              Icons.logout,
                                              color: kWhite,
                                              size: 15.sp,
                                            ),
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 8.w,
                                              ),
                                              backgroundColor: kBlue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                              ),
                                            ),
                                            label: Text(
                                              "Log Out",
                                              style: urbanist600(kWhite, 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  else
                                    Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        if (MediaQuery.of(context).size.width < 661)
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // width: double.infinity,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    border: Border.all(color: kBlue),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      // show bottom sheet
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(),
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            color: Colors.transparent,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  // add icon to the top
                                                  SizedBox(height: 40.h),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: kWhite,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          20.r,
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          20.r,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 20.w,
                                                        vertical: 20.h,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "Edit Your Profile",
                                                                style: GoogleFonts
                                                                    .urbanist(
                                                                  color: kBlack,
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),

                                                              // add close icon
                                                              const Spacer(),
                                                              IconButton(
                                                                onPressed: () {
                                                                  context.pop();
                                                                },
                                                                icon:
                                                                    const Icon(
                                                                  Icons.close,
                                                                  color: kGrey,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 20.h,
                                                          ),
                                                          EditProfileDialog(
                                                            name: _viewModel
                                                                    .profileDetailsResponse
                                                                    ?.data
                                                                    ?.name ??
                                                                "",
                                                            email: _viewModel
                                                                    .profileDetailsResponse
                                                                    ?.data
                                                                    ?.email ??
                                                                "",
                                                            phoneNumber: _viewModel
                                                                    .profileDetailsResponse
                                                                    ?.data
                                                                    ?.phone ??
                                                                "",
                                                            profilePic: _viewModel
                                                                    .profileDetailsResponse
                                                                    ?.data
                                                                    ?.image
                                                                    .toString() ??
                                                                "",
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.edit_note_outlined,
                                          color: kBlue,
                                        ),
                                        Text(
                                          "Edit Profile",
                                          style: urbanist600(kBlue, 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40.h,
                                  child: TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.logout,
                                      color: kWhite,
                                      size: 15.sp,
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: kBlue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                    label: Text(
                                      "Log Out",
                                      style: urbanist600(kWhite, 14),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        else
                          Container(),
                        SizedBox(
                          height: 40.h,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            dividerColor: kGrey.withOpacity(0.5),
                            isScrollable: true,
                            indicatorSize: TabBarIndicatorSize.tab,
                            controller: _tabcontroller,
                            indicatorColor: kBlack,
                            labelColor: kBlack,
                            unselectedLabelColor: kGrey,
                            labelStyle: urbanist600(kBlack, 12),
                            unselectedLabelStyle: urbanist400(kGrey, 12),
                            tabs: const [
                              Tab(text: 'My Appointment'),
                              Tab(text: 'Term & Conditions'),
                              Tab(text: 'Privacy Policy'),
                              Tab(text: 'Payment Method'),
                            ],
                            onTap: (value) {},
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width >= 400
                              ? 420.h
                              : 470.h,
                          child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _tabcontroller,
                            children: [
                              if (MediaQuery.of(context).size.width > 450)
                                SingleChildScrollView(
                                  child: AppointmentsTable(
                                    data: _viewModel.allUserAppointments!,
                                  ),
                                )
                              else
                                ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: _viewModel.allUserAppointments
                                          ?.data?.results?.length ??
                                      0,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 7.h),
                                      child: Container(
                                        // height: 160.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: kselected,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 7.w,
                                              ),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 20.r,
                                                    backgroundImage:
                                                        const NetworkImage(
                                                      "https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=180",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        _viewModel
                                                                .allUserAppointments
                                                                ?.data
                                                                ?.results?[
                                                                    index]
                                                                .beautician
                                                                ?.name ??
                                                            "",
                                                        style: urbanist500(
                                                          kBlack,
                                                          14,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 2,
                                                      ),
                                                      Image.asset(
                                                        "assets/icons/verify.webp",
                                                        height: 15.h,
                                                        width: 15.w,
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 10.h,
                                                    width: 10.w,
                                                    decoration: BoxDecoration(
                                                      color: _viewModel
                                                                  .allUserAppointments
                                                                  ?.data
                                                                  ?.results?[
                                                                      index]
                                                                  .status ==
                                                              "confirmed"
                                                          ? Colors.green
                                                          : Colors.red,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  Text(
                                                    _viewModel
                                                            .allUserAppointments
                                                            ?.data
                                                            ?.results?[index]
                                                            .status ??
                                                        "",
                                                    style: urbanist600(
                                                      _viewModel
                                                                  .allUserAppointments
                                                                  ?.data
                                                                  ?.results?[
                                                                      index]
                                                                  .status ==
                                                              "confirmed"
                                                          ? Colors.green
                                                          : Colors.red,
                                                      10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 7.w,
                                              ),
                                              child: Text(
                                                "Services",
                                                style: urbanist600(kBlack, 14),
                                              ),
                                            ),
                                            // Padding(
                                            //   padding: EdgeInsets.symmetric(
                                            //     horizontal: 7.w,
                                            //   ),
                                            //   child: Text(
                                            //     "Services hair cut, hair color, shawing",
                                            //     style: urbanist400(kBlack, 12),
                                            //   ),
                                            // ),
                                            ...List.generate(
                                              _viewModel
                                                      .allUserAppointments
                                                      ?.data
                                                      ?.results?[index]
                                                      .services
                                                      ?.length ??
                                                  0,
                                              (ind) => Padding(
                                                padding:
                                                    EdgeInsets.only(left: 7.w),
                                                child: Text(
                                                  "${_viewModel.allUserAppointments?.data?.results?[index].services?[ind].name ?? ""}, ",
                                                  style:
                                                      urbanist500(kBlack, 12),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 7.w,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${_viewModel.allUserAppointments?.data?.results?[index].date.toString().split(" ")[0]}",
                                                    style: urbanist500(
                                                      kBlack,
                                                      14,
                                                    ),
                                                  ),
                                                  Text(
                                                    "\$${_viewModel.allUserAppointments?.data?.results?[index].amount}",
                                                    style: urbanist500(
                                                      kBlack,
                                                      14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 7.w,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${_viewModel.allUserAppointments?.data?.results?[index].timeSlot}",
                                                    style: urbanist400(
                                                      kdescription,
                                                      10,
                                                    ),
                                                  ),
                                                  Text(
                                                    "${_viewModel.allUserAppointments?.data?.results?[index].paymentStatus}",
                                                    style: urbanist400(
                                                      kdescription,
                                                      10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Terms & Conditions",
                                      style: urbanist600(kBlack, 18),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore\n\nVestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis.\n Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Risus at ultrices mi tempus imperdiet nulla. Mauris rhoncus aenean vel elit. Aliquet eget sit amet tellus. Consequat mauris nunc congue nisi vitae suscipit tellus. Tortor posuere ac ut consequat semper viverra nam. Mattis rhoncus urna neque viverra justo nec ultrices.",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_box,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            style:
                                                urbanist400(kdescription, 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_box,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            style:
                                                urbanist400(kdescription, 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_box,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            style:
                                                urbanist400(kdescription, 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_box,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            style:
                                                urbanist400(kdescription, 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Privacy Policy",
                                      style: urbanist600(kBlack, 18),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\nTurpis in eu mi bibendum neque. Nisl suscipit adipiscing bibendum est. Pellentesque habitant morbi tristique senectus. Velit scelerisque in dictum non consectetur a erat. Nisl rhoncus mattis rhoncus urna. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. \n\nScelerisque purus semper eget duis at tellus at urna. Lorem sed risus ultricies tristique nulla aliquet. Ultricies integer quis auctor elit sed. Est placerat in egestas erat. Nulla pharetra diam sit amet nisl suscipit adipiscing. Eu ultrices vitae auctor eu augue ut lectus arcu. Cursus turpis massa tincidunt dui ut ornare lectus sit. Ut eu sem integer vitae. Eget est lorem ipsum dolor sit amet consectetur.Faucibus pulvinar elementum integer enim neque. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Ipsum consequat nisl vel pretium lectus quam id leo in. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Nulla facilisi cras fermentum odio eu feugiat pretium. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Felis eget nunc lobortis mattis aliquam faucibus purus. Duis at tellus at urna. ",
                                      style: urbanist400(kdescription, 14),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                  ],
                                ),
                              ),

                              //Payment Method tab

                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Choose Card",
                                      style: urbanist600(kBlack, 18),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Card(
                                            color: kWhite,
                                            surfaceTintColor: kWhite,
                                            elevation: 5,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 15.w,
                                                vertical: 20.h,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Saved Cards",
                                                    style:
                                                        urbanist600(kBlack, 18),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ...List.generate(
                                                    _viewModel.cardsListResponse
                                                            ?.data?.length ??
                                                        0,
                                                    (index) => Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 10.h,
                                                      ),
                                                      child: ListTile(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                        ),
                                                        tileColor: kWhite,
                                                        leading: Radio(
                                                          focusColor: kBlack,
                                                          value: index,
                                                          groupValue: 1,
                                                          onChanged: (value) {},
                                                        ),
                                                        title: Row(
                                                          children: [
                                                            Image.network(
                                                              'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                                                              // width: 60.w,
                                                              height: 30.h,
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                '**** **** **** ${_viewModel.cardsListResponse?.data?[index].last4}',
                                                                style:
                                                                    TextStyle(
                                                                  color: kBlack,
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        trailing: TextButton(
                                                          onPressed: () async {
                                                            deleteCard = true;
                                                            setState(() {});
                                                            await _viewModel
                                                                .deleteCard(
                                                              SharedPreferenceService
                                                                      .getString(
                                                                    AppConstants
                                                                        .accessToken,
                                                                  ) ??
                                                                  "",
                                                              _viewModel
                                                                      .cardsListResponse
                                                                      ?.data?[
                                                                          index]
                                                                      .id ??
                                                                  "",
                                                            );

                                                            deleteCard = false;
                                                            setState(() {});
                                                          },
                                                          child: Text(
                                                            deleteCard
                                                                ? "Deleting..."
                                                                : 'Delete',
                                                            style: GoogleFonts
                                                                .urbanist(
                                                              color: Colors.red,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              1000,
                                          child: SizedBox(
                                            width: 10.w,
                                          ),
                                        ),
                                        Visibility(
                                          visible: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              1200,
                                          child: Expanded(
                                            flex: 3,
                                            child: Form(
                                              key: _formkey2,
                                              child: Card(
                                                surfaceTintColor: kWhite,
                                                color: kWhite,
                                                elevation: 5,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                    vertical: 20.h,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Add New Card",
                                                        style: urbanist600(
                                                          kBlack,
                                                          18,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      ListTile(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side:
                                                              const BorderSide(
                                                            color: klines,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            7.r,
                                                          ),
                                                        ),
                                                        tileColor: kWhite,
                                                        leading: Radio(
                                                          focusColor: kBlack,
                                                          value: -1,
                                                          groupValue: 0,
                                                          onChanged: (value) {},
                                                        ),
                                                        title: Row(
                                                          children: [
                                                            const Text(
                                                              'Credit Card',
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Image.network(
                                                              'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                                                              // width: 60.w,
                                                              height: 30.h,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child:
                                                                TextFormField(
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty ||
                                                                    value.length <
                                                                        16) {
                                                                  return 'Please enter 16 digit card number';
                                                                }
                                                                return null;
                                                              },
                                                              maxLength: 16,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              controller:
                                                                  cardNumberController,
                                                              decoration:
                                                                  InputDecoration(
                                                                counter:
                                                                    const SizedBox
                                                                        .shrink(),
                                                                hintText:
                                                                    "Card Number",
                                                                hintStyle:
                                                                    urbanist400(
                                                                  kdescription,
                                                                  14,
                                                                ),
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5.w),
                                                          Expanded(
                                                            child:
                                                                TextFormField(
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty ||
                                                                    value.length <
                                                                        5) {
                                                                  return 'Please enter date in the given format';
                                                                }
                                                                return null;
                                                              },
                                                              maxLength: 5,
                                                              controller:
                                                                  dateController,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              decoration:
                                                                  InputDecoration(
                                                                counter:
                                                                    const SizedBox
                                                                        .shrink(),
                                                                hintText:
                                                                    "MM/YY",
                                                                hintStyle:
                                                                    urbanist400(
                                                                  kdescription,
                                                                  14,
                                                                ),
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5.w),
                                                          Expanded(
                                                            child:
                                                                TextFormField(
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty ||
                                                                    value.length <
                                                                        3) {
                                                                  return 'Please enter 3 digit CVV';
                                                                }
                                                                return null;
                                                              },
                                                              maxLength: 3,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              controller:
                                                                  cvvController,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText: "CVV",
                                                                counter:
                                                                    const SizedBox
                                                                        .shrink(),
                                                                hintStyle:
                                                                    urbanist400(
                                                                  kdescription,
                                                                  14,
                                                                ),
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    7.r,
                                                                  ),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color:
                                                                        klines,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 25.h),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          if (_formkey2
                                                              .currentState!
                                                              .validate()) {
                                                            addCard = true;

                                                            setState(() {});

                                                            _viewModel.addCard(
                                                              cardModel
                                                                  .CreateCardRequest(
                                                                email: _viewModel
                                                                    .profileDetailsResponse
                                                                    ?.data
                                                                    ?.email,
                                                                card: cardModel
                                                                    .Card(
                                                                  number:
                                                                      cardNumberController
                                                                          .text,
                                                                  expMonth:
                                                                      int.parse(
                                                                    dateController
                                                                        .text
                                                                        .split(
                                                                      "/",
                                                                    )[0],
                                                                  ),
                                                                  expYear:
                                                                      int.parse(
                                                                    "20${dateController.text.split("/")[1]}",
                                                                  ),
                                                                  cvc:
                                                                      cvvController
                                                                          .text,
                                                                ),
                                                              ),
                                                              SharedPreferenceService
                                                                      .getString(
                                                                    AppConstants
                                                                        .accessToken,
                                                                  ) ??
                                                                  "",
                                                            );
                                                            cardNumberController
                                                                .clear();
                                                            dateController
                                                                .clear();
                                                            cvvController
                                                                .clear();
                                                            addCard = false;
                                                            setState(() {});
                                                          }
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              kBlack,
                                                          minimumSize: Size(
                                                            double.infinity,
                                                            50.h,
                                                          ),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                          ),
                                                        ),
                                                        child: addCard
                                                            ? const Center(
                                                                child: SizedBox(
                                                                  height: 15,
                                                                  width: 15,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    color:
                                                                        kWhite,
                                                                  ),
                                                                ),
                                                              )
                                                            : Text(
                                                                "Add New Card",
                                                                style:
                                                                    urbanist600(
                                                                  kWhite,
                                                                  16,
                                                                ),
                                                              ),
                                                      ),
                                                      SizedBox(height: 20.h),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Visibility(
                                      visible:
                                          MediaQuery.of(context).size.width <=
                                              1200,
                                      child: Form(
                                        key: _formkey,
                                        child: Card(
                                          surfaceTintColor: kWhite,
                                          color: kWhite,
                                          elevation: 5,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 15.w,
                                              vertical: 20.h,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Add New Card",
                                                  style:
                                                      urbanist600(kBlack, 18),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                ListTile(
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                      color: klines,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                  ),
                                                  tileColor: kWhite,
                                                  leading: Radio(
                                                    focusColor: kBlack,
                                                    value: -1,
                                                    groupValue: 0,
                                                    onChanged: (value) {},
                                                  ),
                                                  title: Row(
                                                    children: [
                                                      const Text('Credit Card'),
                                                      SizedBox(width: 5.w),
                                                      Image.network(
                                                        'https://tse3.mm.bing.net/th?id=OIP.8hSdZiAvNki23CzVyAvSLQHaEK&pid=Api&P=0&h=180',
                                                        // width: 60.w,
                                                        height: 30.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 10.h),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: TextFormField(
                                                        validator: (value) {
                                                          if (value == null ||
                                                              value.isEmpty ||
                                                              value.length <
                                                                  16) {
                                                            return 'Please enter valid 16 digit card number';
                                                          }
                                                          return null;
                                                        },
                                                        maxLength: 16,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        controller:
                                                            cardNumberController,
                                                        decoration:
                                                            InputDecoration(
                                                          counter:
                                                              const SizedBox
                                                                  .shrink(),
                                                          hintText:
                                                              "Card Number",
                                                          hintStyle:
                                                              urbanist400(
                                                            kdescription,
                                                            14,
                                                          ),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5.w),
                                                    Expanded(
                                                      child: TextFormField(
                                                        validator: (value) {
                                                          if (value == null ||
                                                              value.isEmpty ||
                                                              value.length <
                                                                  5) {
                                                            return 'Please enter valid date format';
                                                          }
                                                          return null;
                                                        },
                                                        controller:
                                                            dateController,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: "MM/YY",
                                                          hintStyle:
                                                              urbanist400(
                                                            kdescription,
                                                            14,
                                                          ),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5.w),
                                                    Expanded(
                                                      child: TextFormField(
                                                        validator: (value) {
                                                          if (value == null ||
                                                              value.isEmpty ||
                                                              value.length <
                                                                  3) {
                                                            return 'Please enter 3 digit CVV';
                                                          }
                                                          return null;
                                                        },
                                                        controller:
                                                            cvvController,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: "CVV",
                                                          hintStyle:
                                                              urbanist400(
                                                            kdescription,
                                                            14,
                                                          ),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              7.r,
                                                            ),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: klines,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 25.h),
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    if (_formkey.currentState!
                                                        .validate()) {
                                                      addCard = true;

                                                      setState(() {});

                                                      await _viewModel.addCard(
                                                        cardModel
                                                            .CreateCardRequest(
                                                          email: _viewModel
                                                              .profileDetailsResponse
                                                              ?.data
                                                              ?.email,
                                                          card: cardModel.Card(
                                                            number:
                                                                cardNumberController
                                                                    .text,
                                                            expMonth: int.parse(
                                                              dateController
                                                                  .text
                                                                  .split(
                                                                "/",
                                                              )[0],
                                                            ),
                                                            expYear: int.parse(
                                                              "20${dateController.text.split("/")[1]}",
                                                            ),
                                                            cvc: cvvController
                                                                .text,
                                                          ),
                                                        ),
                                                        SharedPreferenceService
                                                                .getString(
                                                              AppConstants
                                                                  .accessToken,
                                                            ) ??
                                                            "",
                                                      );
                                                      cardNumberController
                                                          .clear();
                                                      dateController.clear();
                                                      cvvController.clear();
                                                      addCard = false;
                                                      setState(() {});
                                                    }
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: kBlack,
                                                    minimumSize: Size(
                                                      double.infinity,
                                                      50.h,
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        7.r,
                                                      ),
                                                    ),
                                                  ),
                                                  child: addCard
                                                      ? const Center(
                                                          child: SizedBox(
                                                            height: 15,
                                                            width: 15,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: kWhite,
                                                            ),
                                                          ),
                                                        )
                                                      : Text(
                                                          "Add New Card",
                                                          style: urbanist600(
                                                            kWhite,
                                                            16,
                                                          ),
                                                        ),
                                                ),
                                                SizedBox(height: 20.h),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }
}
