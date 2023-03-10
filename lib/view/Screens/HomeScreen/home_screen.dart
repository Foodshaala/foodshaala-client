import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/constants/enums.dart';
import 'package:foodshala/view/Common/food_card.dart';
import 'package:foodshala/view/Screens/HomeScreen/components/square_tile.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../../services/auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/Banner.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Order from faraway cities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "view all",
                  style: TextStyle(color: primaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 22),
                child: SquareTile(
                    title: city[index][0], imagePath: city[index][1]),
              ),
              itemCount: 3,
            ),
          ),
          // Trending now
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending Now",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Text(
                  "view all",
                  style: TextStyle(color: primaryColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 22),
                child: SquareTile(
                    title: trending[index][0], imagePath: trending[index][1]),
              ),
              itemCount: 3,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
          ),
          const SizedBox(height: 10,),
          ...List.generate(10, (index) => Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Center(child:InkWell(
                child: FoodCard(),
                onTap: (){
                  Navigator.pushNamed(context, '/RestaurantScreen');
                },
            )),
          )),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

const city = [
  ["Kolkata", "assets/images/city/kolkata.png"],
  ["Agra", "assets/images/city/agra.png"],
  ["Lucknow", "assets/images/city/lucknow.png"]
];
const trending = [
  ["Kachori", "assets/images/trending/kachori.png"],
  ["Ladoo", "assets/images/trending/ladoo.png"],
  ["Besan Ladoo", "assets/images/trending/ladoo2.png"]
];
