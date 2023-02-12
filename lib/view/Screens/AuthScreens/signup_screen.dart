import 'package:flutter/material.dart';
import 'package:foodshala/constants/utils.dart';
import 'package:foodshala/services/auth_service.dart';
import 'package:foodshala/view/Common/custom_button.dart';
import 'package:foodshala/view/Common/custom_textfield.dart';

import '../../../constants/device_size.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController phoneNo = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();
  
  GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // margin:
          //     EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          width: displayWidth(context),
          height: displayHeight(context),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    textController: name,
                    hintText: "Name",
                    width: displayWidth(context) * 0.9,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    textController: email,
                    hintText: "Email",
                    width: displayWidth(context) * 0.9,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    textController: phoneNo,
                    // inputNumberOnly: true,
                    hintText: "Phone no.",
                    width: displayWidth(context) * 0.9,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    textController: password,
                    hintText: "Password",
                    obscureText: true,
                    width: displayWidth(context) * 0.9,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    textController: confirmPassword,
                    hintText: "Confirm Password",
                    obscureText: true,
                    width: displayWidth(context) * 0.9,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: CustomRectButton(
          text: "Sign Up",
          width: displayWidth(context) * 0.9,
          loading: loading,
          callBack: () async {
            setState(() {
              loading = true;
            });
            if(_formKey.currentState!.validate()&&confirmPassword.text==password.text){
              await AuthService(context: context).signUp(
                  name: name.text,
                  email: email.text,
                  password: password.text,
                  phoneNo: int.parse(phoneNo.text),
              );
            }else if(confirmPassword.text!=password.text){
              showSnackBar(context, "Password dosen't match");
            }
            setState(() {
              loading = false;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
