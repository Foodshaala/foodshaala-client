import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  String imagePath;
  String? title;
  SquareTile({required this.imagePath,this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16)),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(title??"",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
            const SizedBox(height: 12,),
          ],
        )
      ),
    );
  }
}
