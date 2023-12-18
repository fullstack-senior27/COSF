import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_availability.dart'
    as edit;
import 'package:cosmetropolis/data/remote/beautician/get_profile_details.dart';
import 'package:cosmetropolis/data/remote/beautician/update_profile_details.dart';
import 'package:cosmetropolis/data/remote/services/models/beautician_detail_model.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/services/shared_preference_service.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/beauticians_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheets_dialog.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/registered_user_dialogs.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class PersonalInfo extends ConsumerStatefulWidget {
  const PersonalInfo({super.key});

  @override
  ConsumerState<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends ConsumerState<PersonalInfo>
    with BaseScreenView {
  late BeauticianViewModel _viewModel;

  late ImageProvider image1;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final websiteController = TextEditingController();
  final aboutMeController = TextEditingController();
  final professionController = TextEditingController();
  bool isLoading = false;
  bool isSave = false;

  // @override
  // void initState() {
  //   super.initState();
  //   image1 = const AssetImage("assets/icons/landing.webp");
  // }

  @override
  void initState() {
    super.initState();
    // image1 = const AssetImage("assets/icons/landing.webp");
    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    getData();
  }

  Future<void> getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel.getBeauticianProfileDetails(
      BeauticianProfileRequest(
        beauticianId: SharedPreferenceService.getString(AppConstants.userId),
      ),
      context,
    );
    nameController.text =
        _viewModel.beauticianProfileResponseModel?.data?.name ?? "";
    emailController.text =
        _viewModel.beauticianProfileResponseModel?.data?.email ?? "";
    phoneController.text =
        _viewModel.beauticianProfileResponseModel?.data?.phone ?? "";
    websiteController.text =
        _viewModel.beauticianProfileResponseModel?.data?.website ?? "";
    aboutMeController.text =
        _viewModel.beauticianProfileResponseModel?.data?.about ?? "";
    professionController.text =
        _viewModel.beauticianProfileResponseModel?.data?.profession ?? "";
    isLoading = false;
    setState(() {});
  }

  List<String> imgList = [];
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(beauticianViewModel);
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Personal Info",
                      style: urbanist600(kBlack, 18),
                    ),
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(
                        Icons.close,
                        color: kGrey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  "Name",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 5.h),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "John Doe",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "My Profession*",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 5.h),
                TextField(
                  controller: professionController,
                  decoration: InputDecoration(
                    hintText: "Hair Stylist",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "My Specialty*",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 5.h),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Select 2 specialist",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "About Me*",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 5.h),
                TextField(
                  controller: aboutMeController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "About Me",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Email*",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 5.h),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "tim.jennings@example.com",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Phone Number*",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 10.h),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "906-414-8272",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "My Cosmetropolis Website*",
                  style: urbanist400(kBlack, 13),
                ),
                SizedBox(height: 5.h),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Cosmetropolis.com/Kristin Watson",
                    hintStyle: urbanist400(kGrey, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: kBlue),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: kWhite,
                        padding: MediaQuery.of(context).size.width > 680
                            ? EdgeInsets.symmetric(
                                vertical: 20.h,
                                horizontal: 5.w,
                              )
                            : EdgeInsets.symmetric(
                                vertical: 10.h,
                                horizontal: 5.w,
                              ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          side: const BorderSide(
                            color: kGrey,
                          ),
                        ),
                      ),
                      child: Text(
                        "Cancel",
                        style: urbanist400(kGrey, 14),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    ElevatedButton(
                      onPressed: () {
                        isSave = true;
                        setState(() {});
                        _viewModel.updateBeauticianProfile(
                          BeauticianUpdateProfileRequest(
                            // name: nameController.text,
                            email: emailController.text,
                            phone: phoneController.text,
                            about: aboutMeController.text,
                            website: websiteController.text,
                            profession: professionController.text,
                          ),
                          context,
                        );
                        isSave = false;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kBlack,
                        padding: MediaQuery.of(context).size.width > 680
                            ? EdgeInsets.symmetric(
                                vertical: 20.h,
                                horizontal: 5.w,
                              )
                            : EdgeInsets.symmetric(
                                vertical: 10.h,
                                horizontal: 5.w,
                              ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        // minimumSize: Size(100.w, 40.h),
                      ),
                      child: isSave
                          ? const Center(
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: kWhite,
                                ),
                              ),
                            )
                          : Text(
                              "Save",
                              style: urbanist400(kWhite, 14),
                            ),
                    ),
                  ],
                )
              ],
            ),
          );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
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

class BusinessInfo extends StatefulWidget {
  const BusinessInfo({super.key});

  @override
  State<BusinessInfo> createState() => _BusinessInfoState();
}

class _BusinessInfoState extends State<BusinessInfo> {
  int nameValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Business Info",
            style: urbanist600(kBlack, 18),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Business Name*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salon Number*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Mobile Number*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SMS Notification Phone Number*",
                      style: urbanist600(kBlack, 14),
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: urbanist400(kGrey, 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: const BorderSide(color: kGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Number shown on profile",
            style: urbanist400(kdescription, 14),
          ),
          SizedBox(
            height: 5.h,
          ),
          RadioListTile(
            title: Text("Salon Number", style: urbanist500(kBlack, 14)),
            value: 0,
            // controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsets.zero,
            activeColor: kBlack,
            groupValue: nameValue,
            onChanged: (value) {
              setState(() {
                nameValue = value!;
              });
            },
          ),
          SizedBox(
            height: 5.h,
          ),
          RadioListTile(
            title:
                Text("Personal Mobile Number", style: urbanist500(kBlack, 14)),
            value: 1,
            // controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsets.zero,
            activeColor: kBlack,
            groupValue: nameValue,
            onChanged: (value) {
              setState(() {
                nameValue = value!;
              });
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "ZIP",
            style: urbanist400(kBlack, 14),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: "Zip Code",
              hintStyle: urbanist400(kGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: kGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kBlack,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                minimumSize: Size(100.w, 40.h),
              ),
              child: Text(
                "Save",
                style: urbanist400(kWhite, 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    return Padding(
      padding: MediaQuery.of(context).size.width > 700
          ? EdgeInsets.symmetric(horizontal: 60.w)
          : EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Service Menu",
            style: urbanist600(kBlack, 18),
          ),
          SizedBox(height: 30.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            color: kWhite,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/services.webp",
                  height: 55.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "New Service",
                  style: urbanist600(kBlack, 18),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Services are the individual services you provide at your business",
                  style: urbanist400(kdescription, 13),
                ),
                SizedBox(height: 15.h),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add New Service",
                                style: GoogleFonts.urbanist(
                                  color: kBlack,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: kGrey,
                                ),
                                onPressed: () {
                                  context.pop();
                                },
                              ),
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: const SingleChildScrollView(
                            child: CreateService(),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                  ),
                  child: Text(
                    "Add Service",
                    style: urbanist400(kWhite, 14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            color: kWhite,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/combined_services.webp",
                  height: 60.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "New Combined Service",
                  style: urbanist600(kBlack, 20),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Combined services include more than one service",
                  style: urbanist400(kdescription, 14),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                  ),
                  child: Text(
                    "Add Combined Service",
                    style: urbanist400(kWhite, 14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            color: kWhite,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/service_category.webp",
                  height: 60.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "New Service Category",
                  style: urbanist600(kBlack, 20),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Categories allow you to organize your services into groups",
                  style: urbanist400(kdescription, 14),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add New Service Category",
                                style: urbanist600(
                                  kBlack,
                                  16,
                                ),
                              ),
                              IconButton(
                                  onPressed: () => context.pop(),
                                  icon: const Icon(
                                    Icons.close,
                                    color: kGrey,
                                  ))
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: SingleChildScrollView(
                            child: SizedBox(
                              width: MediaQuery.of(
                                        context,
                                      ).size.width >
                                      900
                                  ? 400
                                  : MediaQuery.of(
                                        context,
                                      ).size.width *
                                      0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Category Name*",
                                    style: urbanist500(
                                      kBlack,
                                      16,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  TextFormField(
                                    controller: nameController,
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      hintText: "Category Name",
                                      hintStyle: urbanist400(
                                        kGrey,
                                        14,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          6.r,
                                        ),
                                        borderSide: const BorderSide(
                                          color: kGrey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          6.r,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Spacer(),
                                        Expanded(
                                          child: SizedBox(
                                            height: 40.h,
                                            width: double.infinity,
                                            child: BlackOutlineButton(
                                                context, "Cancel", () {
                                              Navigator.pop(
                                                context,
                                              );
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
                                            child: BlackButton(context, "Save",
                                                () {
                                              Navigator.pop(
                                                context,
                                              );
                                            }),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                  ),
                  child: Text(
                    "Add Service Category",
                    style: urbanist400(kWhite, 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotosTab extends StatelessWidget {
  const PhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      "https://i.imgur.com/Fyponv9.webp",
      "https://i.imgur.com/E6yRIRb.webp",
      "https://i.imgur.com/svLt1SE.webp",
      "https://i.imgur.com/FDXC3nI.webp",
      "https://i.imgur.com/jA407EU.webp",
      "https://i.imgur.com/fIL9cnJ.webp"
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // height: 150.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: const Color(0xffE5E6F6),
          ),
          child: DottedBorder(
            color: kGrey,
            strokeWidth: 1,
            radius: Radius.circular(5.r),
            borderType: BorderType.RRect,
            strokeCap: StrokeCap.round,
            dashPattern: const [6, 5, 6, 5],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    const Icon(
                      Icons.cloud_upload_outlined,
                      size: 40,
                      color: kGrey,
                    ),
                    SizedBox(height: 10.h),
                    RichText(
                      text: TextSpan(
                        text: "Cover image  ",
                        style: urbanist400(kGrey, 14),
                        children: [
                          TextSpan(
                            text: "browser",
                            style: urbanist400(kBlue, 14),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //open image picker
                              },
                          ),
                          // TextSpan(
                          //   text: " to upload",
                          //   style: urbanist400(kGrey, 14),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "1314x275",
                      style: urbanist500(kGrey, 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        const Text(
          "Pinned Photos",
          style: TextStyle(
            color: kBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 20.h),
        Container(
          color: const Color(0xffE0F3FD),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundColor: kWhite,
                child: Image.asset("assets/icons/pin_black.webp", height: 30.h),
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: Text(
                  "You haven't pinned any of your photos yet! Just tap the pin on your three favorite photos and they will be displayed first in your gallery.",
                  style: MediaQuery.of(context).size.width > 700
                      ? urbanist400(kGrey, 14)
                      : urbanist400(kGrey, 12),
                ),
              ),
              SizedBox(width: 5.w),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25.sp,
                color: kdarkPrime,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width > 700 ? 40.h : 20.h,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 680 ? 3 : 2,
            crossAxisSpacing: 1.w,
            childAspectRatio:
                MediaQuery.of(context).size.width > 680 ? 1 / 1.2 : 1 / 1.5,
            mainAxisSpacing: 1.h,
          ),
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    // height: 200.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imgList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: kBlack,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      color: kWhite,
                                      size: 20.sp,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/icons/pin_white.webp",
                                      height: 20.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: kWhite,
                                      size: 20.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}

class ManageAvailability extends ConsumerStatefulWidget {
  const ManageAvailability({super.key});

  @override
  ConsumerState<ManageAvailability> createState() => _ManageAvailabilityState();
}

class _ManageAvailabilityState extends ConsumerState<ManageAvailability>
    with BaseScreenView {
  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  bool friday = false;
  bool saturday = false;
  bool sunday = false;

  bool isLoading = false;
  late BeauticianViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    // image1 = const AssetImage("assets/icons/landing.webp");
    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 700
          ? EdgeInsets.symmetric(horizontal: 60.w)
          : EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Manage Availability", style: urbanist600(kBlack, 18)),
          SizedBox(height: 30.h),
          Text(
            "Front Desk",
            style: urbanist400(kdescription, 18),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              MediaQuery.of(context).size.width > 700
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          child: AlertDialog(
                            title: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {
                                  // context.pop();
                                  context.pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.sp,
                                  color: kGrey,
                                ),
                              ),
                            ),
                            backgroundColor: const Color(0xfff8f8f8),
                            content: const SingleChildScrollView(
                              child: ServiceMenu(),
                            ),
                          ),
                        );
                      },
                    )
                  :

                  // bottom sheet for service menu
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 15.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        context.pop();
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 20.sp,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: const ServiceMenu(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Services",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              MediaQuery.of(context).size.width > 700
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Edit Availability",
                                style: urbanist600(kBlack, 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.sp,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: SingleChildScrollView(
                            child: editAvailability(),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kWhite,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                      side: const BorderSide(
                                        color: kGrey,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: urbanist400(kGrey, 14),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                ElevatedButton(
                                  onPressed: () async {
                                    isLoading = true;
                                    setState(() {});
                                    await _viewModel
                                        .updateBeauticianAvailability(
                                      edit.BeauticianAvailabilityRequest(
                                        availability: [
                                          edit.Availability(
                                            day: "Monday",
                                            isAvailable: monday,
                                          ),
                                          edit.Availability(
                                            day: "Tuesday",
                                            isAvailable: tuesday,
                                          ),
                                          edit.Availability(
                                            day: "Wednesday",
                                            isAvailable: wednesday,
                                          ),
                                          edit.Availability(
                                            day: "Thursday",
                                            isAvailable: thursday,
                                          ),
                                          edit.Availability(
                                            day: "Friday",
                                            isAvailable: friday,
                                          ),
                                          edit.Availability(
                                            day: "Saturday",
                                            isAvailable: saturday,
                                          ),
                                          edit.Availability(
                                            day: "Sunday",
                                            isAvailable: sunday,
                                          )
                                        ],
                                      ),
                                      context,
                                    );

                                    isLoading = false;
                                    setState(() {});
                                    context.pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kBlack,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    minimumSize: Size(100.w, 40.h),
                                  ),
                                  child: isLoading
                                      ? const Center(
                                          child: SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(
                                              color: kWhite,
                                            ),
                                          ),
                                        )
                                      : Text(
                                          "Save",
                                          style: urbanist400(kWhite, 14),
                                        ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    )
                  : showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Edit Availability",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 20.sp,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  child: editAvailability(),
                                ),
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.all(13.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            context.pop();
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: kWhite,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              side: const BorderSide(
                                                color: kGrey,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Cancel",
                                            style: urbanist400(kGrey, 14),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            isLoading = true;
                                            setState(() {});
                                            await _viewModel
                                                .updateBeauticianAvailability(
                                              edit.BeauticianAvailabilityRequest(
                                                availability: [
                                                  edit.Availability(
                                                    day: "Monday",
                                                    isAvailable: monday,
                                                  ),
                                                  edit.Availability(
                                                    day: "Tuesday",
                                                    isAvailable: tuesday,
                                                  ),
                                                  edit.Availability(
                                                    day: "Wednesday",
                                                    isAvailable: wednesday,
                                                  ),
                                                  edit.Availability(
                                                    day: "Thursday",
                                                    isAvailable: thursday,
                                                  ),
                                                  edit.Availability(
                                                    day: "Friday",
                                                    isAvailable: friday,
                                                  ),
                                                  edit.Availability(
                                                    day: "Saturday",
                                                    isAvailable: saturday,
                                                  ),
                                                  edit.Availability(
                                                    day: "Sunday",
                                                    isAvailable: sunday,
                                                  )
                                                ],
                                              ),
                                              context,
                                            );

                                            isLoading = false;
                                            setState(() {});
                                            context.pop();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: kBlack,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            minimumSize: Size(100.w, 40.h),
                                          ),
                                          child: isLoading
                                              ? const Center(
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 20,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: kWhite,
                                                    ),
                                                  ),
                                                )
                                              : Text(
                                                  "Save",
                                                  style:
                                                      urbanist400(kWhite, 14),
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Manage Schedule",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              MediaQuery.of(context).size.width > 700
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Upcoming Hours",
                                style: urbanist600(kBlack, 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.sp,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
                          content: const SingleChildScrollView(
                            child: EditUpcomingHours(),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kWhite,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                      side: const BorderSide(
                                        color: kGrey,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: urbanist400(kGrey, 14),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                ElevatedButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kBlack,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 5.w,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    minimumSize: Size(100.w, 40.h),
                                  ),
                                  child: Text(
                                    "Save",
                                    style: urbanist400(kWhite, 14),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    )
                  : showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Upcoming Hours",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 20.sp,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  child: const EditUpcomingHours(),
                                ),
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.all(13.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            context.pop();
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: kWhite,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              side: const BorderSide(
                                                color: kGrey,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Cancel",
                                            style: urbanist400(kGrey, 14),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            context.pop();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: kBlack,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20.h,
                                              horizontal: 5.w,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            minimumSize: Size(100.w, 40.h),
                                          ),
                                          child: Text(
                                            "Save",
                                            style: urbanist400(kWhite, 14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Adjust Upcoming Hours",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Manage Vacation Time",
                          style: urbanist600(kBlack, 18),
                        ),
                        IconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 20.sp,
                            color: kGrey,
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: const Color(0xfff8f8f8),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Divider(
                            color: klines,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Setting vacation time will block off your availability for the selected time span.",
                            style: urbanist400(kGrey, 16),
                          ),
                          SizedBox(height: 60.h),
                          Text(
                            "Upcoming time off",
                            style: urbanist600(kBlack, 14),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "You have no upcoming time off scheduled.",
                            style: urbanist400(kBlack, 14),
                          )
                        ],
                      ),
                    ),
                    actions: [
                      SizedBox(
                        width: double.infinity,
                        //opens calender
                        child: ElevatedButton(
                          onPressed: () {
                            context.pop();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Select a date",
                                        style: urbanist600(kBlack, 18),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 20.sp,
                                          color: kGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  backgroundColor: const Color(0xfff8f8f8),
                                  content: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Divider(
                                        color: klines,
                                      ),
                                      SizedBox(height: 10.h),
                                      Expanded(
                                        child: SizedBox(
                                          // height: 200.h,
                                          width: 300,
                                          child: CalendarCarousel<Event>(
                                            onDayPressed: (
                                              DateTime date,
                                              List<Event> events,
                                            ) {
                                              // setState(() {});
                                            },
                                            todayButtonColor: kBlue,
                                            todayBorderColor: kBlue,
                                            markedDateShowIcon: true,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75,
                                            daysHaveCircularBorder: true,
                                            daysTextStyle: GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            weekendTextStyle:
                                                GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            weekdayTextStyle:
                                                GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            headerTextStyle:
                                                GoogleFonts.urbanist(
                                              color: kBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            headerTitleTouchable: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kBlack,
                                          padding: EdgeInsets.symmetric(
                                            vertical: 20.h,
                                            horizontal: 5.w,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              5.r,
                                            ),
                                          ),
                                          minimumSize: Size(100.w, 40.h),
                                        ),
                                        child: Text(
                                          "Add New Vacation",
                                          style: urbanist400(kWhite, 14),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kBlack,
                            padding: EdgeInsets.symmetric(
                              vertical: 20.h,
                              horizontal: 5.w,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            minimumSize: Size(100.w, 40.h),
                          ),
                          child: Text(
                            "Add New Vacation",
                            style: urbanist400(kWhite, 14),
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Manage Vacation Time",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Calendar Sync",
                          style: urbanist600(kBlack, 18),
                        ),
                        IconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 20.sp,
                            color: kGrey,
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: kWhite,
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Divider(
                            color: klines,
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Sync your Google calendar to prevent double bookings",
                            style: urbanist400(kdescription, 16),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: kBlue,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Image.asset(
                                    "assets/icons/google_color.webp",
                                    height: 30.h,
                                    // width: 30.w,
                                  ),
                                ),
                                // SizedBox(width: 10.w),
                                Text(
                                  "Connect Google Account",
                                  style: urbanist500(kWhite, 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 50.h),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10.h),
                            color: kselected,
                            child: Text(
                              "You can only edit appointments made in Cosmetropolis.\nCosmetropolis appointments will not sync back to Google Calendar.\nText reminders will not be sent for Google synced appointments.",
                              style: urbanist400(kdescription, 12),
                            ),
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              color: kWhite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Google Calendar Sync",
                    style: urbanist400(kGrey, 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget editAvailability() {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              color: klines,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Let Clients book online",
                  style: urbanist400(kdescription, 18),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: true,
                    onChanged: (value) {},
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "Timezone*",
              style: urbanist600(kBlack, 14),
            ),
            SizedBox(height: 5.h),
            TextField(
              decoration: InputDecoration(
                hintText: "US/Pacific (GMT - 800)",
                hintStyle: urbanist400(kGrey, 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(color: kGrey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: monday,
                    onChanged: (value) {
                      setState(() {
                        monday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tuesday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: tuesday,
                    onChanged: (value) {
                      setState(() {
                        tuesday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wednesday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: wednesday,
                    onChanged: (value) {
                      setState(() {
                        wednesday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Thursday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: thursday,
                    onChanged: (value) {
                      setState(() {
                        thursday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: friday,
                    onChanged: (value) {
                      setState(() {
                        friday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Saturday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: saturday,
                    onChanged: (value) {
                      setState(() {
                        saturday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sunday",
                  style: urbanist500(kBlack, 16),
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                        ColorScheme.fromSwatch().copyWith(outline: kdisable),
                  ),
                  child: Switch(
                    value: sunday,
                    onChanged: (value) {
                      setState(() {
                        sunday = value;
                      });
                    },
                    activeTrackColor: kBlack,
                    activeColor: kWhite,
                    inactiveThumbColor: kWhite,
                    inactiveTrackColor: kdisable,
                    focusColor: kBlack,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        );
      },
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
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

class EditUpcomingHours extends StatefulWidget {
  const EditUpcomingHours({super.key});

  @override
  State<EditUpcomingHours> createState() => _EditUpcomingHoursState();
}

class _EditUpcomingHoursState extends State<EditUpcomingHours> {
  DateTime now = DateTime.now();

  // Format the date
  String formattedDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: klines,
        ),
        SizedBox(height: 20.h),
        GestureDetector(
          onTap: () {
            // Show the date picker
            showDatePicker(
              context: context,
              initialDate: now,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            ).then((value) {
              // Set the date
              setState(() {
                formattedDate = DateFormat('MMMM d, yyyy').format(value!);
              });
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back_ios_outlined,
                color: kBlack,
                size: 20,
              ),
              SizedBox(width: 10.w),
              Text(
                formattedDate,
                style: urbanist500(kBlack, 16),
              ),
              SizedBox(width: 10.w),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: kBlack,
                size: 20,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "24 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "25 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "26 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "27 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "28 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "29 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: urbanist500(kBlack, 16),
                ),
                SizedBox(height: 5.h),
                Text(
                  "30 April, 2023",
                  style: urbanist400(kGrey, 12),
                ),
              ],
            ),
            Theme(
              data: ThemeData(
                useMaterial3: true,
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(outline: kdisable),
              ),
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeTrackColor: kBlack,
                activeColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: kdisable,
                focusColor: kBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

class ProfileReviews extends StatelessWidget {
  final BeauticianDetailResponse beauticianDetailResponse;
  const ProfileReviews({super.key, required this.beauticianDetailResponse});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Avg. user rating', style: urbanist600(kBlack, 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: kBlack,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "${beauticianDetailResponse.data?.avgRating ?? 0}",
                      style: urbanist600(kBlack, 24),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '${beauticianDetailResponse.data?.ratingCount ?? 0} booking reviews',
                  style: urbanist400(kBlack, 12),
                ),
              ],
            ),
            const Spacer(),
            FittedBox(
              child: SizedBox(
                width: 80.w,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 60.w,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            color: kBlack,
                            size: 10,
                          ),
                          Text("${5 - index}", style: urbanist400(kBlack, 12)),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                            child: LinearProgressBar(
                              maxSteps: 100,
                              progressType:
                                  LinearProgressBar.progressTypeLinear,
                              currentStep: 50,
                              progressColor: kBlue,
                              backgroundColor: Colors.grey,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                kBlack,
                              ),
                              semanticsLabel: "Label",
                              semanticsValue: "Value",
                              minHeight:
                                  MediaQuery.of(context).size.height * 0.01,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "${10 + index}K",
                            style: urbanist400(kdescription, 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        const Divider(
          color: klines,
        ),
        SizedBox(height: 40.h),
        ...List.generate(
          beauticianDetailResponse.data?.reviews?.length ?? 0,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: kdisable,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGrey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(
                      0,
                      1,
                    ), // changes position of shadow
                  ),
                ],
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        // beauticianDetailResponse
                        //         .data?.reviews?[index].user?.image
                        //         .toString() ??
                        "https://st4.depositphotos.com/4509995/21763/i/600/depositphotos_217634160-stock-photo-portrait-of-white-young-woman.jpg",
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              beauticianDetailResponse
                                      .data?.reviews?[index].user?.name
                                      .toString() ??
                                  "",
                              style: urbanist600(kBlack, 14),
                            ),
                            // SizedBox(
                            //   height: 10.h,
                            // ),
                            SizedBox(
                              width: 200.w,
                              child: Text(
                                "April 2023 • Haltu, Kolkata, West Bengal 700078, India",
                                style: urbanist400(kBlack, 12),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              beauticianDetailResponse
                                      .data?.reviews?[index].text
                                      .toString() ??
                                  "",
                              style: urbanist400(kdescription, 12),
                            ),

                            if (MediaQuery.of(context).size.width < 920)
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                allowHalfRating: true,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.w),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: kBlack,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            else
                              Container()
                          ],
                        ),
                      ),
                      if (MediaQuery.of(context).size.width > 920)
                        Expanded(
                          child: Row(
                            children: [
                              const Spacer(),
                              RatingBar.builder(
                                initialRating: beauticianDetailResponse
                                        .data?.reviews?[index].rating
                                        ?.toDouble() ??
                                    0,
                                minRating: 1,
                                allowHalfRating: true,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.w),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: kBlack,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        )
                      else
                        Container()
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
