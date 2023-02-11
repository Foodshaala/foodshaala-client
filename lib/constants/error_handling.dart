import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:foodshala/constants/utils.dart';
import 'package:http/http.dart' as http;
void errorHandling({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}){
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['message']);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      break;
    default:
      showSnackBar(context, response.body);
  }
}