import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static const ButtonStyle linkButton = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.red),
    foregroundColor: MaterialStatePropertyAll(Colors.white),
    padding: MaterialStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 160, vertical: 5),
    ),
  );
}
