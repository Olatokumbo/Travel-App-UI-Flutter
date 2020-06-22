import 'package:flutter/material.dart';
class ActivityCard extends StatelessWidget {
  final String image;
  final String title;
  ActivityCard({@required this.image, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          width: 70.0,
          height: 70.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.fitHeight,
              image: AssetImage(image),
            ),
          ),
        ),
        Text(title),
      ],
    );
  }
}