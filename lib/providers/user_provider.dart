import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:foodshala/constants/enums.dart';
import 'package:foodshala/constants/error_handling.dart';
import 'package:foodshala/constants/uri.dart';
import 'package:foodshala/models/user_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../constants/global_context.dart';

class UserProvider extends ChangeNotifier {
  UserModel? user;
  UserFetchStatus userFetchStatus = UserFetchStatus.nil;

  setUser(BuildContext context) async {
    userFetchStatus= UserFetchStatus.loading;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = await prefs.get('auth-token');
    http.Response response = await http.post(Uri.parse("$uri/api/user"),
        headers: {'auth-token': token.toString()});
    errorHandling(
        response: response,
        context: context,
        onSuccess: () {
          user= UserModel.fromJson(jsonDecode(response.body));
          userFetchStatus=UserFetchStatus.fetched;
          debugPrint("user fetched successfully");
          notifyListeners();
        });
  }
}
