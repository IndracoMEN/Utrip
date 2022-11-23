import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black87)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black87,
          width: 2,
        )),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: prefixIcon != null
            ? const Icon(
                Icons.alternate_email_sharp,
                color: Colors.black87,
              )
            : null);
  }
}
