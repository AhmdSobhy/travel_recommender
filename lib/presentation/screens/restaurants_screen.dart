import 'package:flutter/material.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Restaurants')),
      floatingActionButtonLocation:FloatingActionButtonLocation.endFloat ,
      floatingActionButton: FloatingActionButton.extended(
      onPressed: () {  },
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      label: const Text('Let\'s Eat', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
    ));
  }
}
