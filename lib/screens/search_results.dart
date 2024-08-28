import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../utils/data_getters.dart';
import '../utils/widget_creators.dart';
import '../widgets/top_app_bar.dart';
import '../widgets/not_found_message.dart';

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
      appBar: TopAppBar(
        showFilterButton: true,
        child:

        TextField(
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
            suffixIcon: IconButton(icon: const Icon(Symbols.close, size: 24), onPressed: () { widget.searchTerm = ""; setState(() {}); },),
            suffixIconColor: const Color(0xFFADBBBF),
            contentPadding: const EdgeInsets.all(10),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),

      body: ListView(shrinkWrap: true, children: getSearchResultsList(widget.searchTerm))
    );
  }

  List<Widget> getSearchResultsList(searchTerm) {
    searchController.text = searchTerm;

    if (getSearchResultsQuantity(searchTerm) == 0) {
      return [NotFoundMessage(notFoundProductName: searchTerm)];
    } else {
      return [
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
        ...searchedProductWidgetsFrom(searchTerm)
      ];
    }
  }
}
