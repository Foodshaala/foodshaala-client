import 'package:flutter/material.dart';
import 'package:foodshala/view/Common/custom_button.dart';
import 'package:foodshala/view/Common/custom_textfield.dart';

import '../../../constants/device_size.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          width: displayWidth(context),
          height: displayHeight(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sign up",style: TextStyle(fontSize: 24,color: Colors.green,fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                CustomTextField(
                  hintText: "Name",
                  width: displayWidth(context)*0.9,
                ),
                SizedBox(height: 30,),
                CustomTextField(
                  hintText: "Email",
                  width: displayWidth(context)*0.9,
                ),
                SizedBox(height: 30,),
                CustomTextField(
                  hintText: "Phone no.",
                  width: displayWidth(context)*0.9,
                ),
                SizedBox(height: 30,),
                CustomTextField(
                  hintText: "Password",
                  obscureText: true,
                  width: displayWidth(context)*0.9,
                ),
                SizedBox(height: 30,),
                CustomTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  width: displayWidth(context)*0.9,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: CustomRoundRectButton(text: "Sign Up",width: displayWidth(context)*0.9,),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
