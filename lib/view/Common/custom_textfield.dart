import 'package:flutter/material.dart';
import 'package:foodshala/constants/device_size.dart';

import '../../constants/color_codes.dart';

class CustomTextField extends StatefulWidget {
  String? hintText;
  double? width;
  double? height;
  bool? obscureText;
  TextEditingController? textController;
  String? Function(String?)? validator;
  CustomTextField({this.hintText,this.textController,this.validator,this.height,this.width,this.obscureText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode _focus=FocusNode();
  bool isFocused=false;
  @override
  Widget build(BuildContext context) {
    // final controller=Provider.of<TextFieldController>(context);
    _focus.addListener(() {
      setState(() {
        isFocused=_focus.hasFocus;
      });
    });
    return Container(
      margin: isFocused==true?
        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom):
        EdgeInsets.zero,
      width: widget.width??displayWidth(context),
      height: widget.height??50,
      child: TextFormField(
        // focusNode: _focus,
        obscureText: widget.obscureText??false,
        controller: widget.textController,
        validator: widget.validator,
        minLines: 1,
        // maxLines: 16,
        decoration: InputDecoration(
          fillColor: lightGrey.withOpacity(0.3),
          filled: true,
          hintText: widget.hintText??"Unnamed",
          hintStyle: TextStyle(color: lightGrey ),
          // hintTextText: widget.hintText??"Unnamed",
          // hintTextStyle: TextStyle(fontWeight: FontWeight.w500,color: lightGrey.withOpacity(0.3) ),
          // isCollapsed: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
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