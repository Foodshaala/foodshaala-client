import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Common/add_food_modal.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) * 0.9 + 10,
      child: ClipRRect(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: displayWidth(context) * 0.9,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/FoodItems/Ladoo.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: lightGrey.withOpacity(0.6)),
                    padding: EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ARSALAN",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Mutton Biryani",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
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
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 77,
              right: 28,
              child: MaterialButton(
                height: 55,
                // minWidth: 40,
                shape: CircleBorder(),
                color: primaryColor,
                child: Icon(
                  Icons.add,
                  size: 25,
                  weight: 900,
                  color: Colors.white,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    context: context,
                    builder: (context) => AddFoodModal(),
                  );
                },
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      "Delhi",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
