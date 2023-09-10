import 'package:cart_corner_app/core/models/product_model.dart';
import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:cart_corner_app/features/home/view/component/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/style/colors.dart';
import '../../../../widgets/custom_text.dart';
class HomeProductList extends StatelessWidget {
   HomeProductList({super.key});
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
