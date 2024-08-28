import 'package:corelab_app_challenge/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../services/mocked_product_data.dart';
import '../services/mocked_search_data.dart';
import '../widgets/product.dart';

getTodaysProducts() {
  return getPoductsByDate("2024-08-27");
}

getYesterdaysProducts() {
  return getPoductsByDate("2024-08-26");
}

List<Map> getPoductsByDate(date) {
  return products.where((product) => product["date"] == date).toList();
}

List<Map> getPoductsByTerm(term) {
  String searchTerm = term.toLowerCase().trim();

  if (searchTerm == "") {
    return products;
  } else {
    return products
        .where((product) =>
            (product["name"].toString().toLowerCase().contains(searchTerm)) ||
            (product["brand"].toString().toLowerCase().contains(searchTerm)) ||
            (product["price"].toString().toLowerCase().contains(searchTerm)) ||
            (product["priceWithDiscount"]
                .toString()
                .toLowerCase()
                .contains(searchTerm)) ||
            (product["installmentsPrice"]
                .toString()
                .toLowerCase()
                .contains(searchTerm)))
        .toList();
  }
}

List<Product> getProductsWidgets(productsData) {
  List<Product> productWidgets = [];

  productsData.forEach((productData) {
    productWidgets.add(Product(
      discount: productData["discount"] ?? 0,
      name: productData["name"],
      brand: productData["brand"],
      photo: productData["photo"],
      price: productData["price"],
      priceWithDiscount: productData["priceWithDiscount"] ?? 0.0,
      installmentsPrice: productData["installmentsPrice"],
      installmentsQuantity: productData["installmentsQuantity"],
      isNew: productData["isNew"] ?? false,
      date: productData["date"],
    ));
  });

  return productWidgets;
}

List<Widget> getRecentSearchesWidgets() {
  List<Widget> recentSearchWidgets = [];

  recentSearchTerms.forEach((recentSearchTerm) {
    recentSearchWidgets.add(Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(Symbols.history, color: secondary),
          ),
          Text(
            recentSearchTerm,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: secondary),
          )
        ],
      ),
    ));
  });

  return recentSearchWidgets;
}
