import 'package:flutter/material.dart';
import 'package:ui_task/responsive.dart';

class ListOfEvents extends StatelessWidget {
    final String? image;
    final String? namew;
    final String? namew1;
    const ListOfEvents({super.key,this.image, this.namew, this.namew1});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 0.1 * getHeight(context),
          child: Image.asset(image!,),
        ),
        SizedBox(height:  0.01 * getHeight(context)),
        Text(namew!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 * getResponsive(context),color: Colors.white),),
        Text(namew1!,style: TextStyle(color: Colors.grey,fontSize: 14 * getResponsive(context)),),
      ],
    );
  }
}