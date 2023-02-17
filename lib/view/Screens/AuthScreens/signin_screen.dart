import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/utils.dart';
import 'package:foodshala/services/auth_service.dart';
import 'package:foodshala/view/Common/custom_button.dart';
import 'package:foodshala/view/Common/custom_textfield.dart';

import '../../../constants/device_size.dart';

class SigninScreen extends StatefulWidget {
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController phoneNo = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool acceptedTc = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: primaryColor,
                          ))
                    ],
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 24,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: mutedTextColor,
                    ),
                    textController: email,
                    hintText: "Email",
                    width: displayWidth(context) * 0.9,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: mutedTextColor,
                    ),
                    textController: password,
                    hintText: "Password",
                    obscureText: true,
                    width: displayWidth(context) * 0.9,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomRectButton(
                    text: "Sign Up",
                    width: displayWidth(context) * 0.9,
                    loading: loading,
                    callBack: () async {
                      setState(() {
                        loading = true;
                      });
                      if (_formKey.currentState!.validate()) {
                        await AuthService(context: context).signUp(
                          name: name.text,
                          email: email.text,
                          password: password.text,
                          phoneNo: int.parse(phoneNo.text),
                        );
                      }
                      setState(() {
                        loading = false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ? ",
                      ),
                      InkWell(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/SignupScreen');
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
