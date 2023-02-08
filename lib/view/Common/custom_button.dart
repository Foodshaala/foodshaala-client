import 'package:flutter/material.dart';

import '../../constants/device_size.dart';

class CustomRoundRectButton extends StatelessWidget {
  final String text;
  double? radius;
  double? height;
  double? width;
  double? fontSize;
  VoidCallback? callBack;
  double? elevation;
  LinearGradient? linearGradient;
  bool loading;
  CustomRoundRectButton({Key? key,
    required this.text,this.height,this.width,this.fontSize,this.callBack,this.radius=10,this.linearGradient,this.elevation,this.loading=false});
  VoidCallback nothing = (){};
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??displayWidth(context),
      child: Card(
        elevation: elevation??0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: Container(
          height: height??50,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(radius!),
            gradient: linearGradient,
          ),
          child: MaterialButton(
              padding: EdgeInsets.zero,
              elevation: 0,
              onPressed: callBack??nothing,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!),
              ),
              // height: height??50,
              color: Colors.transparent,
              //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: loading==true?
                  SizedBox(
                      height:height??50-20,
                      width: height??50-20,
                      child: CircularProgressIndicator(color: Colors.white,strokeWidth: 3,)
                  ):
              Text(
                text,
                style: TextStyle(color: Colors.white,fontSize: fontSize),
              )),
        ),
      ),
    );
  }
}