import 'package:flutter/material.dart';
import 'package:fooddoor/constant/default.dart';

class Titlebar extends StatelessWidget {
  String catname;
  Titlebar({
    Key? key,
    required this.catname,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            catname,
            style: TextStyle(
                fontSize: 18, color: dark, fontWeight: FontWeight.w700),
          ),
          Text(
            'See all',
            style: TextStyle(
                fontSize: 14,
                color: tealSec.withOpacity(.7),
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
