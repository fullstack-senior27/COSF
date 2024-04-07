import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/routes/navigator_service.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/view/locator.dart';
import 'package:cosmetropolis/view/primary_theme/screens/unregistered_user/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cosmetropolis/view/primary_theme/widgets/button_with_icon.dart';

class NavbarFreeWidget extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavbarFreeWidget({
    super.key,
    required this.scaffoldKey,
  });

  @override
  ConsumerState<NavbarFreeWidget> createState() => _NavbarFreeWidgetState();
}

class _NavbarFreeWidgetState extends ConsumerState<NavbarFreeWidget> {
  final NavigationService _navigationService = locator<NavigationService>();
  late UserViewModel _viewModel;
  
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(userViewModel);
  }

  @override
  Widget build(BuildContext context) {
    
    return MediaQuery.of(context).size.width > 980
        ? primaryStyle()
        : primaryStyleRes();
  }

  Widget primaryStyle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/logo_big.png",
            width: 60.w,
            height: 50.h,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (_viewModel.profileDetailsResponse?.data == null)
                ... [
                  ButtonWithIconWidget(
                    iconUrl: "assets/icons/avatar.png",
                    text: "Log In / Sign Up",
                    textColor: kWhite,
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      context.go("/login");
                    },
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  ButtonWithIconWidget(
                    text: "List Your Business",
                    textColor: kWhite,
                    backgroundColor: kBlack,
                    onPressed: () {
                      context.go("/help");
                    },
                  ),
                ]
                else
                ... [
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
                              context.go("/edit-profile");
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
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundImage: NetworkImage(
                            _viewModel.profileDetailsResponse?.data?.image.toString() ??
                              "https://cosmetrospace.sfo3.digitaloceanspaces.com/unknown.jpg",
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          _viewModel.profileDetailsResponse?.data?.name ??
                              "",
                        ),
                      ],
                    ),
                  ),
                ],
              SizedBox(
                width: 5.w,
              ),
              ButtonWithIconWidget(
                iconUrl: "assets/icons/gift.png",
                text: "Get \$50",
                textColor: kBlack,
                backgroundColor: kWhite,
                onPressed: () {
                  context.go("/pricing");
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget primaryStyleRes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Image.asset(
            "assets/icons/logo_small.png",
            height: 50.h,
            width: 50.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
              inactiveThumbColor: kBlue,
              inactiveTrackColor: kWhite,
              activeColor: kWhite,
              activeTrackColor: kBlue,
              value: AppConstants.isStylePrimary,
              onChanged: (value) {
                ref.read(styleProvider).toggleThemeMode();
                setState(() {});
              },
            ),
            IconButton(
              onPressed: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: kBlue,
                size: 30.sp,
              ),
            )
          ],
        )
      ],
    );
  }
}
