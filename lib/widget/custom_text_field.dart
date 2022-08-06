import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      this.controller,
      this.Text,
      this.hintText,
      this.pIcon,
      this.sIcon,
      this.validator})
      : super(key: key);

  dynamic validator;
  TextEditingController? controller;
  String? hintText, Text;
  IconData? pIcon, sIcon;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
        prefixIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepOrange,
            ),
            child: Icon(
              widget.pIcon,
              color: Colors.white,
            )),
        suffixIcon: Icon(
          widget.sIcon,
          color: Colors.black54,
        ),
      ),
    );
  }
}
