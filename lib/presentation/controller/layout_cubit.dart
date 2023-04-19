
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_recommender/presentation/screens/attractions_screen.dart';
import 'package:travel_recommender/presentation/screens/hotels_screen.dart';

import '../screens/home_screen.dart';
import '../screens/layout_screen.dart';
import '../screens/plan_screen.dart';
import '../screens/restaurants_screen.dart';
import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());
  int bottomNavIndex = 0 ;

  List<Widget> layoutScreens = [HomeScreen() , HotelsScreen(), PlanScreen(), RestaurantsScreen(), AttractionsScreen()];

  void changeBottomNavIndex({required int index})
  {
    bottomNavIndex = index;
    // Emit state
    emit(ChangeBottomNavIndexState());
  }

}
