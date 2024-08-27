import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryDefaultValue, <int, Color>{
  50: Color(0xFFE0F6F9),
  100: Color(0xFFB3E9F0),
  200: Color(0xFF80DAE6),
  300: Color(0xFF4DCBDB),
  400: Color(0xFF26BFD4),
  500: Color(_primaryDefaultValue),
  600: Color(0xFF00ADC7),
  700: Color(0xFF00A4C0),
  800: Color(0xFF009CB9),
  900: Color(0xFF008CAD),
});

const int _primaryDefaultValue = 0xFF00B4CC;

const MaterialColor secondary = MaterialColor(_secondaryDefaultValue, <int, Color>{
  50: Color(0xFFEFF2F2),
  100: Color(0xFFD8DEDF),
  200: Color(0xFFBEC8CA),
  300: Color(0xFFA3B1B4),
  400: Color(0xFF90A1A4),
  500: Color(_secondaryDefaultValue),
  600: Color(0xFF74888C),
  700: Color(0xFF697D81),
  800: Color(0xFF5F7377),
  900: Color(0xFF4C6165),
});

const int _secondaryDefaultValue = 0xFF7C9094;

const MaterialColor dark = MaterialColor(_darkDefaultValue, <int, Color>{
  50: Color(0xFFE0E5E5),
  100: Color(0xFFB3BDBF),
  200: Color(0xFF809294),
  300: Color(0xFF4D6669),
  400: Color(0xFF264549),
  500: Color(_darkDefaultValue),
  600: Color(0xFF002024),
  700: Color(0xFF001B1F),
  800: Color(0xFF001619),
  900: Color(0xFF000D0F),
});

const int _darkDefaultValue = 0xFF002429;
