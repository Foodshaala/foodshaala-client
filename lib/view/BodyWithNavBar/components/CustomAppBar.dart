import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/BodyWithNavBar/components/addressBar.dart';
import 'package:foodshala/view/BodyWithNavBar/components/searchBar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shadowColor: Color(0xFFBFBFBF).withOpacity(0.25),
      shape: RoundedRectangleBorder(),
      elevation: 7,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: inActiveIconColor,size: 35)),
                AddressBar(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: inActiveIconColor,size: 35,))
              ],
            ),
            SizedBox(height: 14,),
            Container(
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SearchBar(),
                  SizedBox(
                    width: displayWidth(context)*0.17,
                    // height: double.infinity,
                    height: 44,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          elevation: 9,
                          shadowColor: Color(0xFFBFBFBF).withOpacity(0.25),
                          backgroundColor: Colors.white
                        ),
                        child: Icon(Icons.sort,color: inActiveIconColor,)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
