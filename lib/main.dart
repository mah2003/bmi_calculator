import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'ResultScreen.dart';

void main() {
  runApp(const Bmi_Calculator());
}

class Bmi_Calculator extends StatelessWidget {
  const Bmi_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Homescreen();
  }
}
