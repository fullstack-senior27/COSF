import 'package:cosmetropolis/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FooterView extends StatefulWidget {
  const FooterView({super.key});

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    List<String> hyperlinks = [
      "FIND PROFESSIONALS",
      "GET LISTED",
      "TEAM",
      "CAREERS",
      "TERMS FOR PROS",
      "TERMS FOR CLIENTS",
      "PRIVACY",
      "SITEMAP"
    ];
    return Container(
      height: 400,
      width: double.infinity,
      color: Color(0xFF333333),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        "ABOUT COSMETROPOLIS",
                        style: AppThemes.lightTheme.textTheme.bodySmall
                            ?.copyWith(color: kWhite, fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 1.8),
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                      ),
                    ]),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16 + 16),
                  Text("MEDIA"),
                  SizedBox(height: 8),
                  Text(
                    "StyleSeat Blog\nPress",
                    style: AppThemes.lightTheme.textTheme.bodySmall
                        ?.copyWith(color: kWhite, fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text("TALK TO US"),
                  SizedBox(height: 8),
                  Text(
                    "StyleSeat Help Center",
                    style: AppThemes.lightTheme.textTheme.bodySmall
                        ?.copyWith(color: kWhite, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: 16 + 16),
                ...List.generate(
                    hyperlinks.length,
                    (index) => Text(
                          hyperlinks[index],
                          style: AppThemes.lightTheme.textTheme.bodySmall
                              ?.copyWith(color: kWhite, fontSize: 16),
                        ))
              ])
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("© 2023 StyleSeat, Inc. All rights reserved."),
          )
        ],
      ),
    );
  }
}
