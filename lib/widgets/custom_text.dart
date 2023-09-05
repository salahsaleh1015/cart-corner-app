import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWieght;

  const CustomText(
      {required this.text,
      required this.fontSize,
      required this.color,
      required this.fontWieght});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(

        fontSize: fontSize,
        color: color,
        fontWeight: fontWieght,
      ),
    );
  }
}
