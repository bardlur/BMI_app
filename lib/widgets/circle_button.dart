import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CircleButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const CircleButton({
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPressed,
      style: const NeumorphicStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}