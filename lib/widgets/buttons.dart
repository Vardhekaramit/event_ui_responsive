import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_task/responsive.dart';

class CustomButtons extends StatelessWidget {
  final VoidCallback? function;
  final String? text;
  final Color? color;
  final Color? txtcolor;
  CustomButtons({super.key, this.function, this.text,this.color,this.txtcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color),
        
      ),
      onPressed: () {
        function;
      },
      child: Text(
        text.toString(),
        style: TextStyle(fontWeight: FontWeight.bold,
         color: txtcolor,
         fontSize: 20 * getResponsiveText(context)),
      ),
    );
  }
}
