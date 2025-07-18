import 'package:flutter/material.dart';

double getHeight(context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

double getResponsive(context) {
  return MediaQuery.of(context).size.height * 0.001;
}

double getResponsiveText(context) {
  // print("PRINTING OS");
  // print(Platform.);
  // if (Platform.operatingSystem.toString().toLowerCase()=="android") {
  return 0.8;
  // } else {
  //   return 0.9;
  // }
}

bool isTablet(BuildContext context) {
  return MediaQuery.of(context).size.shortestSide >= 600;
}

bool isPortrait(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}
