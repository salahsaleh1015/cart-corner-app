import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cart/view/cart_view.dart';
import '../../../home/view/home_mobile_view.dart';
import '../../../profile/view/profile_view.dart';
part 'bottom_nav_state.dart';


class BottomNavCubit extends Cubit<BottomNavStates> {
  BottomNavCubit() : super(BottomNavInitial());
  static BottomNavCubit get(context)=>BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens =  [
   const HomeMobileView(),
    const CartView(),
    const ProfileView(),

  ];



  void changeIndex(int index){
    currentIndex = index;
    emit(BottomNavChangeState());
  }



}
