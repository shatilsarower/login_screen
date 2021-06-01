import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  bool obscuretext = false;

  MyTextFormField({required this.hintText, required this.obscuretext});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: obscuretext,
        decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
