import 'package:flutter/material.dart';

import '../../../../constants/color_codes.dart';

class DotIndicator extends StatelessWidget {
  bool? active;
  DotIndicator({this.active=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active! ? primaryColor: primaryColor.withOpacity(0.4),
      ),
    );
  }
}
