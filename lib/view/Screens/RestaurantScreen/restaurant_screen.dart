import 'package:flutter/material.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Common/food_card.dart';

import 'components/head_tile.dart';
import 'components/legacy_tile.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: displayWidth(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                HeadTile(),
                SizedBox(height: 10,),
                LegacyTile(),
                SizedBox(height: 10,),
                ...List.generate(10, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FoodCard(),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
