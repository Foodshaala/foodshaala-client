import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Screens/RestaurantScreen/components/rating_badge.dart';

class HeadTile extends StatelessWidget {
  const HeadTile({Key? key}) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gulati",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("Karol bagh, Delhi")
                ],
              ),
              RatingBadge()
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(
                Icons.access_time_outlined,
                color: primaryColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Delivery: Tomorrow | 5pm-8pm | Mon",
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
