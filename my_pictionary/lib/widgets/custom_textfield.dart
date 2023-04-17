import 'package:flutter/material.dart';
import '../utils/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorConstant.fadingblue,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextField(
        controller: controller, //getting it from the constructor
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          hintText: hintText, //getting it from the constructor
        ),
      ),
    );
  }
}
