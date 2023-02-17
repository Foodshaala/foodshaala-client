import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodshala/constants/device_size.dart';

import '../../constants/color_codes.dart';

class CustomTextField extends StatefulWidget {
  String? hintText;
  Icon? prefixIcon;
  double? width;
  double? height;
  bool obscureText;
  bool? inputNumberOnly;
  TextEditingController? textController;
  String? Function(String?)? validator;
  CustomTextField({this.hintText,this.textController,this.validator,this.height,this.width,this.obscureText=false,this.inputNumberOnly=false,this.prefixIcon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool visibility= false;
  @override
  Widget build(BuildContext context) {
    // final controller=Provider.of<TextFieldController>(context);
    return Container(
      // margin: isFocused==true?
      //   EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom):
      //   EdgeInsets.zero,
      decoration: BoxDecoration(
        color: lightGrey.withOpacity(0.2)
      ),
      width: widget.width??displayWidth(context),
      child: TextFormField(
        // textAlign: TextAlign.start,
        // textAlignVertical: TextAlignVertical.center,
        keyboardType: widget.inputNumberOnly==true? TextInputType.number:null,
        inputFormatters:widget.inputNumberOnly==true? <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ]:null,
        // focusNode: _focus,
        obscureText: widget.obscureText?!visibility:false,
        controller: widget.textController,
        validator: (value) {
          if(value!.isEmpty) return "enter your ${widget.hintText}";
        },
        minLines: 1,
        // maxLines: 16,
        decoration: InputDecoration(
          // fillColor: lightGrey.withOpacity(0.1),
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText??"Unnamed",
          hintStyle: TextStyle(color: mutedTextColor ),
          // isCollapsed: true,
          // contentPadding: EdgeInsets.only(bottom: 10),
          contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(0),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(0),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.8,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(0),
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.8,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }
}