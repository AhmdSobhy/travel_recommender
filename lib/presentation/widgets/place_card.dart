import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_recommender/presentation/widgets/rating_bar.dart';

class PlaceCard extends StatefulWidget {
  final String? id, name, city, cuisines, imageUrl;
  final double? rate;
  final int? numOfReviews;

  const PlaceCard({
    Key? key,
    required this.id,
    required this.name,
    required this.city,
    required this.rate,
    this.numOfReviews,
    required this.imageUrl,
    this.cuisines,
  }) : super(key: key);

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: const Color(0x00ffffff),
            height: 150,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 125,
                  child: CachedNetworkImage(
                    imageUrl: widget.imageUrl!,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 0),
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.transparent, width: 0.0),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/icons8-hotel-64.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name!,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        RatingBar(
                          rating: widget.rate!,
                          ratingCount: widget.numOfReviews!,
                        ),

                        const SizedBox(height: 6),
                        Text(
                          '\$\$\$ ◦ ${widget.cuisines!.replaceAll(',', ' ◦ ')}',
                          style: const TextStyle(fontSize: 16),
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(height: 6),

                        Text(widget.city!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        const Divider(
          height: 0,
          thickness: 0.5,
          indent: 11,
          endIndent: 11,
          color: Colors.black26,
        )
      ],
    );
  }
}
