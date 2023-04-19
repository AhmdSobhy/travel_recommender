
import 'package:travel_recommender/domain/entities/hotels.dart';

class HotelModel extends Hotels {
  HotelModel(
      {required super.id,
        required super.name,
        required super.city,
        required super.amenities,
        required super.location,
        required super.rate,
        required super.numOfReviews,
        required super.prices,
        required super.description,
        required super.imageUrl,   });

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(

      id: json['id'],
      name: json['name'],
      city: json['city'],
      amenities: json['amenities'],
      location: json['location'],
      rate: json['rate'].toDouble(),
      imageUrl: json['imageUrl'],
      prices: json['prices'],
    description: json['description'],
      numOfReviews: json['numOfReviews'], );
}