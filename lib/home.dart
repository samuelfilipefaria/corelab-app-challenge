import 'package:flutter/material.dart';
import 'colors.dart';
import 'product_announcement.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          toolbarHeight: 60,
          centerTitle: true,
          title: const SizedBox(
            height: 44,
            child: TextField(
              cursorColor: dark,
              style: TextStyle(color: dark),
              decoration: InputDecoration(
                labelText: "Buscar",
                labelStyle: TextStyle(color: Color(0xFF94A6A9)),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: Icon(Icons.search, size: 24),
                suffixIconColor: primary,
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        body: SizedBox(
          child: ListView(
            shrinkWrap: true,
            children: [
              const ListTile(
                  title: Text(
                "Últimos anúncios",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: dark,
                    height: 0),
              )),
              const ListTile(
                title: Text(
                  "Hoje",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: secondary,
                      height: 0),
                ),
              ),
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    ProductAnnouncement(
                      photo:
                          "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_square.jpg?wp=1&w=136&h=136",
                      name: "Condicionador Ácido Fosfórico 37%",
                      brand: "AllPrime",
                      price: 300,
                      priceWithDiscount: 290.90,
                      installmentsQuantity: 12,
                      installmentsPrice: 249.90,
                      discount: 10,
                      isNew: true,
                    ),
                    ProductAnnouncement(
                      photo:
                          "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_square.jpg?wp=1&w=136&h=136",
                      name: "Condicionador Ácido Fosfórico 37%",
                      brand: "AllPrime",
                      price: 29.90,
                      installmentsQuantity: 12,
                      installmentsPrice: 249.00,
                      isNew: true,
                    )
                  ],
                ),
              ),
              const ListTile(
                title: Text(
                  "Ontem",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: secondary,
                      height: 0),
                ),
              ),
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    ProductAnnouncement(
                      photo:
                          "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_square.jpg?wp=1&w=136&h=136",
                      name: "Condicionador Ácido Fosfórico 37%",
                      brand: "AllPrime",
                      price: 300,
                      priceWithDiscount: 290.90,
                      installmentsQuantity: 12,
                      installmentsPrice: 249.90,
                      discount: 10,
                      isNew: true,
                    ),
                    ProductAnnouncement(
                      photo:
                          "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_square.jpg?wp=1&w=136&h=136",
                      name: "Condicionador Ácido Fosfórico 37%",
                      brand: "AllPrime",
                      price: 29.90,
                      installmentsQuantity: 12,
                      installmentsPrice: 249.00,
                    ),
                    ProductAnnouncement(
                      photo:
                          "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_square.jpg?wp=1&w=136&h=136",
                      name: "Condicionador Ácido Fosfórico 37%",
                      brand: "AllPrime",
                      price: 29.90,
                      installmentsQuantity: 12,
                      installmentsPrice: 249.00,
                      isNew: true,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
