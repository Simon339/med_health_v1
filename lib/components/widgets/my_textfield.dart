import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText:  obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: Theme.of(context).colorScheme.onSecondary
          ),
        ),
        focusedBorder:  const OutlineInputBorder(
          borderSide: BorderSide(
          color: Colors.grey,
          ),
        ),
        fillColor: Colors.grey,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
