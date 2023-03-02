import 'package:flutter/material.dart';
import 'package:foodshala/constants/device_size.dart';

import 'components/head_tile.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: displayWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              HeadTile(),

            ],
          ),
        ),
      ),
    );
  }
}
