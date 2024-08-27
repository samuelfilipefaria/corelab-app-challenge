import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../utils/product_methods.dart';

class SearchResult extends StatefulWidget {
  String searchTerm;

  SearchResult({
    super.key,
    required this.searchTerm
  });

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text("Filtros",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)))
          ],
          iconTheme: const IconThemeData(color: Colors.white),
          titleSpacing: 10,
          toolbarHeight: 60,
          centerTitle: true,
          title: SizedBox(
            height: 44,
            child: TextField(
              onSubmitted: (newSearchTerm) {
                setState(() {
                  widget.searchTerm = newSearchTerm;
                });
              },
              cursorColor: dark,
              style: const TextStyle(color: dark),
              decoration: InputDecoration(
                labelText: widget.searchTerm,
                labelStyle: const TextStyle(
                    color: dark,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: Icon(Icons.close, size: 24),
                suffixIconColor: Color(0xFFADBBBF),
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
        body: ListView(
          shrinkWrap: true,
          children: getSearchResultsList(widget.searchTerm),
        ));
  }
}

List<Map> getSearchResults(searchTerm) {
  return getPoductsByTerm(searchTerm);
}

List<Widget> getSearchResultsProducts(searchTerm) {
  return getProductsWidgets(getSearchResults(searchTerm));
}

int getSearchResultsQuantity(searchTerm) {
  return getSearchResults(searchTerm).length;
}

List<Widget> getSearchResultsList(searchTerm) {
  List<Widget> searchResults = [
     Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 14, top: 24),
      child: Text(
        "${getSearchResultsQuantity(searchTerm)} resultados encontrados",
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: dark, height: 0),
      ),
    ),
    ...getSearchResultsProducts(searchTerm)
  ];

  return searchResults;
}
