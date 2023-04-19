class Hotels {
  final int id;
  final String name;
  final String city;
  final String amenities;
  final String location;
  final double rate;
  final int prices;
  final int numOfReviews;
  final String description;
  final String imageUrl;

  Hotels(
      {required this.id,
      required this.name,
      required this.city,
      required this.amenities,
      required this.location,
      required this.rate,
      required this.prices,
      required this.description,
      required this.numOfReviews,
      required this.imageUrl});
}
