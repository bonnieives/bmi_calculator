import 'package:flutter/material.dart';
import 'constants.dart';

class cardContent extends StatelessWidget {
  cardContent({required this.innerIcon, required this.innerText});

  final String innerText;
  final IconData innerIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          innerIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          innerText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
