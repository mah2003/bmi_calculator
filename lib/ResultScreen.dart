import 'dart:async';

import 'package:bmi_calculator/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Colors.dart';

class Resultscreen extends StatelessWidget {
  Resultscreen({super.key, required this.result});
  final double result;
  Color? StatusColor = Colors.black;
  String getState = " ";
  getStatus() {
    if (result <= 18.4)
      return "UnderWeight";
    else if (result <= 24.9)
      return "Normal";
    else if (result <= 39.9)
      return "Overweight";
    else
      return "Obese";
  }

  getstate() {
    if (result <= 18.4) {
      StatusColor = Colors.yellow;
    } else if (result <= 24.9) {
      StatusColor = Colors.orange;
    } else if (result <= 39.9) {
      StatusColor = Colors.green;
    } else {
      StatusColor = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Text(
                  "Your result",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: AppColors.inside,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (getstate()),
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 90,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "ptijhntiutiuiotuoutoupiupirut5t556y6oiyhjtn",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  child: const Text(
                    "Recalculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
