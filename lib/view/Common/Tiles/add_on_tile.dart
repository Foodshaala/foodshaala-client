import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/constants/device_size.dart';

class AddOnTile extends StatefulWidget {
  const AddOnTile({Key? key}) : super(key: key);

  @override
  State<AddOnTile> createState() => _AddOnTileState();
}

class _AddOnTileState extends State<AddOnTile> {

  List<int>selectedIndex=[];
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
          Text("Add Ons",style: TextStyle(fontSize: 16),),
          ...List.generate(5, (index) => ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            title: Text("250 gm"),
            trailing: Checkbox(value: selectedIndex.contains(index), onChanged: (value) {
              if(!selectedIndex.contains(index)){
                selectedIndex.add(index);
              }else{
                selectedIndex.remove(index);
              }
              setState(() {});
            },),
          ))
        ],
      ),
    );
  }
}
