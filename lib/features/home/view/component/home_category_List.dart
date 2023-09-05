import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/style/colors.dart';
import '../../../../widgets/custom_text.dart';
class HomeCategoryList extends StatelessWidget {
   HomeCategoryList({super.key});
  List<String> categoriesImages = [
    "assets/images/Icon_Mens Shoe.png",
    "assets/images/Icon_Gaming.png",
    "assets/images/Icon_Gadgets.png",
    "assets/images/Icon_Devices.png",
    "assets/images/Group 217.png",
  ];
  List<String> categoriesTitles = [
    'men',
    'gaming',
    'gadgets',
    'devices',
    'women',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100.h,
        width: double.infinity,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, i) {
            return SizedBox(
              width: 5.w,
            );
          },
          itemBuilder: (context, i) {
            return Column(
              children: [
                CircleAvatar(
                  backgroundColor: kGrayLightDegree,
                  radius: 30.r,
                  child: Image.asset(categoriesImages[i]),
                ),
                SizedBox(height: 5.h,),
                CustomText(text: categoriesTitles[i], fontSize: 15.sp, color: kTextColor, fontWieght: FontWeight.normal)
              ],
            );
          },
          itemCount: categoriesImages.length,
        ),
      ),
    );
  }
}
