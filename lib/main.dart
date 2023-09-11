import 'package:cart_corner_app/core/router/app_router.dart';
import 'package:cart_corner_app/features/auth/view/login_screen.dart';
import 'package:cart_corner_app/features/bottom_nav/view/bottom_nav_view.dart';
import 'package:cart_corner_app/features/bottom_nav/view/controller/bottom_nav_cubit.dart';
import 'package:cart_corner_app/features/cart/cart_view_model/cart_cubit.dart';
import 'package:cart_corner_app/features/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>BottomNavCubit(),),
            BlocProvider(create:(context)=> CartCubit()..getAllProducts()..getTotalPrice()),
          ],

          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const LoginScreen(),
            onGenerateRoute: AppRouter().onGenerateRoute,
          ),
        );
      },
    );
  }
}
