class Restaurants {
  final int id;
  final String name;
  final String phone;
  final String city;
  final String cuisines;
  final String location;
  final double latitude;
  final double longitude;
  final double rate;
  final int numOfReviews;
  final String imageUrl;

  Restaurants(this.phone,
      {required this.id,
      required this.name,
      required this.city,
      required this.cuisines,
      required this.location,
      required this.latitude,
      required this.longitude,
      required this.rate,
      required this.numOfReviews,
      required this.imageUrl});
}
