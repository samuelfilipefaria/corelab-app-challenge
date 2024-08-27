import 'package:flutter/material.dart';
import 'package:corelab_app_challenge/styles/colors.dart';
import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Template",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: primary,
        appBarTheme: const AppBarTheme(backgroundColor: primary)
      ),
      home: const Menu(),
    );
  }
}
