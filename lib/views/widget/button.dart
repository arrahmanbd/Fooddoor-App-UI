import 'package:flutter/material.dart';
import 'package:fooddoor/constant/default.dart';

class Button extends StatelessWidget {
  String buttonText;
  Color bgColor;
  double bwidth;
GestureTapCallback onPressed;
  Button({
    Key? key,
    required this.buttonText,
    required this.bgColor,
    required this.onPressed,
    required this.bwidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: bgColor,
      ),
      width: bwidth,
      child: TextButton(
          onPressed:onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Roboto',
              color: twhite,
            ),
          )),
    );
  }
}
