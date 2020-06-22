import "package:flutter/material.dart";
class CategoryButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final Color colour;
  CategoryButton({@required this.title, this.onPress, this.colour});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 10,
        child: Center(child: Text(title)),
//        color: Colors.blue,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: colour
        ),
      ),
    );
  }
}