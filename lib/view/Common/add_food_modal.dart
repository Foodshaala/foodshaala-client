import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/view/Common/Tiles/add_on_tile.dart';
import 'package:foodshala/view/Common/Tiles/quantity_tile.dart';

class AddFoodModal extends StatelessWidget {
  const AddFoodModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: lightGrey.withOpacity(0.3),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white
            ),
            child: Row(
              children: [
                Container(
                    height: 60, width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/FoodItems/Ladoo.png'),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Ladoo",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 12),
              children: [
                SizedBox(height: 10,),
                QuantityTile(),
                SizedBox(height: 10,),
                AddOnTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
