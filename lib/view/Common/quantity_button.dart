import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({Key? key}) : super(key: key);

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {

  int count=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      // height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              child: TextButton(child: Icon(Icons.add,color: primaryColor,size: 20,),onPressed: () {
                count++;
                setState(() {});
              },)
          ),
          Flexible(
              child: Text("${count}",style: TextStyle(color: primaryColor,fontSize: 16),)
          ),
          Flexible(
              child: TextButton(child: Icon(Icons.remove,color: primaryColor,size: 20,),onPressed: () {
                count>1?count--:count;
                setState(() {});
              },)
          ),
        ],
      ),
    );
  }
}
