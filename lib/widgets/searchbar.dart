import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Form(
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 9,
                child: TextField(
//                  autofocus: true,
                  enableSuggestions: false,
                  decoration: InputDecoration.collapsed(
                    hintText: "Search for your destination",
                    border: InputBorder.none,
                  ),
                  maxLines: 1,
                )),
            Expanded(
              flex: 1,
              child: Icon(Icons.search, color: Colors.blue[700]),
            ),
          ],
        ),
      ),
    );
  }
}