import 'package:flutter/material.dart';
import 'package:ui_task/colors.dart';
import 'package:ui_task/responsive.dart';

class SocialLinks extends StatelessWidget {
  final String? image1;
  final String? image2;
  final String? image3;
  const SocialLinks({super.key, this.image1, this.image2, this.image3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: AppColors().iconcolor,
          radius: isTablet(context)
              ? 35 * getResponsive(context)
              : isPortrait(context)
              ? 30 * getResponsive(context)
              : 60 * getResponsive(context),
          child: Image.asset(
            image1!,
            height: 0.08 * getHeight(context), // 🔼 Increased height
            width: isPortrait(context)
                ? 0.03 * getHeight(context)
                : 0.09 * getHeight(context), // 🔼 Added width
            fit: BoxFit.contain,
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColors().iconcolor,
          radius: isTablet(context)
              ? 35 * getResponsive(context)
              : isPortrait(context)
              ? 30 * getResponsive(context)
              : 60 * getResponsive(context),
          child: Image.asset(
            image2!,
            height: 0.08 * getHeight(context), // 🔼 Increased height
            width: isPortrait(context)
                ? 0.03 * getHeight(context)
                : 0.09 * getHeight(context), // 🔼 Added width
            fit: BoxFit.contain,
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColors().iconcolor,
          radius: isTablet(context)
              ? 35 * getResponsive(context)
              : isPortrait(context)
              ? 30 * getResponsive(context)
              : 60 * getResponsive(context),
          child: Image.asset(
            image3!,
            height: 0.08 * getHeight(context), // 🔼 Increased height
            width: isPortrait(context)
                ? 0.03 * getHeight(context)
                : 0.09 * getHeight(context), // 🔼 Added width
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
