import "../services/mocked_product_data.dart";

getTodaysProducts() {
  return getPoductsByDate("2024-08-27");
}

getYesterdaysProducts() {
  return getPoductsByDate("2024-08-26");
}

List<Map> getPoductsByDate(date) {
  return products.where((product) => product["announcement_date"] == date).toList();
}

List<Map> getPoductsByCategory(category) {
  return products.where((product) => product["category"] == category).toList();
}

List<Map> getPoductsByTerm(term) {
  String searchTerm = term.toLowerCase().trim();
  List<Map> foundProducts = [];

  if (searchTerm == "") {
    foundProducts = products;
  } else {
    foundProducts = products.where((product) =>
      product["title"].toString().toLowerCase().contains(searchTerm) ||
      product["description"].toString().toLowerCase().contains(searchTerm) ||
      product["category"].toString().toLowerCase().contains(searchTerm) ||
      product["price"].toString().toLowerCase().contains(searchTerm) ||
      product["priceWithDiscount"].toString().toLowerCase().contains(searchTerm) ||
      product["installmentsPrice"].toString().toLowerCase().contains(searchTerm)
    ).toList();
  }

  return foundProducts;
}

int getSearchResultsQuantity(searchTerm) {
  return getPoductsByTerm(searchTerm).length;
}
