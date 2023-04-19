import 'package:flutter/material.dart';

import '../widgets/place_card.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Card(
                margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Text('Recommended Hotels',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )),
            PlaceCard(
                id: '1',
                name: 'Hilton',
                city: 'Cairo',
                rate: 4.5,
                numOfReviews: 35,
                cuisines: 'Egyptian,Middle Eastern',
                imageUrl:
                    'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
            PlaceCard(
                id: '1',
                name: 'Hilton',
                city: 'Cairo',
                rate: 4.5,
                numOfReviews: 35,
                cuisines: 'Mediterranean,Egyptian,Middle Eastern',
                imageUrl:
                    'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
            PlaceCard(
                id: '1',
                name: 'Hilton',
                city: 'Cairo',
                rate: 4.5,
                numOfReviews: 35,
                cuisines: 'Mediterranean,Middle Eastern',
                imageUrl:
                    'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
            PlaceCard(
                id: '1',
                name: 'Hilton',
                city: 'Cairo',
                rate: 3.5,
                numOfReviews: 35,
                cuisines: 'Mediterranean,Egyptian,Middle Eastern',
                imageUrl:
                    'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
            PlaceCard(
                id: '1',
                name: 'Hilton',
                city: 'Cairo',
                rate: 4,
                numOfReviews: 35,
                cuisines: 'Middle Eastern',
                imageUrl:
                    'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        icon: Icon(Icons.panorama_photosphere),
        label: const Text(
          'Find a Hotel',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
