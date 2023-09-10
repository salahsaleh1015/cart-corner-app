import 'package:cart_corner_app/core/models/product_model.dart';
import 'package:cart_corner_app/features/home/view/details_mobile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/router/screens_names.dart';
import '../../../../core/style/colors.dart';
import '../../../../widgets/custom_text.dart';

class ProductItem extends StatelessWidget {
final  Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsMobileView(product: product)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(product.productImage),
          CustomText(text: product.productName,  fontSize: 20.sp, color: kTextColor, fontWieght: FontWeight.normal),
          CustomText(text: product.productPrice, fontSize: 15.sp, color: kPrimaryColor, fontWieght: FontWeight.normal)
        ],
      ),
    );
  }
}
