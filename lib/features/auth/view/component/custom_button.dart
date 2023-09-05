import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.width, required this.height, required this.buttonColor, required this.textColor, required this.onTap, required this.fontSize,  });
   final String text;
   final double width , height , fontSize;
   final Color buttonColor, textColor;
   final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: buttonColor,
          ),
          child: Center(
            child: CustomText(text: text.toUpperCase(), fontSize: fontSize, color: textColor, fontWieght: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
