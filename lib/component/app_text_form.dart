import 'package:flutter/material.dart';




class AppTextField extends StatelessWidget {

  TextEditingController controller;
  String hintText;
  bool isPassword;
  double width;


  AppTextField({
    required this.controller,
    required this.hintText,
    required this.isPassword,
    this.width=270
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          style: TextStyle(color: Colors.black,fontSize:20),
          cursorColor: Colors.black,
          obscureText: isPassword,
          decoration: InputDecoration(

              isDense: true,
              fillColor: Colors.grey.shade300,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: hintText
          ),
        ),
      ),
    );
  }
}
