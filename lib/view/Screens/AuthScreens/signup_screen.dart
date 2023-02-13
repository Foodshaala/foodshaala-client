import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  "Sign up",
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
                    Icons.person,
                    color: mutedTextColor,
                  ),
                  textController: name,
                  hintText: "Name",
                  width: displayWidth(context) * 0.9,
                ),
                SizedBox(
                  height: 30,
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
                    Icons.phone,
                    color: mutedTextColor,
                  ),
                  textController: phoneNo,
                  // inputNumberOnly: true,
                  hintText: "Phone no.",
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
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        primarySwatch: Colors.orange,
                        unselectedWidgetColor: primaryColor, // Your color
                      ),
                      child: Checkbox(
                        value: acceptedTc,
                        onChanged: (value) {
                          acceptedTc = value!;
                          setState(() {});
                        },
                      ),
                    ),
                    Text("I accept the", style: TextStyle(color: Colors.black)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Terms and conditions",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                CustomRectButton(
                  text: "Sign Up",
                  width: displayWidth(context) * 0.9,
                  loading: loading,
                  callBack: () async {
                    setState(() {
                      loading = true;
                    });
                    if (_formKey.currentState!.validate()&&acceptedTc==true) {
                      await AuthService(context: context).signUp(
                        name: name.text,
                        email: email.text,
                        password: password.text,
                        phoneNo: int.parse(phoneNo.text),
                      );
                    }else if(acceptedTc==false){
                      showSnackBar(context, 'Please accept the terms and conditions.');
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
                      "Already have an account ? ",
                    ),
                    InkWell(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/SigninScreen');
                      },
                    )
                  ],
                ),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/BodyWithNavBar');
                }, child: Text("Skip"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
