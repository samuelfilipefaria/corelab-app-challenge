import 'package:flutter/material.dart';
import 'styles/colors.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:corelab_app_challenge/screens/home.dart';
import 'package:corelab_app_challenge/screens/categories.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
    5: GlobalKey<NavigatorState>()
  };

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Categories(),
    Home(),
    Home(),
    Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: buildNavigator(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Symbols.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.view_cozy_rounded),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.add_circle_rounded),
              label: 'Anunciar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.favorite_rounded),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.person_rounded),
              label: 'Conta',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primary,
          selectedIconTheme: const IconThemeData(fill: 1),
          unselectedItemColor: secondary,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ));
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}
