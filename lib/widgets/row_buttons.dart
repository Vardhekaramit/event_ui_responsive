import 'package:flutter/material.dart';
import 'package:ui_task/colors.dart';
import 'package:ui_task/responsive.dart';
import 'package:ui_task/widgets/buttons.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButtons(
          color: AppColors().blutbtncolor,
          text: "Book Consultation",
          txtcolor: Colors.white,
          function: () {},
        ),
        SizedBox(width: 0.03 * getWidth(context)),
        CustomButtons(
          color: AppColors().secondbtncolor,
          text: "View Services",
          txtcolor: Colors.white,
          function: () {},
        ),
      ],
    );
  }
}
