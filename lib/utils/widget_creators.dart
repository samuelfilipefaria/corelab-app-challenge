import 'package:flutter/material.dart';
import "../widgets/product.dart";
import "../widgets/recent_search.dart";
import "../widgets/category.dart";
import "data_getters.dart";

List<Product> productWidgetsFrom(productsData) {
  List<Product> productWidgets = [];

  productsData.forEach((productData) {
    productWidgets.add(
      Product(
        discount: productData["discount"] ?? 0,
        title: productData["title"],
        description: productData["description"],
        category: productData["category"],
        brand: productData["brand"],
        photo: productData["photo"],
        price: productData["price"],
        priceWithDiscount: productData["priceWithDiscount"] ?? 0.0,
        installmentsPrice: productData["installmentsPrice"],
        installmentsQuantity: productData["installmentsQuantity"],
        isNew: productData["isNew"] ?? false,
        date: productData["announcement_date"],
      )
    );
  });

  return productWidgets;
}

List<Widget> searchedProductWidgetsFrom(searchTerm) {
  return productWidgetsFrom(getPoductsByTerm(searchTerm));
}

List<RecentSearch> recentSearchesWidgetsFrom(recentSearchesTerms) {
  List<RecentSearch> recentSearchesWidgets = [];

  recentSearchesTerms.forEach((recentSearchTerm) {
    recentSearchesWidgets.add(
      RecentSearch(recentSearchTerm: recentSearchTerm)
    );
  });

  return recentSearchesWidgets;
}

List<Widget> recentClickableSearchesWidgetsFrom(recentSearchesTerms, onClickAction) {
  List<Widget> recentSearchesWidgets = recentSearchesWidgetsFrom(recentSearchesTerms);
  List<Widget> recentClickableSearchesWidgets = [];

  int recentSearchIndex = 0;

  for (var recentSearchIndex = 0; recentSearchIndex < recentSearchesWidgets.length; recentSearchIndex++) {
    Widget recentSearchWidget = recentSearchesWidgets[recentSearchIndex];

    recentClickableSearchesWidgets.add(
    InkWell(
      onTap: () {
        onClickAction(recentSearchesTerms[recentSearchIndex]);
      },
      child: recentSearchWidget,
    ));
  }

  return recentClickableSearchesWidgets;
}

List<Category> categoriesWidgetsFrom(categoriesNames) {
  List<Category> categoriesWidgets = [];

  categoriesNames.forEach((categoryName) {
    categoriesWidgets.add(
      Category(name: categoryName)
    );
  });

  return categoriesWidgets;
}
