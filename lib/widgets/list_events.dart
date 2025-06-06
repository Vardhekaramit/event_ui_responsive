import 'package:flutter/material.dart';
import 'package:ui_task/responsive.dart';

class ListOfEvents extends StatelessWidget {
  final String? image;
  final String? namew;
  final String? namew1;
  const ListOfEvents({super.key, this.image, this.namew, this.namew1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0 * getResponsive(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image!,
            height: isTablet(context)
                ? 0.2 * getHeight(context)
                : isPortrait(context)? 0.2 * getHeight(context) : 0.3 *getHeight(context),
            width: isTablet(context)
                ?isPortrait(context)?0.27 * getHeight(context): 0.5 * getHeight(context)
                : isPortrait(context)? 0.2 * getHeight(context) : 0.6 *getHeight(context),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 0.01 * getHeight(context)),
          Text(
            namew!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:isTablet(context)? 32 *getResponsiveText(context): 20 * getResponsiveText(context),
              color: Colors.white,
            ),
          ),
          Text(
            namew1!,
            style: TextStyle(
              color: Colors.grey,
              fontSize:isTablet(context) ? 25 * getResponsiveText(context) : 18 * getResponsiveText(context),
            ),
          ),
        ],
      ),
    );
  }
}
