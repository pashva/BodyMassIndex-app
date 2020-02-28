import 'package:flutter/material.dart';


class Reusablecard extends StatelessWidget {
  Reusablecard({ this.colour,this.cardchild});
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,

      margin: EdgeInsets.all(15.0),

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: colour),
    );
  }
}
