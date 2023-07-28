import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'base_container.dart';
import 'circle_button.dart';

class SelectorContainer extends StatelessWidget {
  final String title;
  final String number;
  final VoidCallback increase;
  final VoidCallback decrease;

  const SelectorContainer({
    required this.title,
    required this.number,
    required this.increase,
    required this.decrease,
  });

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      childWidget: Column(
        children: [
          Text(
            title,
            style: kTextVariableStyle,
          ),
          Text(
            number,
            style: kNumberStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                iconData: FontAwesomeIcons.minus,
                onPressed: decrease,
              ),
              const SizedBox(
                width: 5,
              ),
              CircleButton(
                iconData: FontAwesomeIcons.plus,
                onPressed: increase,
              ),
            ],
          ),
        ],
      ),
    );
  }
}