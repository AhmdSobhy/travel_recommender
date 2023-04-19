import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_recommender/presentation/controller/layout_cubit.dart';
import 'package:travel_recommender/presentation/controller/layout_state.dart';
import 'package:travel_recommender/presentation/screens/attractions_screen.dart';
import 'package:travel_recommender/presentation/screens/hotels_screen.dart';
import 'package:travel_recommender/presentation/screens/restaurants_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LayoutCubit>(context);
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (context,state){

      },
      builder: (context,state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Center(
            child:cubit.layoutScreens[cubit.bottomNavIndex]
          ),
          // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {  },
          //   backgroundColor: Colors.deepOrange,
          //   foregroundColor: Colors.white,
          //   child: const Icon(Icons.route),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.bottomNavIndex,
            selectedItemColor: Colors.deepOrangeAccent,
            unselectedItemColor: Colors.grey,
            onTap: (index)
            {
              cubit.changeBottomNavIndex(index: index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
              BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Hotels'),
              BottomNavigationBarItem(icon: Icon(Icons.route), label: 'Plan'),
              BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Restaurants'),
              BottomNavigationBarItem(icon: Icon(Icons.attractions), label: 'Attractions'),
            ],
          ),
        );
      },
    );
  }
}
