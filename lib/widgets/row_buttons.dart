import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_task/colors.dart';
import 'package:ui_task/responsive.dart';
import 'package:ui_task/widgets/buttons.dart';

class CustomButtonsRow extends StatelessWidget {
  CustomButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButtons(
          height: isTablet(context)
              ? isPortrait(context)
                    ? 0.07 * getHeight(context)
                    : 0.12 * getHeight(context)
              : 0.07 * getHeight(context),
          width: isTablet(context)
              ? 0.4 * getWidth(context)
              : isPortrait(context)
              ? 0.44 * getWidth(context)
              : 0.45 * getWidth(context),
          function: () {},
          text: "Book Consultation",
          color: AppColors().blutbtncolor,
          txtcolor: Colors.white,
        ),
        CustomButtons(
          height: isTablet(context)
              ? isPortrait(context)
                    ? 0.07 * getHeight(context)
                    : 0.12 * getHeight(context)
              : 0.07 * getHeight(context),
          width: isTablet(context)
              ? 0.4 * getWidth(context)
              : isPortrait(context)
              ? 0.42 * getWidth(context)
              : 0.4 * getWidth(context),
          function: () {},
          text: "View Services",
          color: AppColors().secondbtncolor,
          txtcolor: Colors.white,
        ),
      ],
    );
  }
}
