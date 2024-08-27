import 'package:corelab_app_challenge/services/mocked_search_data.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../utils/product_methods.dart';
import 'search_results.dart';

class RecentSearches extends StatefulWidget {
  const RecentSearches({super.key});

  @override
  State<RecentSearches> createState() => _RecentSearchesState();
}

class _RecentSearchesState extends State<RecentSearches> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          titleSpacing: 10,
          toolbarHeight: 60,
          centerTitle: true,
          title: SizedBox(
            height: 44,
            child: TextField(
              autofocus: true,
              controller: searchController,
              onSubmitted: (searchTerm) {
                searchProduct(searchTerm);
              },
              cursorColor: dark,
              style: const TextStyle(color: dark),
              decoration: const InputDecoration(
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
        body: ListView(shrinkWrap: true, children: getRecentSearchesList()));
  }

  void searchProduct(term) {
    String searchTerm = term;
    searchController.clear();

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SearchResults(
                searchTerm: searchTerm,
              )),
    );
  }

  List<Widget> getRecentClickableSearchesWidgets() {
    List<Widget> recentSearchesWidgets = getRecentSearchesWidgets();
    List<Widget> recentClickableSearchesWidgets = [];

    int recentSearchIndex = 0;

    for (var recentSearchIndex = 0;
        recentSearchIndex < recentSearchesWidgets.length;
        recentSearchIndex++) {
      Widget recentSearchWidget = recentSearchesWidgets[recentSearchIndex];

      recentClickableSearchesWidgets.add(InkWell(
        onTap: () {
          searchProduct(recentSearchTerms[recentSearchIndex]);
        },
        child: recentSearchWidget,
      ));
    }

    return recentClickableSearchesWidgets;
  }

  List<Widget> getRecentSearchesList() {
    List<Widget> recentSearches = [
      const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Pesquisas recentes",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: dark,
              height: 0),
        ),
      ),
      ...getRecentClickableSearchesWidgets()
    ];

    return recentSearches;
  }
}
