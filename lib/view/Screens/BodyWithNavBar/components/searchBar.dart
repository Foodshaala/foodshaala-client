import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      shadowColor: Color(0xFFBFBFBF).withOpacity(0.25),
      elevation: 9,
      child: Container(
        width: displayWidth(context)*0.7,
        height: double.infinity,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            isCollapsed: true,
            prefixIcon: Icon(Icons.search),
            hintText: "Name ur Mood...",
            hintStyle: TextStyle(color: inActiveIconColor),
            border: OutlineInputBorder(
              borderSide: BorderSide.none
            )
          ),
        ),
      ),
    );
  }
}
