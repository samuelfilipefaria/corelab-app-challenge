import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../utils/widget_creators.dart';
import '../services/mocked_categories_data.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9FA),
        titleSpacing: 10,
        toolbarHeight: 60,
        title: const Padding(
          padding: EdgeInsets.all(20),
          child: Text("Categorias"),
        ),
        titleTextStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w500, color: dark),
      ),
      body: ListView(
        shrinkWrap: true,
        children: categoriesWidgetsFrom(categories),
      ),
    );
  }
}
