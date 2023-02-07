import 'package:flutter/material.dart';
import 'package:foodshala/constants/device_size.dart';

import '../../constants/color_codes.dart';

class CustomTextField extends StatefulWidget {
  String? label;
  double? width;
  double? height;
  TextEditingController? textController;
  String? Function(String?)? validator;
  CustomTextField({this.label,this.textController,this.validator,this.height,this.width});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    // final controller=Provider.of<TextFieldController>(context);
    return Container(
      width: widget.width??displayWidth(context),
      height: widget.height??50,
      child: TextFormField(
        controller: widget.textController,
        validator: widget.validator,
        minLines: 1,
        maxLines: 16,
        decoration: InputDecoration(
          fillColor: lightGrey.withOpacity(0.3),
          filled: true,
          hintText: widget.label??"Unnamed",
          hintStyle: TextStyle(color: lightGrey ),
          // labelText: widget.label??"Unnamed",
          // labelStyle: TextStyle(fontWeight: FontWeight.w500,color: lightGrey.withOpacity(0.3) ),
          // isCollapsed: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.8,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.8,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}