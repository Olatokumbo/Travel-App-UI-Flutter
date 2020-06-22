import 'package:flutter/material.dart';
import "package:travelapp/constants/constants.dart";
class LocationCard extends StatelessWidget {
  final String image;
  final String country;
  final String city;
  LocationCard({this.image, this.country, this.city});
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            fit: BoxFit.fitHeight,
            image: AssetImage(image),
          ),
        ),
        Positioned(
          bottom: 20.0,
          child: Container(
            padding: EdgeInsets.all(3),
//            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xA62e2e2e),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(country, style: kcountryName),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(city, style: kcityName)
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
