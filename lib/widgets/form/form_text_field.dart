// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;

  FormTextField({required this.hintText, required this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
