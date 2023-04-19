import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_recommender/presentation/controller/layout_cubit.dart';
import 'package:travel_recommender/presentation/screens/layout_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LayoutCubit()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: const LayoutScreen(),
          ),
        );
      }
    );
  }
}
