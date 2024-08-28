import 'package:flutter/material.dart';
import '../services/mocked_categories_data.dart';
import 'package:corelab_app_challenge/styles/colors.dart';

List<Widget> getCategoriesWidgets() {
  List<Widget> categoriesWidgets = [];

  categories.forEach((category) {
    categoriesWidgets.add(Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0XFFEBF1F4), width: 1)),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20, vertical: 14),
          child: Text(
            category,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: primary),
          ),
        )));
  });

  return categoriesWidgets;
}
