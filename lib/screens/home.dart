import 'package:corelab_app_challenge/services/mocked_search_data.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../utils/product_methods.dart';
import 'search_results.dart';
import 'package:material_symbols_icons/symbols.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showRecentSearches = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          toolbarHeight: 60,
          centerTitle: true,
          title: SizedBox(
            height: 44,
            child: TextField(
              controller: searchController,
              onTap: () {
                setState(() {
                  showRecentSearches = true;
                });
              },
              onSubmitted: (searchTerm) {
                searchController.clear();
                setState(() {
                  showRecentSearches = false;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchResults(
                            searchTerm: searchTerm,
                          )),
                );
              },
              cursorColor: dark,
              style: const TextStyle(color: dark),
              decoration: const InputDecoration(
                labelText: "Buscar",
                labelStyle: TextStyle(
                    color: Color(0xFF94A6A9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
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
        body: ListView(
            shrinkWrap: true, children: getHomePageList(showRecentSearches)));
  }

  List<Widget> getRecentClickableSearchesWidgets() {
    List<Widget> recentSearchesWidgets = getRecentSearchesWidgets();
    List<Widget> recentClickableSearchesWidgets = [];

    int recentSearchIndex = 0;

    for (var recentSearchIndex = 0; recentSearchIndex < recentSearchesWidgets.length; recentSearchIndex++) {
      Widget recentSearchWidget = recentSearchesWidgets[recentSearchIndex];

      recentClickableSearchesWidgets.add(InkWell(
        onTap: () {
          searchController.clear();
          setState(() {
            showRecentSearches = false;
          });

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SearchResults(
                      searchTerm: recentSearchTerms[recentSearchIndex],
                    )),
          );
        },
        child: recentSearchWidget,
      ));
    }

    return recentClickableSearchesWidgets;
  }

  List<Widget> getHomePageList(showRecentSearches) {
    return showRecentSearches
        ? getRecentSearchesList()
        : getLastAnnouncementsList();
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

  List<Widget> getLastAnnouncementsList() {
    List<Widget> lastAnnouncementsList = [
      const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Últimos anúncios",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: dark,
              height: 0),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20, bottom: 10),
        child: Text(
          "Hoje",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: secondary,
              height: 0),
        ),
      ),
      ...getProductsWidgets(getTodaysProducts()),
      const Padding(
        padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
        child: Text(
          "Ontem",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: secondary,
              height: 0),
        ),
      ),
      ...getProductsWidgets(getYesterdaysProducts()),
    ];

    return lastAnnouncementsList;
  }
}
