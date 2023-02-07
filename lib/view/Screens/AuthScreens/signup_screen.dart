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
        body: SizedBox(
          width: displayWidth(context),
          height: displayHeight(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign up"),
              CustomTextField(
                width: displayWidth(context)*0.9,
              ),
              SizedBox(height: 30,),
              CustomTextField(
                width: displayWidth(context)*0.9,
              ),
            ],
          ),
        ),
        floatingActionButton: CustomRoundRectButton(text: "Sign Up",loading: true,),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
