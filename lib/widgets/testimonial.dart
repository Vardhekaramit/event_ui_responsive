import 'package:flutter/material.dart';
import 'package:ui_task/colors.dart';
import 'package:ui_task/responsive.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: isTablet(context)
                  ? 60 * getResponsive(context)
                  : 50 * getResponsive(context),
              backgroundImage: AssetImage("assets/images/women.png"),
            ),
            SizedBox(width: 0.02 * getWidth(context)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sophia Carter",
                  style: TextStyle(
                    fontSize: isTablet(context)
                        ? 40 * getResponsiveText(context)
                        : 20 * getResponsiveText(context),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Text(
                    // textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    "Event Strategist Specializing in \nluxury weddings and \ncorporate events",
                    style: TextStyle(
                      color: AppColors().textcolor,
                      fontSize: isTablet(context)
                          ? 35 * getResponsiveText(context)
                          : 20 * getResponsiveText(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 0.02 * getHeight(context)),
        Row(
          children: [
            Icon(
              Icons.star,
              color: AppColors().starcolor,
              size: isTablet(context)
                  ? 40 * getResponsive(context)
                  : 30 * getResponsive(context),
            ),
            Icon(
              Icons.star,
              color: AppColors().starcolor,
              size: isTablet(context)
                  ? 40 * getResponsive(context)
                  : 30 * getResponsive(context),
            ),
            Icon(
              Icons.star,
              color: AppColors().starcolor,
              size: isTablet(context)
                  ? 40 * getResponsive(context)
                  : 30 * getResponsive(context),
            ),
            Icon(
              Icons.star,
              color: AppColors().starcolor,
              size: isTablet(context)
                  ? 40 * getResponsive(context)
                  : 30 * getResponsive(context),
            ),
            Icon(
              Icons.star_half,
              color: AppColors().starcolor,
              size: isTablet(context)
                  ? 40 * getResponsive(context)
                  : 30 * getResponsive(context),
            ),
          ],
        ),
        SizedBox(height: 0.02 * getHeight(context)),
        Text(
          "Sophia Carter is a seasoned event strategist known for her meticulous planning and creative flair. With over a decade of experience, she specializes in crafting unforgettable luxury weddings and high-profile corporate events. Her signature style blends elegance with innovation, ensuring each event is a unique reflection of her clients' visions",

          style: TextStyle(
            color: Colors.white,
            fontSize: isTablet(context)
                ? 40 * getResponsiveText(context)
                : 23 * getResponsiveText(context),
          ),
        ),
        SizedBox(height: 0.02 * getHeight(context)),
        Row(
          children: [
            Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.blue,
              size:isTablet(context) ?50 *getResponsive(context) : 40 * getResponsive(context),
            ),
            SizedBox(width: 8 * getResponsive(context)),
            Text(
              "1",
              style: TextStyle(
                fontSize: isTablet(context)
                    ? 30 * getResponsiveText(context)
                    : 25 * getResponsiveText(context),
                color: Colors.grey[200],
              ),
            ),
            SizedBox(width: 0.08 * getWidth(context)),
            Icon(
              Icons.thumb_down_alt_outlined,
              color: Colors.blue,
              size:isTablet(context) ?50 *getResponsive(context) : 40 * getResponsive(context),
            ),
            SizedBox(width: 8 * getResponsive(context)),
            Text(
              "1",
              style: TextStyle(fontSize: isTablet(context) ? 30 * getResponsiveText(context)
                    : 25 * getResponsiveText(context),color: Colors.grey[200]),
            ),
          ],
        ),
      ],
    );
  }
}
