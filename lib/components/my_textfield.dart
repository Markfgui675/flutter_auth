import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, this.controller, required this.hintText, required this.obscureText}) : super(key: key);

  final controller;
  final String hintText;
  final bool obscureText;



  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide( color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide( color: Colors.grey.shade400)
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500])
        ),
      ),
    );
  }
}
