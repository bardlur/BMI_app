import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';

class TitleResultText extends StatelessWidget {
  const TitleResultText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(90, 0, 40, 0),
          child: Text(
            'شاخص توده',
            style: TextStyle(
              fontSize: 50,
              color:  White,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(140, 0, 40, 30),
          child: Text(
            ':بدنی شما',
            style: TextStyle(
              fontSize: 50,
              color:  White,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}