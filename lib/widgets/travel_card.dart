import 'package:flutter/material.dart';
import 'package:flutter_travel_app/constans.dart';
import 'package:flutter_travel_app/styles.dart';

const double BORDER_RADIUS = 20;

class TravelCard extends StatelessWidget {
  final Place place;

  TravelCard(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          BORDER_RADIUS,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: 10,
          ),
        ],
      ),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(BORDER_RADIUS),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  place.mainPlaceImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(place.author.avatarUrl),
                        radius: 20,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    Text(
                      place.placeName,
                      style: kPlaceDescStyle,
                    ),
                    Text(
                      place.description,
                      style: kPlaceNameStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//class TravelCard extends StatelessWidget {
//  final Place place;
//
//  TravelCard(this.place);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.all(16),
//      decoration: BoxDecoration(
//        color: Colors.white,
//        borderRadius: BorderRadius.circular(
//          BORDER_RADIUS,
//        ),
//        boxShadow: [
//          BoxShadow(
//            color: Colors.grey.shade200,
//            blurRadius: 10,
//            spreadRadius: 10,
//          ),
//        ],
//      ),
//      width: 300,
//      height: 500,
//      child: Column(
//        children: <Widget>[
//          ClipRRect(
//            borderRadius: BorderRadius.circular(BORDER_RADIUS),
//            child: Image.asset(
//              place.mainPlaceImageUrl,
//              fit: BoxFit.cover,
//              width: 300,
//              height: 300,
//            ),
//          ),
//          Expanded(
//            child: Padding(
//              padding: const EdgeInsets.all(24.0),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Align(
//                    child: CircleAvatar(
//                      backgroundImage: AssetImage(place.author.avatarUrl),
//                      radius: 20,
//                    ),
//                    alignment: Alignment.topLeft,
//                  ),
//                  Text(
//                    place.placeName,
//                    style: kPlaceDescStyle,
//                  ),
//                  Text(
//                    place.description,
//                    style: kPlaceNameStyle,
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
