import 'package:cosmetropolis/core/constants.dart';
import 'package:cosmetropolis/domain/style_provider.dart';
import 'package:cosmetropolis/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({super.key});

  @override
  ConsumerState<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  @override
  Widget build(BuildContext context) {
    switch (ref.watch(styleProvider).isPrimaryTheme) {
      case true:
        return stylePrimary(context);
      case false:
        return styleSecondary(context);
      default:
        return stylePrimary(context);
    }
  }

  Widget styleSecondary(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/dummy/dummy_banner_2.jpeg"))),
    );
  }

  Container stylePrimary(BuildContext context) {
    List<String> suggestions = [
      "Hair",
      "Spa",
      "Yoga",
      "Nail",
      "Barber",
      "Massage",
      "Personal Training",
      "Cycling",
      "More.."
    ];
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/dummy/dummy_banner_1.jpeg"))),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Book your next haircut",
                style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    color: kWhite, fontWeight: FontWeight.w700, fontSize: 35),
              ),
            ),
            SizedBox(height: AppSizes.p16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 350,
                            child: TextFormField(
                              decoration: style1FromTheme(
                                "Business Name or Location",
                                Icons.search,
                              ),
                            )),
                        Container(
                          height: 52,
                          width: 1,
                          color: kGrey,
                        ),
                        SizedBox(
                            width: 350,
                            child: TextFormField(
                              decoration: style1FromTheme(
                                "Search Services or Classes",
                                Icons.search,
                              ),
                            )),
                        Container(
                          height: 52,
                          width: 1,
                          color: kGrey,
                        ),
                        SizedBox(
                            width: 150,
                            child: TextFormField(
                              decoration: style1FromThemeSuffix(
                                "Activity",
                                Icons.expand_more,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Center(
                      child: Text(
                        "Search",
                        style:
                            AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                                color: kWhite,
                                // fontWeight: FontWeight.w700,
                                fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSizes.p16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Wrap(
                children: [
                  ...List.generate(
                      suggestions.length,
                      (index) => Container(
                            margin: EdgeInsets.only(right: AppSizes.p8),
                            padding: EdgeInsets.symmetric(
                                vertical: AppSizes.p4,
                                horizontal: AppSizes.p10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                border:
                                    Border.all(color: kWhite.withOpacity(0.8)),
                                color: Colors.white.withOpacity(0.1)),
                            child: Text(
                              suggestions[index],
                              style: AppThemes.lightTheme.textTheme.bodySmall
                                  ?.copyWith(
                                      color: kWhite,
                                      // fontWeight: FontWeight.w700,
                                      fontSize: 16),
                            ),
                          ))
                ],
              ),
            )
          ]),
    );
  }

  InputDecoration style1FromTheme(String title, IconData icon) {
    return InputDecoration(
        prefixIcon: Icon(icon),
        hintText: title,
        fillColor: kWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)));
  }

  InputDecoration style1FromThemeSuffix(String title, IconData icon) {
    return InputDecoration(
        suffixIcon: Icon(icon),
        hintText: title,
        fillColor: kWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kWhite)));
  }
}
