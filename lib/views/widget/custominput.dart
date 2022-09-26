import 'package:flutter/material.dart';
import 'package:fooddoor/constant/default.dart';
class CustomInput extends StatelessWidget {
  String inputText;
CustomInput({
    Key? key,
    required this.inputText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          inputText,
          style: TextStyle(color: tGrey, fontSize: 14),
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
            ),
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: tGrey.withOpacity(.1),
          ),
        ),
      ],
    );
  }
}
