import 'package:cart_corner_app/core/models/product_model.dart';
import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:cart_corner_app/features/home/view/component/product_item.dart';
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
        itemCount: products.length,
        separatorBuilder: (context, i) {
          return SizedBox(
            width: 5.w,
          );
        },
        itemBuilder: (context , i){
          return  ProductItem(
            product: products[i],
          );
        },

      ),
    );
  }
}
