import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintTest;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintTest,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorHeight: 15,
        cursorColor: Colors.teal,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(color: Colors.teal, width: 2),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(
                color: Colors.teal,
                width: 2,
              ),
            ),
            fillColor: const Color.fromARGB(127, 144, 190, 178),
            filled: true,
            hintText: hintTest,
            hintStyle: TextStyle(color: Colors.blueGrey)),
      ),
    );
  }
}
