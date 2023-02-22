import 'package:cosmetropolis/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MeetOurPro extends StatefulWidget {
  const MeetOurPro({super.key});

  @override
  State<MeetOurPro> createState() => _MeetOurProState();
}

class _MeetOurProState extends State<MeetOurPro> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            "Find Top pros by service",
            style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
              color: kBlack,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          if (width <= 629)
            videoCard(width)
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(getLength(width), (index) => videoCard(width)),
              ],
            ),
        ],
      ),
    );
  }

  Column videoCard(double width) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 250,
            width: width <= 629
                ? MediaQuery.of(context).size.width / 1.2
                : MediaQuery.of(context).size.width / getWidth(width),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  kBlack.withOpacity(.4),
                  BlendMode.colorBurn,
                ),
                image: const AssetImage(
                  "assets/dummy/dummy_talk.png",
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: kBlack.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: kWhite,
                    size: 30,
                  ),
                ),
                Text(
                  "Play Now",
                  style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
                    fontSize: 14,
                    color: kWhite,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Manuel, Makeup Artist",
          style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
            fontSize: 12,
            color: kBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "Between glam looks and good vibes, it’s no surprise why ",
          style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
            fontSize: 10,
            color: kBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Manuel’s clients keep coming back.",
          style: AppThemes.lightTheme.textTheme.bodySmall?.copyWith(
            fontSize: 10,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  int getLength(double width) {
    if (width <= 927) {
      return 2;
    } else if (width <= 628) {
      return 1;
    } else {
      return 3;
    }
  }

  double getWidth(double width) {
    if (width <= 927) {
      return 2.2;
    } else {
      return 3.3;
    }
  }
}
