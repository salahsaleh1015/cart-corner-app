import 'package:cart_corner_app/core/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/custom_text.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({super.key, required this.text, required this.image, required this.onTap});
final String text, image;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: isLandscape(context)?MediaQuery.of(context).size.height*0.22 :MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 1.5.w)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 25.h,
                  width: 25.w,
                  child: Image.asset(image)),

              CustomText(text:text, fontSize: 15.sp, color: Colors.grey, fontWieght:FontWeight.normal)


            ],
          ),
        ),
      ),
    );
  }
}
