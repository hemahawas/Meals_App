import 'package:flutter/material.dart';

abstract class CustomThemes {
  CustomThemes._();

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    iconTheme: IconThemeData(color: Colors.white),
  );
}
