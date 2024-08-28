import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final bool showFilterButton;

  const TopAppBar({
    super.key,
    required this.child,
    required this.showFilterButton
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: appBarActions(),
      iconTheme: const IconThemeData(color: Colors.white),
      titleSpacing: 10,
      toolbarHeight: 60,
      centerTitle: true,
      title: SizedBox(
        height: 44,
        child: child
      )
    );
  }

  List<Widget> appBarActions() {
    if (showFilterButton) {
      return [
        TextButton(
            onPressed: () {},
            child: const Text("Filtros",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold
            )
          )
        )
      ];
    } else {
      return [];
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
