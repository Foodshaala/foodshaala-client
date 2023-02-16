import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Screens/BodyWithNavBar/components/addressBar.dart';
import 'package:foodshala/view/Screens/BodyWithNavBar/components/searchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bell,color: inActiveIconColor,size: 30,)),
              AddressBar(),
              IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.heart,color: inActiveIconColor,size: 30,))
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
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
    );
  }
}
