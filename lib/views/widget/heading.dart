
import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  Color color;
  String headline;
  Heading({
    Key? key,
    required this.color,
    required this.headline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: TextStyle(
        fontSize: 32,
        fontFamily: 'Roboto',
        color: color,
      ),
    );
  }
}
