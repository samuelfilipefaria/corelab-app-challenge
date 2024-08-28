import 'package:flutter/material.dart';
import 'package:corelab_app_challenge/styles/colors.dart';
import '../screens/category_product_list.dart';

class Category extends StatelessWidget {
  final String name;

  const Category({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryProductList(categoryName: name)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0XFFEBF1F4),
            width: 1
          )
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20,
            vertical: 14
          ),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: primary
            ),
          ),
        )
      ),
    );
  }
}
