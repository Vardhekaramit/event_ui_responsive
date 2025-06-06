import 'package:flutter/material.dart';
import 'package:ui_task/colors.dart';
import 'package:ui_task/responsive.dart';

class GridviewWidget extends StatelessWidget {
  final IconData icon;
  final String name;
  const GridviewWidget({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 0.01 * getHeight(context),
      // width: 0.02 * getWidth(context),
      decoration: BoxDecoration(
        color: AppColors().containercolor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(
          Radius.circular(22 * getResponsive(context)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8 * getResponsive(context),
              right: 9 * getResponsive(context),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: isPortrait(context)
                  ? 30 * getResponsive(context)
                  : 100 * getResponsive(context),
            ),
          ),
          // SizedBox(width: 0.05 * getWidth(context)),
          Flexible(
            child: Text(
              // maxLines: 3,
              overflow: TextOverflow.visible,
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: isTablet(context)
                    ? 30 * getResponsiveText(context)
                    : isPortrait(context)
                    ? 20 * getResponsive(context)
                    : 30 * getResponsiveText(context),
              ),
              // textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
