import '../services/mocked_product_data.dart';
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
