import 'package:bmi_calculater/widgets/result_bmi.dart';
import 'package:bmi_calculater/widgets/title_result_text.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';
import 'package:bmi_calculater/screens/home_screen.dart';


class ResultScreen extends StatefulWidget {

  final String resultBMI;
  final String resulState;

  const ResultScreen({

    required this.resultBMI,
    required this.resulState,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Black,
        elevation: 0,
        iconTheme: IconThemeData(
          color: White, 
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 700,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/page2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TitleResultText(),
                SizedBox(
                  height: 50,
                ),
                Result(
                  resultBMI: widget.resultBMI,
                  resultState: widget.resulState,
                ),
                SizedBox(
                  height: 70,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      ),
                    ),
                    primary: Black,
                    minimumSize: Size(312, 55),
                    maximumSize: Size(312, 55),
                    backgroundColor: Black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(               
                    'محاسبه مجدد',
                    style: TextStyle(
                      color: White,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}