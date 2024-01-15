import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rte/flutter_rte.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TextEditorPage extends StatefulWidget {
  @override
  _TextEditorPageState createState() => _TextEditorPageState();
}

class _TextEditorPageState extends State<TextEditorPage> {
  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Editor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Card(
              child: HtmlEditor(
                controller: HtmlEditorController()
                  ..toolbarOptions.customButtonGroups = [
                    CustomButtonGroup(
                      index: 0, // place first
                      buttons: [
                        CustomToolbarButton(
                          icon: Icons.save_outlined,
                          action: () => null,
                          isSelected: false,
                        )
                      ],
                    )
                  ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Headline',
              style: GoogleFonts.urbanist(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            TextField(
              controller: _textEditingController1,
              decoration: const InputDecoration(
                labelText: 'Headline',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Description (optional)*',
              style: GoogleFonts.urbanist(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            TextField(
              maxLength: 1000,
              maxLines: 10,
              controller: _textEditingController2,
              decoration: const InputDecoration(
                hintText: "Product uses, attributes & price",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: kBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
