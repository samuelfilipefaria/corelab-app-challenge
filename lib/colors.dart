import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE0F6F9),
  100: Color(0xFFB3E9F0),
  200: Color(0xFF80DAE6),
  300: Color(0xFF4DCBDB),
  400: Color(0xFF26BFD4),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF00ADC7),
  700: Color(0xFF00A4C0),
  800: Color(0xFF009CB9),
  900: Color(0xFF008CAD),
});

const int _primaryPrimaryValue = 0xFF00B4CC;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFD7F6FF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF71E0FF),
  700: Color(0xFF58DAFF),
});
const int _primaryAccentValue = 0xFFA4EBFF;