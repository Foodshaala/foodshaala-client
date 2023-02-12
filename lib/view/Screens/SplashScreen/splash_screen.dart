import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Screens/AuthScreens/signup_screen.dart';
import 'package:foodshala/view/Screens/HomeScreen/home_screen.dart';
import 'package:foodshala/view/Screens/OnboardingScreens/onboarding_screen.dart';
import 'package:foodshala/view/Utils/custom_page_route.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> isUserSet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = await prefs.get('auth-token');
    if (token == null) return false;
    return true;
  }

  Future<bool> isSigned() async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    var signed = await prefs.get('signed');
    if(signed==null) return false;
    return true;
  }
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate()async{
    if(mounted){
      bool internetConnection= await InternetConnectionChecker().hasConnection;
      bool isSet= await isUserSet();
      await Future.delayed(Duration(seconds: 2));
      bool signed=await isSigned();
      if(signed){
        isSet==true? Navigator.pushReplacement(context, CustomPageRoute(child: HomeScreen())):
            Navigator.pushReplacement(context, CustomPageRoute(child: SignupScreen()));
      }else{
        Navigator.pushReplacement(context, CustomPageRoute(child: OnboardingScreen()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/Logo.png",
          width: displayWidth(context) * 0.5,
        ),
      ),
    );
  }
}
