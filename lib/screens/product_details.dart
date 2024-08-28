import 'package:flutter/material.dart';
import 'package:corelab_app_challenge/styles/colors.dart';
import '../widgets/top_app_bar.dart';

class ProductDetails extends StatelessWidget {
  final Map productData;

  const ProductDetails({
    super.key,
    required this.productData
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        showFilterButton: false,
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("Detalhes do produto", style: TextStyle(color: Colors.white),),
        )
      ),

      body: Center(
        child: Column(
          children: [
            Image.asset(productData["photo"], width: 100, height: 100),
            Text("${productData["title"]}",
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: dark,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Marca: ${productData["brand"]}",
                softWrap: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: secondary,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Categoria: ${productData["category"]}",
                softWrap: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: secondary,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Descrição: ${productData["description"]}",
                softWrap: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: secondary,
                )
              ),
            ),
          ]
        ),
      )
    );
  }
}