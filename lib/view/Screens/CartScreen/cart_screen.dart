import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("Cart",style: TextStyle(color: primaryColor),),
        centerTitle: true,
        actions: [IconButton(onPressed: () {

        }, icon: Icon(Icons.delete_outline,color: primaryColor,))],
      ),
    );
  }
}
