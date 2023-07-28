import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';


class Result extends StatelessWidget {

  final String resultState;
  final String resultBMI; 

  const Result({

    required this.resultBMI,
    required this.resultState,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            children: [
              SizedBox(height: 50,), 
              Text(
                resultBMI.substring(0, resultBMI.indexOf(('.')) + 3),
                style: TextStyle(
                  color: Black,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                ' وضعیت شما:  $resultState',
                style: TextStyle(
                  color: Black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
    