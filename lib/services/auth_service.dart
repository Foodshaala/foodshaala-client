import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:foodshala/constants/enums.dart';
import 'package:foodshala/constants/error_handling.dart';
import 'package:foodshala/constants/uri.dart';
import 'package:foodshala/constants/utils.dart';
import 'package:foodshala/providers/user_provider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class AuthService {
  BuildContext context;
  AuthService({required this.context});
  //signup
  Future<void> signUp(
      {required String name,
      required String email,
      required String password,
      required int phoneNo}) async {
    try {
      http.Response response = await http.post(
        Uri.parse("$uri/api/signup"),
        body: json.encode({
          'name': name,
          'email': email,
          'phoneNo': phoneNo,
          'password': password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      errorHandling(
          response: response,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs= await SharedPreferences.getInstance();
            String token=jsonDecode(response.body)['token'];
            await prefs.setString("auth-token", token);
            Navigator.pushReplacementNamed(context, '/HomeScreen');
            debugPrint(response.body);
            debugPrint("user account created successfully!");
          });
    } catch (e) {
      showSnackBar(context, e.toString());
      print("error during sign up");
      print(e.toString());
    }
  }
}
