import 'dart:developer';

import 'package:cosmetropolis/data/remote/beautician/add_client.dart';
import 'package:cosmetropolis/data/remote/beautician/add_client_photo.dart';
import 'package:cosmetropolis/data/remote/beautician/add_product.dart';
import 'package:cosmetropolis/data/remote/beautician/block_client.dart';
import 'package:cosmetropolis/data/remote/beautician/create_service.dart';
import 'package:cosmetropolis/data/remote/beautician/edit_client.dart';
import 'package:cosmetropolis/data/remote/beautician/get_client_by_id.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/file_picker.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/beauticians_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/homePage/home_page_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/public_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/profile_tabs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AddClient extends ConsumerStatefulWidget {
  const AddClient({super.key});

  @override
  ConsumerState<AddClient> createState() => _AddClientState();
}

class _AddClientState extends ConsumerState<AddClient> with BaseScreenView {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final homeNumberController = TextEditingController();
  final streetController = TextEditingController();
  final aptController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
  final birthdayController = TextEditingController();

  late BeauticianViewModel _viewModel;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    // image1 = const AssetImage("assets/icons/landing.webp");
    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    // getData();
  }

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
                  Text("Name*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                  Text("Mobile Number", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Home Number", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: homeNumberController,
                    decoration: InputDecoration(
                      hintText: "Home Number",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                  Text("Street Address*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: streetController,
                    decoration: InputDecoration(
                      hintText: "Street Address",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suite, Apt, etc. (optional)*",
                    style: urbanist500(kBlack, 14),
                  ),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: aptController,
                    decoration: InputDecoration(
                      hintText: "Suite, Apt, etc. (optional)",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                  Text("City*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: cityController,
                    decoration: InputDecoration(
                      hintText: "City",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("State*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: stateController,
                    decoration: InputDecoration(
                      hintText: "State",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                  Text("ZIP*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: zipCodeController,
                    decoration: InputDecoration(
                      hintText: "ZIP",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Birthday*", style: urbanist500(kBlack, 14)),
                  SizedBox(height: 5.h),
                  TextFormField(
                    readOnly: true,
                    controller: birthdayController,
                    decoration: InputDecoration(
                      hintText: "Birthday",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      suffixIcon: InkWell(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context, //context of current state
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                              2000,
                            ), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101),
                          );

                          if (pickedDate != null) {
                            //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);

                            birthdayController.text =
                                formattedDate; //set output date to TextField value.
                            //formatted date output using intl package =>  2021-03-16
                          }
                        },
                        child: const Icon(
                          Icons.date_range,
                          color: kGrey,
                        ),
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
        if (isLoading)
          const Center(
            child: SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: kBlack,
              ),
            ),
          )
        else
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: BlackButton(context, "Save", () async {
              isLoading = true;
              setState(() {});
              await _viewModel.addNewClient(
                context,
                AddClientRequest(
                  name: nameController.text,
                  email: emailController.text,
                  phone: phoneController.text,
                  homeNumber: homeNumberController.text,
                  streetAddress: streetController.text,
                  apt: int.parse(aptController.text),
                  city: cityController.text,
                  state: stateController.text,
                  zip: zipCodeController.text,
                  birthday: birthdayController.text,
                  isOffline: true,
                ),
              );
              isLoading = false;
              setState(() {});
              context.pop();
            }),
          )
      ],
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

bool blocking = false;

class EditClient extends ConsumerStatefulWidget {
  final GetClientById? data;
  const EditClient({super.key, required this.data});

  @override
  ConsumerState<EditClient> createState() => _EditClientState();
}

class _EditClientState extends ConsumerState<EditClient> with BaseScreenView {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final homeNumberController = TextEditingController();
  final streetController = TextEditingController();
  final aptController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
  final birthdayController = TextEditingController();

  final reasonController = TextEditingController();

  late BeauticianViewModel _viewModel;
  bool isLoading = false;
  bool deleting = false;
  @override
  void initState() {
    super.initState();
    // image1 = const AssetImage("assets/icons/landing.webp");
    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    nameController.text = widget.data?.data?.client?.name ?? "";
    emailController.text = widget.data?.data?.client?.email ?? "";
    phoneController.text = widget.data?.data?.client?.phone ?? "";
    homeNumberController.text = widget.data?.data?.client?.homeNumber ?? "";
    streetController.text = widget.data?.data?.client?.streetAddress ?? "";
    aptController.text = widget.data?.data?.client?.apt.toString() ?? "";
    stateController.text = widget.data?.data?.client?.state ?? "";
    cityController.text = widget.data?.data?.client?.city ?? "";
    zipCodeController.text = widget.data?.data?.client?.zip ?? "";
    birthdayController.text = DateFormat('yyyy-MM-dd')
        .format(widget.data?.data?.client?.birthday ?? DateTime.now());
    // getData();
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
                context.pop();
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
                          IconButton(
                            onPressed: () => context.pop(),
                            icon: const Icon(
                              Icons.close,
                              color: kGrey,
                            ),
                          )
                        ],
                      ),
                      backgroundColor: const Color(0xfff8f8f8),
                      content: SingleChildScrollView(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 900
                              ? 400
                              : MediaQuery.of(context).size.width * 0.8,
                          child: const MergeClient(),
                        ),
                      ),
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
                context.pop();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Block Client",
                                style: urbanist600(kBlack, 16),
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
                          backgroundColor: const Color(0xfff8f8f8),
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
                                  Text("Reason*",
                                      style: urbanist500(kBlack, 16)),
                                  SizedBox(height: 5.h),
                                  TextFormField(
                                    controller: reasonController,
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
                                              context.pop();
                                            }),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        if (blocking)
                                          const CircularProgressIndicator(
                                            color: kBlack,
                                          )
                                        else
                                          Expanded(
                                            child: SizedBox(
                                              height: 40.h,
                                              width: double.infinity,
                                              child: BlackButton(
                                                  context, "Submit", () async {
                                                blocking = true;
                                                setState(() {});
                                                await _viewModel.blockClient(
                                                    context,
                                                    widget.data?.data?.client
                                                            ?.id ??
                                                        "",
                                                    BlockClientRequest(
                                                        reason: reasonController
                                                            .text,
                                                        clientId: widget
                                                                .data
                                                                ?.data
                                                                ?.client
                                                                ?.id ??
                                                            ""));
                                                blocking = false;
                                                setState(() {});
                                                context.pop();
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
                          // actions: [

                          // ],
                        );
                      },
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
                context.pop();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Confirm",
                                style: urbanist600(kBlack, 16),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.pop();
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: kGrey,
                                ),
                              )
                            ],
                          ),
                          backgroundColor: const Color(0xfff8f8f8),
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
                                    child: BlackButton(context,
                                        deleting ? "Deleting..." : "Delete",
                                        () async {
                                      deleting = true;
                                      setState(() {});
                                      await _viewModel.deleteClient(context,
                                          widget.data?.data?.client?.id ?? "");

                                      deleting = false;
                                      setState(() {});
                                    }),
                                  ),
                                  SizedBox(height: 10.h),
                                  SizedBox(
                                    height: 40.h,
                                    width: double.infinity,
                                    child: BlackOutlineButton(
                                      context,
                                      "Cancel",
                                      () {},
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.delete_outline_outlined,
                    color: kBlack,
                    size: 25.sp,
                  ),
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
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: homeNumberController,
                    decoration: InputDecoration(
                      hintText: "Home Number",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: streetController,
                    decoration: InputDecoration(
                      hintText: "Street Address",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suite, Apt, etc. (optional)*",
                    style: urbanist500(kBlack, 16),
                  ),
                  SizedBox(height: 5.h),
                  TextFormField(
                    controller: aptController,
                    decoration: InputDecoration(
                      hintText: "Suite, Apt, etc. (optional)",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: cityController,
                    decoration: InputDecoration(
                      hintText: "City",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: stateController,
                    decoration: InputDecoration(
                      hintText: "State",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: zipCodeController,
                    decoration: InputDecoration(
                      hintText: "ZIP",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                ],
              ),
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
                    controller: birthdayController,
                    decoration: InputDecoration(
                      hintText: "Birthday",
                      hintStyle: urbanist400(kGrey, 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(color: kGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
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
        if (isLoading)
          const SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              color: kBlack,
            ),
          )
        else
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: BlackButton(context, "Save", () async {
              isLoading = true;
              setState(() {});
              await _viewModel.editClient(
                  context,
                  EditClientRequest(
                    name: nameController.text,
                    phone: phoneController.text,
                    homeNumber: homeNumberController.text,
                    apt: int.parse(aptController.text),
                    city: cityController.text,
                    state: stateController.text,
                    zip: zipCodeController.text,
                    birthday: DateFormat('yyyy-MM-dd').format(
                      widget.data?.data?.client?.birthday ?? DateTime.now(),
                    ),
                    streetAddress: streetController.text,
                    email: emailController.text,
                  ),
                  widget.data?.data?.client?.id ?? "");
              isLoading = false;
              setState(() {});
              context.pop();
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
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80.r),
              borderSide: const BorderSide(
                color: klines,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80.r),
              borderSide: const BorderSide(
                color: klines,
              ),
            ),
            prefixIcon: const Icon(
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
                            backgroundImage: const NetworkImage(
                              "https://tse3.mm.bing.net/th?id=OIP.ZqRQho6x1d-WhyN6LoVLggHaJQ&pid=Api&P=0&h=180",
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "Eleanor Pena",
                            style: urbanist400(kBlack, 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
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
              const Spacer(),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: BlackOutlineButton(context, "Cancel", () {
                    context.pop();
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
                    context.pop();
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

class AddPhoto extends ConsumerStatefulWidget {
  final String id;
  const AddPhoto({super.key, required this.id});

  @override
  ConsumerState<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends ConsumerState<AddPhoto> with BaseScreenView {
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

  late BeauticianViewModel _viewModel;
  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(beauticianViewModel)..attachView(this);
  }

  bool isLoading = false;
  String? photo;
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
              children: [
                Image.asset("assets/icons/add_photo.webp", height: 30.sp),
                SizedBox(
                  height: 10.h,
                ),
                Text("Upload From Your Device", style: urbanist600(kBlack, 16)),
                SizedBox(
                  height: 10.h,
                ),
                BlackButton(context, "Upload Photo", () async {
                  await openPickImageDialog(context);
                  photo = imgUrl;
                  log(photo ?? "No photo");
                  photo != null
                      ? await _viewModel.addClientPhoto(
                          context,
                          AddPhotoRequest(photoUrls: [photo ?? ""]),
                          widget.id,
                        )
                      : log("no photo");
                  // context.pop();
                })
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
              children: [
                Image.asset("assets/icons/add_photo.webp", height: 30.sp),
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
              children: [
                Image.asset("assets/icons/add_photo.webp", height: 30.sp),
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

class SelectClient extends StatelessWidget {
  const SelectClient({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      "https://i.imgur.com/2CuqQCO.webp",
      "https://i.imgur.com/CR0PyPk.webp",
      "https://i.imgur.com/gqnN08c.webp",
      "https://i.imgur.com/2txrGqz.webp"
    ];
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: kselected,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80.r),
              borderSide: const BorderSide(
                color: klines,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80.r),
              borderSide: const BorderSide(
                color: klines,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80.r),
              borderSide: const BorderSide(
                color: klines,
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 11.sp,
              ),
              child: const ImageIcon(
                AssetImage(
                  "assets/icons/search.webp",
                ),
                color: kBlack,
              ),
            ),
            hintText: 'Search name or phone number',
            // contentPadding: EdgeInsets.symmetric(
            //     horizontal: 16.h, vertical: 12.w),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: klines),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              children: [
                ListView.builder(
                  itemCount: img.length,
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
                                      img[index],
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Eleanor Pena",
                                    style: urbanist400(kBlack, 12),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const Spacer(),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    "Add your clients and invite them to book an appointment",
                    textAlign: TextAlign.center,
                    style: urbanist600(
                      kBlack,
                      MediaQuery.of(context).size.width > 850 ? 16 : 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      border: Border.all(),
                    ),
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
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
                          color: const Color(0xffE0F3FD),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: Column(
                            children: [
                              Text(
                                "Learn how to gain more clients",
                                textAlign: TextAlign.center,
                                style: urbanist400(kBlack, 12),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Get More Clients",
                                style: urbanist600(kBlack, 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xffFEF9ED),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: Column(
                            children: [
                              Text(
                                "What do my clients see when they book?",
                                textAlign: TextAlign.center,
                                style: urbanist400(kBlack, 12),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Show Me",
                                style: urbanist600(kBlack, 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Need help importing your client list? We can help.\nSend your client list Here",
                  style: urbanist500(kBlack, 10),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CreatePromotion extends StatelessWidget {
  const CreatePromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Promotion Demo",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text("Description*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        TextFormField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "Description",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text("Apply to*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Beard trim, Deep conditioning treatment",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text("Start Date*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "24/4/2023",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text("End Date*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "24/4/2023",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text("Promotion Value*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "0.00",
                  hintStyle: urbanist400(kGrey, 14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: const BorderSide(color: kGrey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: kGrey),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.r),
                        bottomLeft: Radius.circular(6.r),
                      ),
                      color: kWhite,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.percent_outlined,
                        color: kBlack,
                        size: 20.sp,
                      ),
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.r),
                        topLeft: Radius.circular(6.r),
                      ),
                      color: kLightBlue,
                    ),
                    child: Center(
                      child: Text(
                        "USD",
                        style: urbanist500(kBlack, 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text("Limit*", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: BlackButton(context, "Save", () {
            // if (MediaQuery.of(context).size.width < 700) {
            //   fullBottomSheet(
            //       context,
            //       Padding(
            //         padding: EdgeInsets.symmetric(vertical: 15.h),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   "Scheduled Promotions",
            //                   style: GoogleFonts.urbanist(
            //                     color: kBlack,
            //                     fontSize: 16.sp,
            //                     fontWeight: FontWeight.w600,
            //                   ),
            //                 ),
            //                 InkWell(
            //                   onTap: () {
            //                     context.pop();
            //                   },
            //                   child: const Icon(
            //                     Icons.close,
            //                     color: kGrey,
            //                   ),
            //                 )
            //               ],
            //             ),
            //             SizedBox(height: 10.h),
            //             ScheduledPromotion(),
            //           ],
            //         ),
            //       ));
            // } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Scheduled Promotion",
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
                      )
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
                      child: const ScheduledPromotion(),
                    ),
                  ),
                );
              },
            );
          }),
        )
      ],
    );
  }
}

class ScheduledPromotion extends StatelessWidget {
  const ScheduledPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Name", style: urbanist500(kBlack, 14)),
        SizedBox(height: 5.h),
        Container(
          height: 100.h,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            image: const DecorationImage(
              image: AssetImage("assets/icons/promotion_bg.webp"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("\$25", style: urbanist600(kBlack, 22)),
              Text("Off", style: urbanist600(kBlack, 14)),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Text("Services", style: urbanist500(kBlack, 14)),
        SizedBox(height: 20.h),
        Text(
          "Beard Trim, Deep Conditioning Treatment",
          style: urbanist400(kGrey, 14),
        ),
        SizedBox(height: 10.h),
        Text("Campaign Range", style: urbanist500(kBlack, 14)),
        SizedBox(height: 10.h),
        Text("26/04/2023 - 28/04/2023", style: urbanist400(kGrey, 14)),
        SizedBox(height: 20.h),
        Text(
          "See how similar professionals build their profile",
          style: urbanist400(kdescription, 14),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlackOutlineButton(context, "Delete", () {}),
            SizedBox(width: 10.w),
            SizedBox(
              height: 40.h,
              child: BlackButton(context, "Publish", () {}),
            ),
          ],
        )
      ],
    );
  }
}

class SetMonthlyGoal extends StatefulWidget {
  const SetMonthlyGoal({super.key});

  @override
  State<SetMonthlyGoal> createState() => _SetMonthlyGoalState();
}

class _SetMonthlyGoalState extends State<SetMonthlyGoal> {
  List<String> attractText = [
    "4 new clients",
    "6 new clients",
    "6+ new clients"
  ];
  List<String> increaseText = ["\$75 More", "\$150 More", "6+ new clients"];
  List<String> streamlineText = [
    "Be an expert on Cosmetropolis features",
    "Transition my clients to Cosmetropolis",
    "Polish my service menu + Pricing"
  ];
  @override
  Widget build(BuildContext context) {
    int selectedOption = 1; // Initially select the first option

    void handleOptionChange(int? value) {
      setState(() {
        selectedOption = value!;
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I want to attract new clients",
                    style: urbanist600(kBlack, 16),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Describe your customer reach and preference here",
                    style: urbanist400(kBlack, 14),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Wrap(
                spacing: 8.0, // Space between each radio button
                children: [
                  for (int i = 0; i <= 2; i++)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          fillColor: MaterialStateProperty.all(kBlue),
                          focusColor: kBlue,
                          value: i,
                          groupValue: selectedOption,
                          onChanged: handleOptionChange,
                        ),
                        Text(attractText[i], style: urbanist400(kBlack, 14)),
                      ],
                    ),
                ],
              ),
            )
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
                    "I want to attract new clients",
                    style: urbanist600(kBlack, 16),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Describe your customer reach and preference here",
                    style: urbanist400(kBlack, 14),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Wrap(
                spacing: 8.0, // Space between each radio button
                children: [
                  for (int i = 0; i <= 2; i++)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          fillColor: MaterialStateProperty.all(kBlue),
                          focusColor: kBlue,
                          value: i,
                          groupValue: selectedOption,
                          onChanged: handleOptionChange,
                        ),
                        Text(increaseText[i], style: urbanist400(kBlack, 14)),
                      ],
                    ),
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
                  Text(
                    "I want to attract new clients",
                    style: urbanist600(kBlack, 16),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Describe your customer reach and preference here",
                    style: urbanist400(kBlack, 14),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Wrap(
                spacing: 8.0, // Space between each radio button
                children: [
                  for (int i = 0; i <= 2; i++)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          fillColor: MaterialStateProperty.all(kBlue),
                          // focusColor: kBlue,
                          value: i,
                          groupValue: selectedOption,
                          onChanged: handleOptionChange,
                        ),
                        Expanded(
                          child: Text(
                            streamlineText[i],
                            style: urbanist400(kBlack, 14),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: BlackButton(context, "Set Goal", () {}),
        )
      ],
    );
  }
}

class AddClientPhoto extends StatelessWidget {
  const AddClientPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      "https://i.imgur.com/2CuqQCO.webp",
      "https://i.imgur.com/CR0PyPk.webp",
      "https://i.imgur.com/gqnN08c.webp",
      "https://i.imgur.com/2txrGqz.webp"
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "See how similar professionals build their profile",
          style: urbanist400(kdescription, 14),
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          itemCount: img.length,
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
                              img[index],
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            children: [
                              Text(
                                "Eleanor Pena",
                                style: urbanist400(kBlack, 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "10K+ Booked",
                                style: urbanist400(kBlue, 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          BlackButton(context, "View Profile", () {}),
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
      ],
    );
  }
}

class AddProduct extends ConsumerStatefulWidget {
  const AddProduct({super.key});

  @override
  ConsumerState<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends ConsumerState<AddProduct> with BaseScreenView {
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

  bool isLoading = false;

  late BeauticianViewModel _viewModel;
  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(beauticianViewModel)..attachView(this);
    // getData();
  }

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Title*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: "Product Name",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Description*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          controller: descriptionController,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "Product uses, attributes & price",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Link (OPTIONAL)*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          controller: linkController,
          decoration: InputDecoration(
            hintText: "https://www.example.com",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: kGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlackOutlineButton(context, "Cancel", () {
              context.pop();
            }),
            const SizedBox(width: 15),
            if (isLoading)
              const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: kBlack,
                ),
              )
            else
              SizedBox(
                height: 40.h,
                // width: 100.w,
                child: BlackButton(context, "Save", () async {
                  isLoading = true;
                  setState(() {});
                  await _viewModel.addProduct(
                      context,
                      AddProductRequest(
                          title: nameController.text,
                          description: descriptionController.text,
                          link: linkController.text));
                  isLoading = false;
                  setState(() {});
                  context.pop();
                }),
              ),
          ],
        )
      ],
    );
  }
}

class OnlineBookingProfile extends StatelessWidget {
  const OnlineBookingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text("Online Booking & Profile", style: urbanist600(kBlack, 18)),
        SizedBox(height: 20.h),
        GestureDetector(
          onTap: () {
            MediaQuery.of(context).size.width > 700
                ? showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
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
                            child: const OnlineBooking(),
                          ),
                        ),
                      );
                    },
                  )
                :

                // bottom sheet for service menu
                fullBottomSheet(
                    context,
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            const OnlineBooking(),
                          ],
                        ),
                      ),
                    ),
                  );
          },
          child: Container(
            color: kWhite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              children: [
                Text(
                  "Online booking",
                  style: urbanist400(kGrey, 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    MediaQuery.of(context).size.width > 700
                        ? showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
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
                                    child: const OnlineBooking(),
                                  ),
                                ),
                              );
                            },
                          )
                        :

                        // bottom sheet for service menu
                        fullBottomSheet(
                            context,
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    const OnlineBooking(),
                                  ],
                                ),
                              ),
                            ),
                          );
                  },
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
        GestureDetector(
          onTap: () {
            MediaQuery.of(context).size.width > 700
                ? showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        backgroundColor: const Color(0xfff8f8f8),
                        content: SingleChildScrollView(
                          child: SizedBox(
                            width: MediaQuery.of(
                                      context,
                                    ).size.width >
                                    900
                                ? 600
                                : MediaQuery.of(
                                      context,
                                    ).size.width *
                                    0.8,
                            child: const PersonalInfo(),
                          ),
                        ),
                      );
                    },
                  )
                :

                // bottom sheet for service menu

                fullBottomSheet(
                    context,
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [],
                            ),
                            SizedBox(height: 10.h),
                            const PersonalInfo(),
                          ],
                        ),
                      ),
                    ),
                  );
          },
          child: Container(
            color: kWhite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              children: [
                Text(
                  "Personal Info",
                  style: urbanist400(kGrey, 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    MediaQuery.of(context).size.width > 700
                        ? showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                ),
                                backgroundColor: const Color(0xfff8f8f8),
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: MediaQuery.of(
                                              context,
                                            ).size.width >
                                            900
                                        ? 600
                                        : MediaQuery.of(
                                              context,
                                            ).size.width *
                                            0.8,
                                    child: const PersonalInfo(),
                                  ),
                                ),
                              );
                            },
                          )
                        :

                        // bottom sheet for service menu

                        fullBottomSheet(
                            context,
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [],
                                    ),
                                    SizedBox(height: 10.h),
                                    const PersonalInfo(),
                                  ],
                                ),
                              ),
                            ),
                          );
                  },
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
        GestureDetector(
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
                              "Business Info",
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
                        content: SingleChildScrollView(
                          child: SizedBox(
                            width: MediaQuery.of(
                                      context,
                                    ).size.width >
                                    900
                                ? 600
                                : MediaQuery.of(
                                      context,
                                    ).size.width *
                                    0.8,
                            child: const BusinessInfo(),
                          ),
                        ),
                      );
                    },
                  )
                :

                // bottom sheet for service menu

                fullBottomSheet(
                    context,
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Business Info",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: kGrey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            const BusinessInfo(),
                          ],
                        ),
                      ),
                    ),
                  );
          },
          child: Container(
            color: kWhite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              children: [
                Text(
                  "Business Info",
                  style: urbanist400(kGrey, 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    MediaQuery.of(context).size.width > 700
                        ? showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Business Info",
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
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: MediaQuery.of(
                                              context,
                                            ).size.width >
                                            900
                                        ? 600
                                        : MediaQuery.of(
                                              context,
                                            ).size.width *
                                            0.8,
                                    child: const BusinessInfo(),
                                  ),
                                ),
                              );
                            },
                          )
                        :

                        // bottom sheet for service menu

                        fullBottomSheet(
                            context,
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Business Info",
                                          style: GoogleFonts.urbanist(
                                            color: kBlack,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context.pop();
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: kGrey,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    const BusinessInfo(),
                                  ],
                                ),
                              ),
                            ),
                          );
                  },
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
        //social info
        GestureDetector(
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
                              "Social Info",
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
                        content: SingleChildScrollView(
                          child: SizedBox(
                            width: MediaQuery.of(
                                      context,
                                    ).size.width >
                                    900
                                ? 600
                                : MediaQuery.of(
                                      context,
                                    ).size.width *
                                    0.8,
                            child: const SocialInfo(),
                          ),
                        ),
                      );
                    },
                  )
                :

                // bottom sheet for service menu

                fullBottomSheet(
                    context,
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Social Info",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: kGrey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            const SocialInfo(),
                          ],
                        ),
                      ),
                    ),
                  );
          },
          child: Container(
            color: kWhite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              children: [
                Text(
                  "Social Info",
                  style: urbanist400(kGrey, 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    MediaQuery.of(context).size.width > 700
                        ? showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Social Info",
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
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: MediaQuery.of(
                                              context,
                                            ).size.width >
                                            900
                                        ? 600
                                        : MediaQuery.of(
                                              context,
                                            ).size.width *
                                            0.8,
                                    child: const SocialInfo(),
                                  ),
                                ),
                              );
                            },
                          )
                        :

                        // bottom sheet for service menu

                        fullBottomSheet(
                            context,
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Social Info",
                                          style: GoogleFonts.urbanist(
                                            color: kBlack,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context.pop();
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: kGrey,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    const SocialInfo(),
                                  ],
                                ),
                              ),
                            ),
                          );
                  },
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
        //edit profile
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Container(
            color: kWhite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              children: [
                Text(
                  "Edit & promote\nmy profile",
                  style: urbanist400(kGrey, 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
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
        //photos
        GestureDetector(
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
                              "Photos",
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
                        content: SingleChildScrollView(
                          child: SizedBox(
                            width: MediaQuery.of(
                                      context,
                                    ).size.width >
                                    900
                                ? 600
                                : MediaQuery.of(
                                      context,
                                    ).size.width *
                                    0.8,
                            child: const PhotosTab(),
                          ),
                        ),
                      );
                    },
                  )
                :

                // bottom sheet for service menu

                fullBottomSheet(
                    context,
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Photos",
                                  style: GoogleFonts.urbanist(
                                    color: kBlack,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: kGrey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            const PhotosTab(),
                          ],
                        ),
                      ),
                    ),
                  );
          },
          child: Container(
            color: kWhite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              children: [
                Text(
                  "Photos",
                  style: urbanist400(kGrey, 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    MediaQuery.of(context).size.width > 700
                        ? showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Photos",
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
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: MediaQuery.of(
                                              context,
                                            ).size.width >
                                            900
                                        ? 600
                                        : MediaQuery.of(
                                              context,
                                            ).size.width *
                                            0.8,
                                    child: const PhotosTab(),
                                  ),
                                ),
                              );
                            },
                          )
                        :

                        // bottom sheet for service menu

                        fullBottomSheet(
                            context,
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Photos",
                                          style: GoogleFonts.urbanist(
                                            color: kBlack,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context.pop();
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: kGrey,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    const PhotosTab(),
                                  ],
                                ),
                              ),
                            ),
                          );
                  },
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
      ],
    );
  }
}

class OnlineBooking extends StatefulWidget {
  const OnlineBooking({super.key});

  @override
  State<OnlineBooking> createState() => _OnlineBookingState();
}

class _OnlineBookingState extends State<OnlineBooking> {
  bool onlineboking = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Online Booking", style: urbanist600(kBlack, 16)),
            SizedBox(
              height: 50,
              width: 50,
              child: Switch(
                activeColor: kBlue,
                activeTrackColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: klines,
                value: onlineboking,
                onChanged: (value) {
                  setState(() {
                    onlineboking = value;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Text(
          "Require Clients to Provide Credit Card to Book",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        DropdownButtonFormField<String>(
          dropdownColor: kWhite,
          isExpanded: true,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: klines),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: klines),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
            // suffixIcon: Icon(Icons.arrow_drop_down),
          ),
          items: [
            ...List.generate(
              5,
              (index) => DropdownMenuItem<String>(
                value: 'Option $index',
                child: Text(
                  'Option $index',
                  style: urbanist400(kGrey, 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
          onChanged: (String? value) {
            // Handle dropdown value change
          },
        ),
        SizedBox(height: 20.h),
        Text(
          "Schedule Appointments...",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        DropdownButtonFormField<String>(
          dropdownColor: kWhite,
          isExpanded: true,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: klines),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: klines),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
            // suffixIcon: Icon(Icons.arrow_drop_down),
          ),
          items: [
            ...List.generate(
              5,
              (index) => DropdownMenuItem<String>(
                value: 'Option $index',
                child: Text(
                  'Option $index',
                  style: urbanist400(kGrey, 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
          onChanged: (String? value) {
            // Handle dropdown value change
          },
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Allow Multi-Service Bookings",
              style: urbanist600(kBlack, 14),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Switch(
                activeColor: kBlue,
                activeTrackColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: klines,
                value: onlineboking,
                onChanged: (value) {
                  setState(() {
                    onlineboking = value;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Show Last Minute Availability",
              style: urbanist600(kBlack, 14),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Switch(
                activeColor: kBlue,
                activeTrackColor: kWhite,
                inactiveThumbColor: kWhite,
                inactiveTrackColor: klines,
                value: onlineboking,
                onChanged: (value) {
                  setState(() {
                    onlineboking = value;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Text(
          "Hours Notice for Online Bookings*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "3",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Hours Notice for Cancellations**",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "24",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlackOutlineButton(context, "Cancel", () {}),
            const SizedBox(width: 15),
            SizedBox(
              height: 40.h,
              // width: 100.w,
              child: BlackButton(context, "Save", () {
                context.pop();
              }),
            ),
          ],
        )
      ],
    );
  }
}

class SocialInfo extends StatelessWidget {
  const SocialInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Instagram Username*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Facebook URL*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Twitter Username*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Business Website*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Yelp URL*",
          style: urbanist500(kBlack, 14),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: "",
            hintStyle: urbanist400(kGrey, 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: const BorderSide(color: klines),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlackOutlineButton(context, "Cancel", () {}),
            const SizedBox(width: 15),
            SizedBox(
              height: 40.h,
              // width: 100.w,
              child: BlackButton(context, "Save", () {}),
            ),
          ],
        )
      ],
    );
  }
}

class CreateService extends ConsumerStatefulWidget {
  const CreateService({super.key});

  @override
  ConsumerState<CreateService> createState() => _CreateServiceState();
}

class _CreateServiceState extends ConsumerState<CreateService>
    with BaseScreenView {
  bool saving = false;
  bool isLoading = false;
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final durationController = TextEditingController();
  String category = "";
  String serviceType = "";
  late BeauticianViewModel _viewModel;
  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(beauticianViewModel)..attachView(this);

    getData();
  }

  void getData() async {
    isLoading = true;
    setState(() {});
    await ref.read(homePageViewModel).getServiceTypes();

    await ref.read(homePageViewModel).getServiceCategories();

    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(
              color: kBlack,
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("Create Service", style: urbanist600(kBlack, 16)),
              SizedBox(height: 20.h),
              Text(
                "Service Name*",
                style: urbanist500(
                  kBlack,
                  16,
                ),
              ),
              SizedBox(height: 5.h),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Service Name",
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
              Text(
                "Service Description*",
                style: urbanist500(
                  kBlack,
                  16,
                ),
              ),
              SizedBox(height: 5.h),
              TextFormField(
                controller: descriptionController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Service Description",
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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Duration in Minutes*",
                          style: urbanist500(
                            kBlack,
                            16,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        TextFormField(
                          controller: durationController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            hintText: "Duration in minutes",
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
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price*",
                          style: urbanist500(
                            kBlack,
                            16,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        TextFormField(
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            hintText: "Price",
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Service Type",
                style: urbanist500(kBlack, 14),
              ),
              SizedBox(height: 5.h),
              DropdownButtonFormField<String>(
                dropdownColor: kWhite,
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: klines),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: klines),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  // suffixIcon: Icon(Icons.arrow_drop_down),
                ),
                items: [
                  ...List.generate(
                    ref
                            .read(homePageViewModel)
                            .serviceTypesList
                            ?.data
                            ?.length ??
                        0,
                    (index) => DropdownMenuItem<String>(
                      value: ref
                              .read(homePageViewModel)
                              .serviceTypesList
                              ?.data?[index]
                              .id ??
                          '',
                      child: Text(
                        ref
                                .read(homePageViewModel)
                                .serviceTypesList
                                ?.data?[index]
                                .name ??
                            '',
                        style: urbanist400(kGrey, 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
                onChanged: (String? value) {
                  serviceType = value ?? "";
                },
              ),
              SizedBox(height: 20.h),
              Text(
                "Service Category",
                style: urbanist500(kBlack, 14),
              ),
              SizedBox(height: 5.h),
              DropdownButtonFormField<String>(
                dropdownColor: kWhite,
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: klines),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: klines),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  // suffixIcon: Icon(Icons.arrow_drop_down),
                ),
                items: [
                  ...List.generate(
                    ref
                            .read(homePageViewModel)
                            .serviceCategoriesList
                            ?.data
                            ?.length ??
                        0,
                    (index) => DropdownMenuItem<String>(
                      value: ref
                              .read(homePageViewModel)
                              .serviceCategoriesList
                              ?.data?[index]
                              .id ??
                          '',
                      child: Text(
                        ref
                                .read(homePageViewModel)
                                .serviceCategoriesList
                                ?.data?[index]
                                .name ??
                            '',
                        style: urbanist400(kGrey, 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
                onChanged: (String? value) {
                  category = value ?? "";
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlackOutlineButton(context, "Cancel", () {
                    context.pop();
                  }),
                  const SizedBox(width: 15),
                  if (saving)
                    const SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          color: kBlack,
                        ))
                  else
                    SizedBox(
                      height: 40.h,
                      // width: 100.w,
                      child: BlackButton(context, "Save", () async {
                        saving = true;
                        setState(() {});
                        await _viewModel.addService(
                            context,
                            CreateServiceRequest(
                              name: nameController.text,
                              description: descriptionController.text,
                              price: int.parse(priceController.text),
                              category: category,
                              serviceType: serviceType,
                              durationInMinutes:
                                  int.parse(durationController.text),
                            ));
                        saving = false;
                        setState(() {});
                        context.pop();
                      }),
                    ),
                ],
              )
            ],
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
