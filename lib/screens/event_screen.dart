import 'package:flutter/material.dart';
import 'package:ui_task/colors.dart';
import 'package:ui_task/responsive.dart';
import 'package:ui_task/widgets/buttons.dart';
import 'package:ui_task/widgets/gridview_widget.dart';
import 'package:ui_task/widgets/list_events.dart';
import 'package:ui_task/widgets/row_buttons.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<Map> map = [
    {"icon": Icons.business_center, "name": "Corporate Events"},
    {"icon": Icons.celebration, "name": "Weddings"},
    {"icon": Icons.music_note_outlined, "name": "Festivals"},
  ];

  List<Map> map2 = [
    {
      "image": "assets/images/women2.png",
      "name2": "Elgant Wedding",
      "name3": "A romantic celebration",
    },
    {
      "image": "assets/images/women2.png",
      "name2": "Corporate Gala",
      "name3": "A Professional Gathering",
    },
    {
      "image": "assets/images/women2.png",
      "name2": "Elgant Wedding",
      "name3": "A romantic celebration",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().primarycolor,
      appBar: AppBar(
        backgroundColor: AppColors().primarycolor,
        title: const Text('Event Screen'),
        leading: BackButton(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5 * getResponsive(context)),
            child: Image.asset(
              "assets/images/Depth 6, Frame 0.png",
              height: 5 * getHeight(context),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20 * getResponsive(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 60 * getResponsive(context),
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
                          fontSize: 30 * getResponsiveText(context),
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
                            fontSize: 20 * getResponsiveText(context),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 0.02 * getHeight(context)),
              Text(
                "Sophia Carter is a seasoned event strategist known for her meticulous planning and creative flair. With over a decade of experience, she specializes in crafting unforgettable luxury weddings and high-profile corporate events. Her signature style blends elegance with innovation, ensuring each event is a unique reflection of her clients' visions",

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23 * getResponsiveText(context),
                ),
              ),
              SizedBox(height: 0.03 * getHeight(context)),
              RowButtons(),
              SizedBox(height: 0.02 * getHeight(context)),
              Text(
                "Services",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28 * getResponsiveText(context),
                ),
              ),
              SizedBox(height: 0.02 * getHeight(context)),
              Expanded(
                flex: 0,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 13 * getResponsive(context),
                    mainAxisSpacing: 10 * getResponsive(context),
                    mainAxisExtent: 100 * getResponsive(context),
                  ),
                  itemCount: map.length,
                  itemBuilder: (context, index) {
                    return GridviewWidget(
                      icon: map[index]["icon"],
                      name: map[index]["name"],
                    );
                  },
                ),
              ),
              SizedBox(height: 0.01 * getHeight(context)),
              Text(
                "Featured Events",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28 * getResponsiveText(context),
                ),
              ),
              SizedBox(
                height: 0.5 * getHeight(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: map2.length,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 12 * getResponsive(context),
                      ),
                      child: ListOfEvents(
                        image: map2[index]["image"],
                        namew: map2[index]["name2"],
                        namew1: map2[index]["name3"],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
