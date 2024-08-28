import 'package:flutter/material.dart';
import 'package:corelab_app_challenge/styles/colors.dart';
import 'package:material_symbols_icons/symbols.dart';

class RecentSearch extends StatelessWidget {
  final String recentSearchTerm;

  const RecentSearch({super.key, required this.recentSearchTerm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(Symbols.history, color: secondary),
          ),
          Text(
            recentSearchTerm,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: secondary
            ),
          )
        ],
      ),
    );
  }
}
