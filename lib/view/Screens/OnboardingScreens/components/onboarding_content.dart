import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';

class OnboardingContent extends StatelessWidget {
  String title;
  String body;
  String image;
  OnboardingContent({
    required this.image,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Spacer(),
        Image.asset(image,width: displayWidth(context)*0.6,),
        SizedBox(
          height: displayHeight(context) * 0.1,
        ),
        Text(
          title,
          style: TextStyle(
              color: primaryColor,
              fontSize: displayWidth(context) * 0.058,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: displayHeight(context) * 0.03,
        ),
        Text(
          body,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    ));
  }
}
