import 'package:cart_corner_app/core/style/colors.dart';
import 'package:cart_corner_app/features/home/view/component/home_products_list.dart';
import 'package:cart_corner_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component/home_category_List.dart';
import 'component/home_search_bar.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              const HomeSearchBar(),
              SizedBox(
                height: 25.h,
              ),
              CustomText(
                  text: "Categories",
                  fontSize: 25.sp,
                  color: kTextColor,
                  fontWieght: FontWeight.bold),
              SizedBox(
                height: 25.h,
              ),
              HomeCategoryList(),
              SizedBox(
                height: 25.h,
              ),
              CustomText(
                  text: "Products",
                  fontSize: 25.sp,
                  color: kTextColor,
                  fontWieght: FontWeight.bold),
              SizedBox(
                height: 25.h,
              ),
              HomeProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
