import 'package:corelab_app_challenge/utils/data_getters.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../utils/widget_creators.dart';
import '../services/mocked_categories_data.dart';

class CategoryProductList extends StatelessWidget {
  final String categoryName;

  const CategoryProductList({
    super.key,
    required this.categoryName
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9FA),
        titleSpacing: 10,
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(categoryName),
        ),
        titleTextStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w500, color: dark),
      ),
      body: ListView(
        shrinkWrap: true,
        children: productWidgetsFrom(getPoductsByCategory(categoryName)),
      ),
    );
  }
}
