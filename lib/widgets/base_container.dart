import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';

class BaseContainer extends StatelessWidget {
  final Widget childWidget;

  const BaseContainer({required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: childWidget,
        ),
      ),
    );
  }
}
