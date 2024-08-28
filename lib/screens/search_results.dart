import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../utils/product_methods.dart';

class SearchResults extends StatefulWidget {
  String searchTerm;

  SearchResults({
    super.key,
    required this.searchTerm
  });

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  TextEditingController searchController = TextEditingController();

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
              controller: searchController,
              onSubmitted: (newSearchTerm) {
                setState(() {
                  widget.searchTerm = newSearchTerm;
                });
              },
              cursorColor: dark,
              style: const TextStyle(color: dark),
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                    color: dark,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: IconButton(icon: Icon(Icons.close, size: 24), onPressed: () { widget.searchTerm = ""; setState(() {}); },),
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
    searchController.text = searchTerm;

    if (getSearchResultsQuantity(searchTerm) == 0) {
      return [
        Padding(
          padding:
              const EdgeInsets.only(top: 79, left: 69, right: 69, bottom: 20),
          child: Image.asset("images/not_found.png", width: 236, height: 180),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Text(
              "Resultado não encontrado",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, color: dark),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Center(
            child: Text(
              'Não encontramos nenhum resultado parecido com "$searchTerm".',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF4a6569)),
            ),
          ),
        ),
      ];
    } else {
      List<Widget> searchResults = [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 14, top: 24),
          child: Text(
            "${getSearchResultsQuantity(searchTerm)} resultados encontrados",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: dark,
                height: 0),
          ),
        ),
        ...getSearchResultsProducts(searchTerm)
      ];

      return searchResults;
    }
  }
}
