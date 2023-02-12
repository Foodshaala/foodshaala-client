import 'package:flutter/material.dart';
import 'package:foodshala/constants/enums.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../../services/auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<UserProvider>(builder: (context, user, child) {
          if(user.userFetchStatus==UserFetchStatus.nil){
            user.setUser(context);
          }
          switch(user.userFetchStatus){
            case UserFetchStatus.nil:
              return Text("not able to fetch");
            case UserFetchStatus.loading:
              return CircularProgressIndicator();
            case UserFetchStatus.fetched:
              return Text("name : ${user.user!.name}");
          }
        },),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        onPressed: () async {
        await AuthService(context: context).signout();
        Navigator.pushReplacementNamed(context, '/SignupScreen');
      },),
    );
  }
}