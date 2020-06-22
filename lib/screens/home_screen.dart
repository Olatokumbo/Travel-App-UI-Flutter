import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/lists/destination_list.dart';
import "package:travelapp/widgets/searchbar.dart";
import "package:travelapp/constants/constants.dart";
import "package:travelapp/widgets/category_button.dart";
import "package:travelapp/widgets/card_location.dart";
import 'package:travelapp/lists/activty_list.dart';
import 'package:travelapp/widgets/activity_card.dart';
enum Category { all, newer, mostViewed, recommendation }

// ignore: non_constant_identifier_names
DestinationList DestinationInfo = DestinationList();
ActivityList ActivityInfo = ActivityList();
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Category cat = Category.all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: Color(0x2696BFFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Let's enjoy", style: kHeader),
                      Text("your vacation !!", style: kHeader),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                SearchBar(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
//                  color: Colors.grey[200],
                  ),
//                padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CategoryButton(
                          title: "All",
                          onPress: () {
                            setState(() {
                              cat = Category.all;
                            });
                          },
                          colour: cat == Category.all
                              ? kActiveCategoryColor
                              : kInactiveCategoryColor,
                        ),
                      ),
                      Expanded(
                        child: CategoryButton(
                          title: "New",
                          onPress: () {
                            setState(() {
                              cat = Category.newer;
                            });
                          },
                          colour: cat == Category.newer
                              ? kActiveCategoryColor
                              : kInactiveCategoryColor,
                        ),
                      ),
                      Expanded(
                        child: CategoryButton(
                          title: "Most Viewed",
                          onPress: () {
                            setState(() {
                              cat = Category.mostViewed;
                            });
                          },
                          colour: cat == Category.mostViewed
                              ? kActiveCategoryColor
                              : kInactiveCategoryColor,
                        ),
                      ),
                      Expanded(
                        child: CategoryButton(
                          title: "Recommended",
                          onPress: () {
                            setState(() {
                              cat = Category.recommendation;
                            });
                          },
                          colour: cat == Category.recommendation
                              ? kActiveCategoryColor
                              : kInactiveCategoryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
//                color: Colors.blue,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DestinationInfo.destinations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: LocationCard(
                          image: DestinationInfo.destinations[index].imageUrl,
                          country: DestinationInfo.destinations[index].country,
                          city: DestinationInfo.destinations[index].city,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Popular Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 1.5),
                ),
                Text("See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 1.0,
                        color: Colors.blue))
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ActivityCard(title: ActivityInfo.activities[0].title, image: ActivityInfo.activities[0].image),
                  ),
                  Expanded(
                    child: ActivityCard(title: ActivityInfo.activities[1].title, image: ActivityInfo.activities[1].image),
                  ),
                  Expanded(
                    child: ActivityCard(title: ActivityInfo.activities[2].title, image: ActivityInfo.activities[2].image),
                  ),
                  Expanded(
                    child: ActivityCard(title: ActivityInfo.activities[3].title, image: ActivityInfo.activities[3].image),
                  ),
                ],
              ),
            ),
          )
          // TODO: Add your category list here
        ]),
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        currentIndex: 0,
//        items: [
//          BottomNavigationBarItem(
//            icon: Icon(
//              Icons.menu,
//              size: 30.0,
//            ),
//            title: SizedBox.shrink(),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//              Icons.home,
//              size: 30.0,
//            ),
//            title: SizedBox.shrink(),
//          ),
//          BottomNavigationBarItem(
//            icon: CircleAvatar(
//              radius: 15.0,
//              backgroundImage: AssetImage("images/profile.png"),
//            ),
//            title: SizedBox.shrink(),
//          )
//        ],
//      ),
    );
  }
}

