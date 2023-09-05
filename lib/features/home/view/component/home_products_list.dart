import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/style/colors.dart';
import '../../../../widgets/custom_text.dart';
class HomeProductList extends StatelessWidget {
   HomeProductList({super.key});
  List<String> productsImages = [
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product3.png",
    "assets/images/product4.png"
  ];
  List<String> productNames = [
    "Artificial receiver","playstation 5"," Xiaomi 12 Pro"," Watch Classic Bristol"
  ];

  List<String> productPrices = ["\$200","\$484","\$494","\$123"];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 350.h,
      width:double.infinity,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: productsImages.length,
        separatorBuilder: (context, i) {
          return SizedBox(
            width: 5.w,
          );
        },
        itemBuilder: (context , i){
          return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(productsImages[i]),
              CustomText(text: productNames[i],  fontSize: 20.sp, color: kTextColor, fontWieght: FontWeight.normal),
              CustomText(text: productPrices[i], fontSize: 15.sp, color: kPrimaryColor, fontWieght: FontWeight.normal)
            ],
          );
        },

      ),
    );
  }
}
