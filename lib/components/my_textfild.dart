import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controlller;
  final String hinttext;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.controlller,
      required this.hinttext,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controlller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hinttext,
          helperStyle: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
