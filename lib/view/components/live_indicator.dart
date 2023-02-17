import 'package:cosmetropolis/utils/app_sizes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';

class LiveIndicator extends StatelessWidget {
  const LiveIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: AppSizes.p8, left: AppSizes.p8),
          padding: const EdgeInsets.all(AppSizes.p4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: kBlack.withOpacity(0.5)),
          child: Row(children: [
            const SizedBox(width: AppSizes.p8),
            const CircleAvatar(
              radius: 5,
              backgroundColor: redColor,
            ),
            const SizedBox(width: AppSizes.p8),
            Text(
              "Live",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: kWhite, fontSize: 12),
            ),
            const SizedBox(width: AppSizes.p8),
          ]),
        ),
      ],
    );
  }
}
