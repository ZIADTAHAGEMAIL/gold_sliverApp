import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cutombutton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final double fontSize;
  final FontWeight fontWeight;
  final Color buttonColor;

  const Cutombutton({
    super.key,
    required this.text,
    required this.ontap,
    required this.fontSize,
    required this.fontWeight, required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,width: MediaQuery.of(context).size.width/2,
      child: ElevatedButton(

        onPressed: ontap,
        style: ButtonStyle(

          alignment: AlignmentGeometry.center,
          backgroundColor: WidgetStatePropertyAll(buttonColor),
          elevation: WidgetStatePropertyAll(5),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.black,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
