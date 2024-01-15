import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cosmetropolis/data/remote/beautician/create_note.dart';
import 'package:cosmetropolis/data/remote/beautician/get_client_by_id.dart';
import 'package:cosmetropolis/data/remote/user/models/get_all_user_appointments.dart';
import 'package:cosmetropolis/helpers/base_screen_view.dart';
import 'package:cosmetropolis/routes/app_routes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/text_styles.dart';
import 'package:cosmetropolis/view/primary_theme/screens/registered_user/beauticians_view_model.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheet.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/bottomsheets_dialog.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/buttons_banners.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/footer.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/registered_user_dialogs.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/tables.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> allImgesection = [
  "https://i.imgur.com/2CuqQCO.webp",
  "https://i.imgur.com/CR0PyPk.webp",
  "https://i.imgur.com/gqnN08c.webp",
  "https://i.imgur.com/2txrGqz.webp"
];

class ClintsPage extends ConsumerStatefulWidget {
  const ClintsPage({super.key});

  @override
  ConsumerState<ClintsPage> createState() => _ClintsPageState();
}

class _ClintsPageState extends ConsumerState<ClintsPage> with BaseScreenView {
  int selectedPage = 0;

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
    getData();
  }

  bool isclientLoading = false;
  bool isClientDetailLoading = false;
  bool addNotes = false;

  Future<void> getData() async {
    isclientLoading = true;
    setState(() {});
    await _viewModel.getAllClients(context);
    if (_viewModel.allClients?.data?.isNotEmpty ?? false) {
      isClientDetailLoading = true;
      setState(() {});
      await _viewModel.getClientById(
        context,
        _viewModel.allClients?.data?[0].client?.id ?? "",
      );
      isClientDetailLoading = false;
    }
    await _viewModel.getAllAppointments();
    isclientLoading = false;
    setState(() {});
  }

  List<bool> productValues = [];
  List<String> selectedProducts = [
    // "All",
    // "Notes",
    // "Appoinments",
    // "Photos",
  ];
  final notesController = TextEditingController();
  final formulaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(beauticianViewModel);
    List<Widget> screens = [
      All(
        data: _viewModel.getClientByIdResponseModel,
        appointments:
            _viewModel.allUserAppointments ?? const GetAllUserAppointments(),
      ),
      Notes(
        data: _viewModel.getClientByIdResponseModel,
      ),
      Appoinments(
        data: _viewModel.allUserAppointments ?? const GetAllUserAppointments(),
      ),
      Photos(
        data: _viewModel.getClientByIdResponseModel,
      ),
    ];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).size.width < 850,
        child: FloatingActionButton.extended(
          onPressed: () {
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
                            context.pop();
                          },
                        ),
                      ),
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
              ),
            );
          },
          label: Text(
            "Search",
            style: urbanist500(kWhite, 14),
          ),
          icon: const Icon(
            Icons.search,
            color: kWhite,
          ),
          backgroundColor: kBlack,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: MediaQuery.of(context).size.width > 870 ? 1 : 0,
                        child: Visibility(
                          visible: MediaQuery.of(context).size.width > 870,
                          child: sideBar(context),
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 870,
                        child: SizedBox(width: 10.w),
                      ),
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
                                            "assets/icons/export.webp",
                                            height: 18.h,
                                            // width: 25.w,
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                530,
                                            child: Text(
                                              "Export Client List",
                                              style: urbanist500(kBlack, 13),
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
                                            "assets/icons/import.webp",
                                            height: 18.h,
                                            // width: 20.w,
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                530,
                                            child: Text(
                                              "Import Phone Contacts",
                                              style: urbanist500(kBlack, 13),
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
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color: kBlack,
                                  ),
                                  child: TextButton(
                                    onPressed: () {
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
                                                  "Add Client",
                                                  style: GoogleFonts.urbanist(
                                                    color: kBlack,
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w500,
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
                                                )
                                              ],
                                            ),
                                            backgroundColor:
                                                const Color(0xfff8f8f8),
                                            content: SingleChildScrollView(
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        900
                                                    ? 400
                                                    : MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.8,
                                                child: const AddClient(),
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
                                          Icons.person_add_alt,
                                          color: kWhite,
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Visibility(
                                          visible: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              530,
                                          child: Text(
                                            "Add a Client",
                                            style: urbanist500(kWhite, 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            if (isClientDetailLoading)
                              const CircularProgressIndicator(
                                color: kBlack,
                              )
                            else
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: klines),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                    vertical: 20.h,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10.h,
                                        ),
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
                                        height: 20.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
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
                                                          "Add Photo",
                                                          style: GoogleFonts
                                                              .urbanist(
                                                            color: kBlack,
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        IconButton(
                                                          onPressed: () =>
                                                              context.pop(),
                                                          icon: const Icon(
                                                            Icons.close,
                                                            color: kGrey,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    backgroundColor:
                                                        const Color(0xfff8f8f8),
                                                    content:
                                                        SingleChildScrollView(
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
                                                        child: AddPhoto(
                                                          id: _viewModel
                                                                  .getClientByIdResponseModel
                                                                  ?.data
                                                                  ?.client
                                                                  ?.id ??
                                                              "",
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/add_photo.webp",
                                                  height: 30.h,
                                                  width: 30.w,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Add Photo",
                                                  style:
                                                      urbanist500(kBlack, 12),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              await _viewModel
                                                  .getProduct(context);
                                              int num = _viewModel
                                                      .getProductsResponseModel
                                                      ?.data
                                                      ?.length ??
                                                  0;
                                              for (int i = 0; i < num; i++) {
                                                productValues.add(false);
                                              }
                                              // ignore: use_build_context_synchronously
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return StatefulBuilder(
                                                    builder:
                                                        (context, setState) {
                                                      return AlertDialog(
                                                        title: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "Add Note",
                                                              style:
                                                                  urbanist600(
                                                                kBlack,
                                                                16,
                                                              ),
                                                            ),
                                                            IconButton(
                                                              onPressed: () =>
                                                                  context.pop(),
                                                              icon: const Icon(
                                                                Icons.close,
                                                                color: kGrey,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        backgroundColor:
                                                            const Color(
                                                          0xfff8f8f8,
                                                        ),
                                                        content:
                                                            SingleChildScrollView(
                                                          child: SizedBox(
                                                            width: MediaQuery
                                                                            .of(
                                                                      context,
                                                                    )
                                                                        .size
                                                                        .width >
                                                                    900
                                                                ? 400
                                                                : MediaQuery.of(
                                                                      context,
                                                                    )
                                                                        .size
                                                                        .width *
                                                                    0.8,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  height: 20.h,
                                                                ),
                                                                Text(
                                                                  "Note*",
                                                                  style:
                                                                      urbanist500(
                                                                    kBlack,
                                                                    16,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 5.h,
                                                                ),
                                                                TextFormField(
                                                                  maxLines: 3,
                                                                  controller:
                                                                      notesController,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        "Note",
                                                                    hintStyle:
                                                                        urbanist400(
                                                                      kGrey,
                                                                      14,
                                                                    ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        6.r,
                                                                      ),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color:
                                                                            kGrey,
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        6.r,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.h,
                                                                ),
                                                                Text(
                                                                  "Formula*",
                                                                  style:
                                                                      urbanist500(
                                                                    kBlack,
                                                                    16,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 5.h,
                                                                ),
                                                                TextFormField(
                                                                  controller:
                                                                      formulaController,
                                                                  maxLines: 3,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        "Formula",
                                                                    hintStyle:
                                                                        urbanist400(
                                                                      kGrey,
                                                                      14,
                                                                    ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        6.r,
                                                                      ),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color:
                                                                            kGrey,
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        6.r,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.h,
                                                                ),
                                                                Text(
                                                                  "Products*",
                                                                  style:
                                                                      urbanist500(
                                                                    kBlack,
                                                                    16,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 5.h,
                                                                ),
                                                                Wrap(
                                                                  spacing:
                                                                      10, // Horizontal spacing between children
                                                                  runSpacing:
                                                                      5, // Vertical spacing between lines of children
                                                                  children: [
                                                                    ...List
                                                                        .generate(
                                                                      _viewModel
                                                                              .getProductsResponseModel
                                                                              ?.data
                                                                              ?.length ??
                                                                          0,
                                                                      (index) =>
                                                                          Container(
                                                                        // width:
                                                                        //     100,
                                                                        // padding:
                                                                        //     const EdgeInsets.symmetric(horizontal: 5),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        child:
                                                                            FittedBox(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Checkbox(
                                                                                activeColor: kBlack,
                                                                                value: productValues[index],
                                                                                onChanged: (val) {
                                                                                  setState(() {
                                                                                    productValues[index] = !productValues[index];
                                                                                  });

                                                                                  if (productValues[index]) {
                                                                                    selectedProducts.add(_viewModel.getProductsResponseModel?.data?[index].id ?? "");
                                                                                    log(selectedProducts.toString());
                                                                                  } else if (productValues[index] == false && selectedProducts.contains(_viewModel.getProductsResponseModel?.data?[index].id ?? "")) {
                                                                                    selectedProducts.remove(_viewModel.getProductsResponseModel?.data?[index].id ?? "");
                                                                                    log(selectedProducts.toString());
                                                                                  }
                                                                                  setState(() {});
                                                                                },
                                                                              ),
                                                                              Text(
                                                                                _viewModel.getProductsResponseModel?.data?[index].title ?? "",
                                                                                style: const TextStyle(color: kBlack, fontSize: 14),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 20.h,
                                                                ),
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child: Row(
                                                                    // mainAxisAlignment: MainAxisAlignment.end,
                                                                    children: [
                                                                      const Spacer(),
                                                                      Expanded(
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              40.h,
                                                                          width:
                                                                              double.infinity,
                                                                          child: BlackOutlineButton(
                                                                              context,
                                                                              "Cancel",
                                                                              () {
                                                                            Navigator.pop(
                                                                              context,
                                                                            );
                                                                          }),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            5.w,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              40.h,
                                                                          width:
                                                                              double.infinity,
                                                                          child: BlackButton(
                                                                              context,
                                                                              addNotes ? "Saving..." : "Save",
                                                                              () async {
                                                                            addNotes =
                                                                                true;
                                                                            setState(() {});
                                                                            await _viewModel.createNote(
                                                                              context,
                                                                              CreateNoteRequest(note: notesController.text, formula: formulaController.text, products: selectedProducts, client: _viewModel.getClientByIdResponseModel?.data?.client?.id ?? ""),
                                                                              _viewModel.getClientByIdResponseModel?.data?.client?.id ?? "",
                                                                            );
                                                                            selectedProducts.clear();
                                                                            productValues.clear();
                                                                            notesController.clear();
                                                                            formulaController.clear();
                                                                            addNotes =
                                                                                false;
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
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/add_note.webp",
                                                  height: 30.h,
                                                  width: 30.w,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Add Note",
                                                  style:
                                                      urbanist500(kBlack, 12),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                  content:
                                                      SingleChildScrollView(
                                                    child: SizedBox(
                                                      width: MediaQuery.of(
                                                                context,
                                                              ).size.width >
                                                              720
                                                          ? MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.5
                                                          : MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.9,
                                                      child:
                                                          const ClientAppointmentBooking(),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/book_appointment.webp",
                                                  height: 30.h,
                                                  width: 30.w,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Book Next",
                                                  style:
                                                      urbanist500(kBlack, 12),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const Divider(
                                        color: klines,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: [
                                              Card(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    65.r,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 65.r,
                                                  backgroundColor: kWhite,
                                                  child: CircleAvatar(
                                                    backgroundImage:
                                                        const NetworkImage(
                                                      "https://i.imgur.com/lTiSqZS.webp",
                                                    ),
                                                    radius: 60.r,
                                                  ),
                                                ),
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
                                                        BorderRadius.circular(
                                                      7.r,
                                                    ),
                                                    border: Border.all(
                                                      color: kBlue,
                                                    ),
                                                  ),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      showDialog(
                                                        context: context,
                                                        builder: (
                                                          BuildContext context,
                                                        ) {
                                                          return AlertDialog(
                                                            title: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Edit Client",
                                                                  style: GoogleFonts
                                                                      .urbanist(
                                                                    color:
                                                                        kBlack,
                                                                    fontSize:
                                                                        18.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                                IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    context
                                                                        .pop();
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons.close,
                                                                    color:
                                                                        kGrey,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            backgroundColor:
                                                                const Color(
                                                              0xfff8f8f8,
                                                            ),
                                                            content:
                                                                SingleChildScrollView(
                                                              child: SizedBox(
                                                                width: MediaQuery
                                                                                .of(
                                                                          context,
                                                                        )
                                                                            .size
                                                                            .width >
                                                                        900
                                                                    ? 400
                                                                    : MediaQuery
                                                                            .of(
                                                                          context,
                                                                        ).size.width *
                                                                        0.8,
                                                                child:
                                                                    EditClient(
                                                                  data: _viewModel
                                                                      .getClientByIdResponseModel,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 10.w,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .edit_note_outlined,
                                                            color: kBlue,
                                                          ),
                                                          Text(
                                                            "Edit",
                                                            style: urbanist600(
                                                              kBlue,
                                                              14,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
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
                                                _viewModel
                                                        .getClientByIdResponseModel
                                                        ?.data
                                                        ?.client
                                                        ?.name ??
                                                    "",
                                                style: urbanist600(kBlack, 16),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                _viewModel
                                                        .getClientByIdResponseModel
                                                        ?.data
                                                        ?.client
                                                        ?.email ??
                                                    "",
                                                style: urbanist400(
                                                  kdescription,
                                                  12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                _viewModel
                                                        .getClientByIdResponseModel
                                                        ?.data
                                                        ?.client
                                                        ?.phone ??
                                                    "",
                                                style: urbanist400(
                                                  kdescription,
                                                  12,
                                                ),
                                              ),
                                              Visibility(
                                                visible: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    501,
                                                child: SizedBox(
                                                  height: 20.h,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor: kBlue,
                                                    radius: 20.r,
                                                    child: ImageIcon(
                                                      const AssetImage(
                                                        "assets/icons/msg.webp",
                                                      ),
                                                      color: kWhite,
                                                      size: 20.sp,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  CircleAvatar(
                                                    backgroundColor: kBlue,
                                                    radius: 20.r,
                                                    child: ImageIcon(
                                                      const AssetImage(
                                                        "assets/icons/emailc.webp",
                                                      ),
                                                      color: kWhite,
                                                      size: 20.sp,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  CircleAvatar(
                                                    backgroundColor: kBlue,
                                                    radius: 20.r,
                                                    child: ImageIcon(
                                                      const AssetImage(
                                                        "assets/icons/phone.webp",
                                                      ),
                                                      color: kWhite,
                                                      size: 20.sp,
                                                    ),
                                                  ),
                                                  // Spacer(),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Visibility(
                                            visible: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                500,
                                            child: Container(
                                              // width: double.infinity,
                                              height: 40.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7.r),
                                                border:
                                                    Border.all(color: kBlue),
                                              ),
                                              child: TextButton(
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
                                                              "Edit Client",
                                                              style: GoogleFonts
                                                                  .urbanist(
                                                                color: kBlack,
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            IconButton(
                                                              onPressed: () =>
                                                                  context.pop(),
                                                              icon: const Icon(
                                                                Icons.close,
                                                                color: kGrey,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        backgroundColor:
                                                            const Color(
                                                          0xfff8f8f8,
                                                        ),
                                                        content:
                                                            SingleChildScrollView(
                                                          child: SizedBox(
                                                            width: MediaQuery
                                                                            .of(
                                                                      context,
                                                                    )
                                                                        .size
                                                                        .width >
                                                                    900
                                                                ? 400
                                                                : MediaQuery.of(
                                                                      context,
                                                                    )
                                                                        .size
                                                                        .width *
                                                                    0.8,
                                                            child: EditClient(
                                                              data: _viewModel
                                                                  .getClientByIdResponseModel,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 8.w,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons
                                                            .edit_note_outlined,
                                                        color: kBlue,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        style: urbanist600(
                                                          kBlue,
                                                          14,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                      //add tab bar here with 4 tabs
                                      ,
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      DefaultTabController(
                                        length: 4, // Number of tabs
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            TabBar(
                                              isScrollable: true,
                                              indicatorSize:
                                                  TabBarIndicatorSize.tab,
                                              onTap: (value) {
                                                setState(() {
                                                  selectedPage = value;
                                                });
                                              },
                                              // controller: _tabcontroller,
                                              indicatorColor: kBlack,
                                              labelColor: kBlack,
                                              unselectedLabelColor: kGrey,
                                              dividerColor: klines,
                                              tabs: const [
                                                Tab(
                                                  icon: Text(
                                                    'All',
                                                  ),
                                                ),
                                                Tab(icon: Text('Notes')),
                                                Tab(
                                                  icon: Text(
                                                    'Appointments',
                                                    // maxLines: 1,
                                                  ),
                                                ),
                                                Tab(icon: Text('Photos')),
                                              ],
                                            ),
                                            SizedBox(height: 10.h),
                                            screens[selectedPage],
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
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
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget sideBar(BuildContext context) {
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
                if (isclientLoading)
                  const Center(
                    child: CircularProgressIndicator(
                      color: kBlack,
                    ),
                  )
                else
                  ListView.builder(
                    itemCount: _viewModel.allClients?.data?.length,
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
                                        // img[index],
                                        "https://i.imgur.com/2CuqQCO.webp",
                                      ),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      _viewModel.allClients?.data?[index].client
                                              ?.name ??
                                          "",
                                      style: urbanist400(kBlack, 12),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const Spacer(),
                                    if (_viewModel.allClients?.data?[index]
                                            .isBlocked ??
                                        false)
                                      Text(
                                        "Blocked",
                                        style: urbanist600(
                                          Colors.red,
                                          12,
                                        ),
                                      )
                                    else
                                      BlackButton(context, "View", () async {
                                        isClientDetailLoading = true;
                                        setState(() {});
                                        await _viewModel.getClientById(
                                          context,
                                          _viewModel.allClients?.data?[index]
                                                  .client?.id ??
                                              "",
                                        );
                                        isClientDetailLoading = false;
                                        setState(() {});
                                      }),
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

class Photos extends StatelessWidget {
  final GetClientById? data;
  const Photos({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: data?.data?.photos?.length ?? 0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          child: CachedNetworkImage(
            imageUrl: data?.data?.photos?[index] ?? "",
            // width: double.infinity,
            // height: 140.h,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        );
      },
    );
  }
}

class Appoinments extends StatelessWidget {
  final GetAllUserAppointments data;
  const Appoinments({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        AppointmentsTable(
          data: data,
        ),
      ],
    );
  }
}

class Notes extends StatelessWidget {
  final GetClientById? data;
  const Notes({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data?.data?.clientNote?.length ?? 0,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.r,
                          ),
                          color: kdisable,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 5.h,
                          ),
                          child: Row(
                            children: [
                              ImageIcon(
                                const AssetImage(
                                  "assets/icons/photo2.webp",
                                ),
                                color: kBlack,
                                size: 15.sp,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Note",
                                style: urbanist500(
                                  kBlack,
                                  12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        DateFormat("dd MMMM yyyy").format(
                          DateTime.parse(
                            data?.data?.clientNote?[index].createdAt
                                    .toString() ??
                                "",
                          ),
                        ),
                        style: urbanist400(
                          kdescription,
                          14,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    data?.data?.clientNote?[index].note ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: urbanist400(
                      kdescription,
                      12,
                    ),
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
    );
  }
}

class All extends StatelessWidget {
  final GetClientById? data;
  final GetAllUserAppointments? appointments;
  const All({
    super.key,
    required this.data,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: allImgesection.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            backgroundImage: NetworkImage(
                              allImgesection[index],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20.r,
                              ),
                              color: const Color(
                                0xffCED2FF,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 8.h,
                              ),
                              child: Row(
                                children: [
                                  const ImageIcon(
                                    AssetImage(
                                      "assets/icons/photo1.webp",
                                    ),
                                    color: kBlue,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    "Client Photo",
                                    style: urbanist500(kBlue, 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "${20 + index} April 2023",
                            style: urbanist400(
                              kdescription,
                              14,
                            ),
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
          height: 10.h,
        ),

        //Notes Section>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: data?.data?.clientNote?.length ?? 0,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20.r,
                              ),
                              color: kdisable,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                                vertical: 5.h,
                              ),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    const AssetImage(
                                      "assets/icons/photo2.webp",
                                    ),
                                    color: kBlack,
                                    size: 15.sp,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Note",
                                    style: urbanist500(kBlack, 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            DateFormat("dd MMMM yyyy").format(
                              DateTime.parse(
                                data?.data?.clientNote?[index].createdAt
                                        .toString() ??
                                    "",
                              ),
                            ),
                            style: urbanist400(
                              kdescription,
                              14,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        data?.data?.clientNote?[index].note ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: urbanist400(
                          kdescription,
                          12,
                        ),
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
            scrollDirection: Axis.horizontal,
            itemCount: appointments?.data?.results?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: 3.w,
                ),
                child: Container(
                  // height: 180.h,
                  width: MediaQuery.of(
                            context,
                          ).size.width >
                          700
                      ? 110.w
                      : MediaQuery.of(context).size.width > 550
                          ? 130.w
                          : 170.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                    color: kselected,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              backgroundImage: const NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=180",
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  appointments?.data?.results?[index].beautician
                                          ?.name ??
                                      "",
                                  style: urbanist500(
                                    kBlack,
                                    14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Visibility(
                                  visible:
                                      MediaQuery.of(context).size.width < 1041,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: appointments
                                                      ?.data
                                                      ?.results?[index]
                                                      .status ==
                                                  "confirmed"
                                              ? Colors.green
                                              : Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        appointments?.data?.results?[index]
                                                .status ??
                                            "",
                                        style: urbanist600(
                                          appointments?.data?.results?[index]
                                                      .status ==
                                                  "confirmed"
                                              ? Colors.green
                                              : Colors.red,
                                          10,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Visibility(
                              visible: MediaQuery.of(context).size.width > 1040,
                              child: Row(
                                children: [
                                  Container(
                                    height: 10.h,
                                    width: 10.w,
                                    decoration: BoxDecoration(
                                      color: appointments?.data?.results?[index]
                                                  .status ==
                                              "confirmed"
                                          ? Colors.green
                                          : Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    appointments
                                            ?.data?.results?[index].status ??
                                        "",
                                    style: urbanist600(
                                      appointments?.data?.results?[index]
                                                  .status ==
                                              "confirmed"
                                          ? Colors.green
                                          : Colors.red,
                                      10,
                                    ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.w,
                        ),
                        child: Text(
                          "Services",
                          style: urbanist500(
                            kBlack,
                            14,
                          ),
                        ),
                      ),
                      ...List.generate(
                        appointments?.data?.results?[index].services?.length ??
                            0,
                        (ind) => Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: Text(
                            "${appointments?.data?.results?[index].services?[ind].name ?? ""}, ",
                            style: urbanist500(kBlack, 12),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${appointments?.data?.results?[index].date.toString().split(" ")[0]}",
                              style: urbanist500(
                                kBlack,
                                14,
                              ),
                            ),
                            Text(
                              "\$${appointments?.data?.results?[index].amount}",
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${appointments?.data?.results?[index].timeSlot}",
                              style: urbanist400(
                                kdescription,
                                10,
                              ),
                            ),
                            Text(
                              "${appointments?.data?.results?[index].paymentStatus}",
                              style: urbanist400(
                                kdescription,
                                10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: appointments?.data?.results?[index].status ==
                                  "confirmed"
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              10.r,
                            ),
                            bottomRight: Radius.circular(
                              10.r,
                            ),
                          ),
                        ),
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
            scrollDirection: Axis.horizontal,
            itemCount: data?.data?.photos?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: 3.w,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  child: CachedNetworkImage(
                    imageUrl: data?.data?.photos?[index] ?? "",
                    height: 120.h,
                    //
                    width: MediaQuery.of(
                              context,
                            ).size.width >
                            1200
                        ? 40.w
                        : MediaQuery.of(context).size.width > 800
                            ? 60.w
                            : MediaQuery.of(context).size.width > 500
                                ? 80.w
                                : 140.w,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
