import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWithIconWidget extends StatelessWidget {
  final String? iconUrl;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final double space;
  final double iconSize;
  final double fontSize;
  final double borderRadius;
  final double paddingHorizontal;
  final double paddingVertical;

  const ButtonWithIconWidget({
    Key? key,
    this.iconUrl,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
    this.space = 8,
    this.iconSize = 20,
    this.fontSize = 12,
    this.borderRadius = 20,
    this.paddingHorizontal = 12,
    this.paddingVertical = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Padding(
          padding: EdgeInsets.only(left: paddingHorizontal, right: paddingHorizontal, top: paddingVertical, bottom: paddingVertical),
          child: Wrap(
            spacing: space,
            children: [
              if (iconUrl != null) ImageIcon(
                AssetImage(iconUrl ?? ""),
                color: textColor,
                size: iconSize,
              ),// Adjust the space between icon and text as needed
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),      
    );
  }
}