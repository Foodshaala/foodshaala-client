import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';

class QuantityTile extends StatefulWidget {
  const QuantityTile({Key? key}) : super(key: key);

  @override
  State<QuantityTile> createState() => _QuantityTileState();
}

class _QuantityTileState extends State<QuantityTile> {

  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context)*0.95,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Quantity",style: TextStyle(fontSize: 16),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: primaryColor)
                ),
                child: Text("Required",style: TextStyle(color: primaryColor)))
            ],
          ),
          ...List.generate(5, (index) => ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            title: Text("250 gm"),
            trailing: Radio(value: index==selectedIndex?true:false, groupValue: true, onChanged: (value) {
              selectedIndex=index;
              setState(() {});
            },),
          ))
        ],
      ),
    );
  }
}
