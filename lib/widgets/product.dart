import 'package:flutter/material.dart';
import 'package:corelab_app_challenge/styles/colors.dart';
import 'package:intl/intl.dart';
import '../screens/product_details.dart';

class Product extends StatelessWidget {
  final int discount;
  final String title;
  final String description;
  final String category;
  final String brand;
  final String photo;
  final double price;
  final double priceWithDiscount;
  final double installmentsPrice;
  final int installmentsQuantity;
  final bool isNew;
  final String date;

  const Product({
    super.key,
    this.discount = 0,
    required this.title,
    required this.description,
    required this.category,
    required this.brand,
    required this.photo,
    required this.price,
    this.priceWithDiscount = 0,
    required this.installmentsPrice,
    required this.installmentsQuantity,
    this.isNew = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetails(productData: {
            "discount": discount,
            "title": title,
            "description": description,
            "category": category,
            "brand": brand,
            "photo": photo,
            "price": price,
            "priceWithDiscount": priceWithDiscount,
            "installmentsPrice": installmentsPrice,
            "installmentsQuantity": installmentsQuantity,
            "isNew": isNew,
            "date": date
          })),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0XFFEBF1F4), width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Image.asset(photo, width: 100, height: 100),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.52,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    showDiscountSign(discount),
                    Text("$title - $brand",
                        softWrap: true,
                        style: const TextStyle(
                          color: dark,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        )),
                    showPrice(price, discount, priceWithDiscount),
                    Text(
                      "Em até $installmentsQuantity de ${NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2).format(installmentsPrice)}",
                      style: const TextStyle(
                        color: primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    showNewSign(isNew)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

showDiscountSign(discount) {
  if (discount > 0) {
    return Chip(
      side: BorderSide.none,
      label: Text(
        "$discount% OFF",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 10,
        ),
      ),
      backgroundColor: primary,
      padding: const EdgeInsets.all(0),
      labelPadding: const EdgeInsets.symmetric(vertical: -6, horizontal: 6),
      visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
      shape: const RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );
  } else {
    return const Text(
      "",
      style: TextStyle(height: 0),
    );
  }
}

showPrice(price, discount, priceWithDiscount) {
  if (discount > 0) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
              .format(price),
          style: const TextStyle(
              color: secondary,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.lineThrough),
        ),
        Text(
          NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
              .format(priceWithDiscount),
          style: const TextStyle(
            color: dark,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  } else {
    return Text(
      NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
          .format(price),
      style: const TextStyle(
        color: dark,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

showNewSign(isNew) {
  if (isNew) {
    return const Text(
      "NOVO",
      style: TextStyle(
        color: secondary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  } else {
    return const Text("");
  }
}
