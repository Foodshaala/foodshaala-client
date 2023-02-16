import 'package:flutter/material.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Screens/BodyWithNavBar/components/CustomAppBar.dart';

class BodyWithAppBar extends StatefulWidget {
  Widget child;
  BodyWithAppBar({required this.child});

  @override
  State<BodyWithAppBar> createState() => _BodyWithAppBarState();
}

class _BodyWithAppBarState extends State<BodyWithAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: CustomAppBar(),
          preferredSize: Size(displayWidth(context), displayHeight(context)*0.18),
        ),
        body: widget.child,
      ),
    );
  }
}
