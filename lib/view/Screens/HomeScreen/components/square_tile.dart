import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          gradient: LinearGradient(
            colors: [Colors.black26, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Image.asset('assets/images/customer.png'),
    );
  }
}
