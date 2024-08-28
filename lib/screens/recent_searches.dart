import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'package:corelab_app_challenge/services/mocked_search_data.dart';
import '../utils/widget_creators.dart';
import 'search_results.dart';
import '../widgets/top_app_bar.dart';

class RecentSearches extends StatefulWidget {
  const RecentSearches({super.key});

  @override
  State<RecentSearches> createState() => _RecentSearchesState();
}

class _RecentSearchesState extends State<RecentSearches> {
  final TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        showFilterButton: false,
        child:

        TextField(
          autofocus: true,
          controller: searchController,
          onSubmitted: (searchTerm) { searchProduct(searchTerm); },
          cursorColor: dark,
          style: const TextStyle(color: dark),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),

      body: ListView(shrinkWrap: true, children: getRecentSearchesList())
    );
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
            height: 0
          ),
        ),
      ),
      ...recentClickableSearchesWidgetsFrom(recentSearchTerms, searchProduct)
    ];

    return recentSearches;
  }

  void searchProduct(searchTerm) {
    setState(() {
      searchController.clear();
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResults(
          searchTerm: searchTerm,
        )
      ),
    );
  }
}
