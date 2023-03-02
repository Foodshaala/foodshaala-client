import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodshala/constants/color_codes.dart';

class RatingBadge extends StatelessWidget {
  const RatingBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 100,
      width: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('4.3',style: TextStyle(color: Colors.white),),
                  Icon(Icons.favorite,size: 16,color: Colors.white,)
                ],
              ),
            ),
          ),
          Container(
            width: 70,
            height: 40,
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("11.9k",style: TextStyle(fontSize: 12),),
                  Text("reviews",style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
