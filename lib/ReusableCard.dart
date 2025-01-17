import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onpress;

  ReusableCard(this.colour, this.cardChild, this.onpress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpress();
        print("pressed");
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
