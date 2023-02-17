import 'package:cosmetropolis/utils/app_sizes.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final Function()? ontap;
  final Color color;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final double borderRadius;
  final TextStyle? style;
  final bool showLoader;
  final Color borderColor;
  const CustomButton({
    super.key,
    this.buttonText = "Button",
    required this.ontap,
    this.height = 47,
    this.margin = const EdgeInsets.all(AppSizes.p16),
    this.borderRadius = 23.5,
    this.style,
    this.color = primaryColor,
    this.width = double.infinity,
    this.showLoader = false,
    this.borderColor = Colors.transparent,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.ontap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          color: widget.color,
        ),
        margin: widget.margin,
        height: widget.height,
        width: widget.width,
        child: widget.showLoader
            ? Center(
                child: const CircularProgressIndicator(
                color: kWhite,
              ))
            : Center(
                child: Text(
                  widget.buttonText,
                  style: widget.style,
                ),
              ),
      ),
    );
  }
}
