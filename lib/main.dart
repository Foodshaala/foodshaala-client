import 'package:flutter/material.dart';
import 'package:foodshala/view/Screens/AuthScreens/signup_screen.dart';

void main() {
  runApp(const Foodshaala());
}

class Foodshaala extends StatelessWidget {
  const Foodshaala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen(),
    );
  }
}
