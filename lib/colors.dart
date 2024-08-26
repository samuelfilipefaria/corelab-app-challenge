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

const MaterialColor secondary = MaterialColor(_secondaryPrimaryValue, <int, Color>{
  50: Color(0xFFEFF2F2),
  100: Color(0xFFD8DEDF),
  200: Color(0xFFBEC8CA),
  300: Color(0xFFA3B1B4),
  400: Color(0xFF90A1A4),
  500: Color(_secondaryPrimaryValue),
  600: Color(0xFF74888C),
  700: Color(0xFF697D81),
  800: Color(0xFF5F7377),
  900: Color(0xFF4C6165),
});
const int _secondaryPrimaryValue = 0xFF7C9094;

const MaterialColor secondaryAccent = MaterialColor(_secondaryAccentValue, <int, Color>{
  100: Color(0xFFC8F6FE),
  200: Color(_secondaryAccentValue),
  400: Color(0xFF62E6FF),
  700: Color(0xFF48E2FF),
});
const int _secondaryAccentValue = 0xFF96EDFE;

const MaterialColor dark = MaterialColor(_darkPrimaryValue, <int, Color>{
  50: Color(0xFFE0E5E5),
  100: Color(0xFFB3BDBF),
  200: Color(0xFF809294),
  300: Color(0xFF4D6669),
  400: Color(0xFF264549),
  500: Color(_darkPrimaryValue),
  600: Color(0xFF002024),
  700: Color(0xFF001B1F),
  800: Color(0xFF001619),
  900: Color(0xFF000D0F),
});
const int _darkPrimaryValue = 0xFF002429;

const MaterialColor darkAccent = MaterialColor(_darkAccentValue, <int, Color>{
  100: Color(0xFF52E2FF),
  200: Color(_darkAccentValue),
  400: Color(0xFF00C3EB),
  700: Color(0xFF00AED1),
});
const int _darkAccentValue = 0xFF1FDAFF;