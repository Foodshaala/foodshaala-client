import 'package:flutter/material.dart';
import 'package:foodshala/providers/user_provider.dart';
import 'package:foodshala/view/Screens/AuthScreens/signup_screen.dart';
import 'package:foodshala/view/Screens/HomeScreen/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const Foodshaala());
}

class Foodshaala extends StatelessWidget {
  const Foodshaala({Key? key}) : super(key: key);

  Future<bool> isUserSet()async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    var token=await prefs.get('auth-token');
    if(token==null) return false;
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider(),)
      ],
      child: MaterialApp(
        routes: {
          '/HomeScreen': (context) => HomeScreen(),
        },
        debugShowCheckedModeBanner: false,
        home: FutureBuilder(
          future: isUserSet(),
          builder: (context, AsyncSnapshot<bool>snapshot) {
            if(snapshot.connectionState==ConnectionState.active||snapshot.connectionState==ConnectionState.done){
              if(snapshot.hasData){
                return snapshot.data==true? HomeScreen(): SignupScreen();
              }
            }
            return CircularProgressIndicator();
        },)
      ),
    );
  }
}
