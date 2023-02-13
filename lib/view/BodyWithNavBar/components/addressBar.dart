import 'package:flutter/material.dart';

import '../../../constants/color_codes.dart';

class AddressBar extends StatelessWidget {
  const AddressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.location_on_outlined,color: primaryColor,),
            Text("Home"),
            Icon(Icons.keyboard_arrow_down),
          ],
        )
      ],
    );
  }
}
