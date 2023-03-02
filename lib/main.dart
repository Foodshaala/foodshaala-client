import 'package:flutter/material.dart';
import 'package:foodshala/controllers/screen_controller.dart';
import 'package:foodshala/providers/user_provider.dart';
import 'package:foodshala/view/Screens/AuthScreens/signin_screen.dart';
import 'package:foodshala/view/Screens/AuthScreens/signup_screen.dart';
import 'package:foodshala/view/Screens/BodyWithNavBar/body_with_nav_bar.dart';
import 'package:foodshala/view/Screens/HomeScreen/home_screen.dart';
import 'package:foodshala/view/Screens/RestaurantScreen/restaurant_screen.dart';
import 'package:foodshala/view/Screens/SplashScreen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const Foodshaala());
}

class Foodshaala extends StatelessWidget {
  const Foodshaala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider(),),
        ChangeNotifierProvider(create: (context) => ScreenController(),)
      ],
      child: MaterialApp(
        routes: {
          '/BodyWithNavBar': (context) => BodyWithNavBar(),
          '/HomeScreen': (context) => HomeScreen(),
          '/SignupScreen': (context) => SignupScreen(),
          '/SigninScreen':(context) => SigninScreen(),
          '/RestaurantScreen': (context) => RestaurantScreen()
        },
        theme: ThemeData(
          fontFamily: "Poppins"
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
