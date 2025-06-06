import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_task/responsive.dart';

class CustomButtons extends StatelessWidget {
  final VoidCallback? function;
  final String? text;
  final Color? color;
  final Color? txtcolor;
  final double? width;
  final double? height; 
  CustomButtons({
    super.key,
    this.function,
    this.text,
    this.color,
    this.txtcolor, this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 0.07 * getHeight(context),
      width: width ?? (isTablet(context) == true
          ? 0.4 * getWidth(context)
          : 0.42 * getWidth(context)),
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color)),
        onPressed: () {
          function;
        },
        child: Text(
          text.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: txtcolor,
            fontSize: isTablet(context)
                ? 18 * getResponsive(context)
                : 18 * getResponsiveText(context),
          ),
        ),
      ),
    );
  }
}
