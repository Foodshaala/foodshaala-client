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
        child: Text("home screen"),
      ),
    );
  }
}