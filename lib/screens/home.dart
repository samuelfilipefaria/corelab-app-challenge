import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../utils/data_getters.dart';
import '../utils/widget_creators.dart';
import 'recent_searches.dart';
import '../widgets/top_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        showFilterButton: false,
        child:

        TextField(
          canRequestFocus: false,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RecentSearches()),
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
            suffixIcon: Icon(Symbols.search, size: 24),
            suffixIconColor: primary,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        )
      ),

      body: ListView(shrinkWrap: true, children: getLastAnnouncementsList())
    );
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
            height: 0
          ),
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
            height: 0
          ),
        ),
      ),

      ...productWidgetsFrom(getTodaysProducts()),

      const Padding(
        padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
        child: Text(
          "Ontem",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: secondary,
            height: 0
          ),
        ),
      ),

      ...productWidgetsFrom(getYesterdaysProducts()),
    ];

    return lastAnnouncementsList;
  }
}
