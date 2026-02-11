import 'package:flutter/cupertino.dart';

class Customtext extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  const Customtext({super.key, required this.text, required this.color, required this.fontWeight, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,
        fontSize: fontSize,fontWeight: fontWeight),);
  }
}
