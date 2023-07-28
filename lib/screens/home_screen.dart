import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants/constants.dart';
import 'package:bmi_calculater/widgets/selector_container.dart';
import 'result_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int height = 175, weight = 75;


  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            height: 770,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/page1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 300),
                Text(
                  'خودتو BMI',
                  style: TextStyle(
                    fontSize: 60,
                    color:  Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  ':اینجا حساب کن',
                  style: TextStyle(
                    fontSize: 30,
                    color:  Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectorContainer(
                        title: 'قد',
                        number: height.toString(),
                        increase: () {
                          changeNumbers(
                            isAgeChanging: true, 
                            isIncreasing: true,
                          );
                        },
                        decrease: () {
                          changeNumbers(
                            isAgeChanging: true, 
                            isIncreasing: false,
                          );
                        },
                      ),
                      SelectorContainer(
                        title: 'وزن',
                        number: weight.toString(),
                        increase: () {
                          changeNumbers(
                            isAgeChanging: false, 
                            isIncreasing: true,
                          );
                        },
                        decrease: () {
                          changeNumbers(
                            isAgeChanging: false, 
                            isIncreasing: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      ),
                    ),
                    primary: White,
                    minimumSize: Size(312, 55),
                    maximumSize: Size(312, 55),
                    backgroundColor: White,
                  ),
                  onPressed: () {
                    my_navigator();
                  },
                 child: Text(               
                    'محاسبه',
                    style: TextStyle(
                      color: Black,
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
  
  void changeNumbers({
    required bool isAgeChanging,
    required bool isIncreasing,
  }) {
    if (isAgeChanging) {
      setState(() {
        if (isIncreasing) {
          if (height < 300) {
            height++;
          } else {
            // pass
          }
        } else {
          if (height > 1) {
            height--;
          } else {
            // pass
          }
        }
      });
    } //
    else {
      setState(() {
        if (isIncreasing) {
          if (weight < 500) {
            weight++;
          } else {
            // pass
          }
        } else {
          if (weight > 5) {
            weight--;
          } else {
            // pass
          }
        }
      });
    }
  }

  void my_navigator() {
    List result = bmiCalculator();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ResultScreen(
            resultBMI: result[0].toString(),
            resulState: result[1],
          );
        },
      ),
    );
  }

  List bmiCalculator() {
    double resultBMI = 0;
    String resultState;

    resultBMI = weight / pow((height / 100), 2);

    if (resultBMI < 18.5) {
      resultState = 'کمبود وزن';

    } else if (resultBMI >= 18.5 && resultBMI <= 25) {
      resultState = 'نرمال';

    } else if (resultBMI > 25 && resultBMI <= 30) {
      resultState = 'اضافه وزن';

    } else {
      resultState = 'چاق';
    }

    return [
      resultBMI,
      resultState,
    ];
  }
}


