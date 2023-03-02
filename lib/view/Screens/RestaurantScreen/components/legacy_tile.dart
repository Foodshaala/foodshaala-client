import 'package:flutter/material.dart';

import '../../../../constants/color_codes.dart';
import '../../../../constants/device_size.dart';

class LegacyTile extends StatelessWidget {
  const LegacyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      // height: 200,
      width: displayWidth(context)*0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: lightGrey.withOpacity(0.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("The Legacy",style: TextStyle(color: Colors.brown,fontSize: 18,),),
          SizedBox(height: 5,),
          Text("The story of the journey began way back then in 1959 from a modest little dhaba, with simple wooden benches and tables, has today transformed into an elegantly ornated Fine Dining Restaurant, known for its great North Indian, Mughlai, Hyderabadi and Tandoori cuisine",
          ),
        ],
      ),
    );
  }
}
