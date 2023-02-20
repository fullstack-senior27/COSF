import 'package:cosmetropolis/core/core.dart';
import 'package:cosmetropolis/utils/app_sizes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:cosmetropolis/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    switch (AppConstants.isStylePrimary) {
      case true:
        return primaryStyle();
      case false:
        return secondaryStyle();
      default:
        return primaryStyle();
    }
  }

  Row primaryStyle() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Image.asset(
          "assets/images/logo_small.png",
          height: 50,
          width: 50,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Switch(
              value: AppConstants.isStylePrimary,
              onChanged: (value) {
                AppConstants.isStylePrimary = value;
                setState(() {});
              }),
          SizedBox(
            width: AppSizes.p20,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(2))),
              onPressed: () {},
              child: Text(
                "List Your Business",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
              )),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Daily Deals",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Professionals",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Gallery",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Login",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
        ],
      )
    ]);
  }

  Row secondaryStyle() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Image.asset(
          "assets/images/logo_small.png",
          height: 50,
          width: 50,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Switch(
              value: AppConstants.isStylePrimary,
              onChanged: (value) {
                AppConstants.isStylePrimary = value;
                setState(() {});
              }),
          SizedBox(
            width: AppSizes.p20,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Set Up my Buisness",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              )),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Sign Up",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Log In",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
          Text(
            "Help",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                color: kBlack, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFFFBEAE5),
            ),
            child: Row(children: [
              Image.asset(
                "assets/icons/gift_icon.png",
                height: 12,
                width: 12,
              ),
              SizedBox(width: 2),
              Text(
                "Get \$50",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kBlack, fontWeight: FontWeight.w900, fontSize: 16),
              ),
            ]),
          ),
          SizedBox(
            width: AppSizes.p20,
          ),
        ],
      )
    ]);
  }
}
