import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
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

  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate(){
    if(mounted){
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
