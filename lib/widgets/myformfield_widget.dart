import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyTextFormField extends StatefulWidget {
  final String hintText;
  bool obscuretext = false;

  MyTextFormField({required this.hintText, required this.obscuretext});

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: widget.obscuretext,
        decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
