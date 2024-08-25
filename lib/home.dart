import 'package:flutter/material.dart';
import 'colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        toolbarHeight: 60,
        centerTitle: true,
        title: const SizedBox(
          height: 44,
          child: TextField(
            cursorColor: Color(0xFF002429),
            style: TextStyle(color: Color(0xFF002429)),
            decoration: InputDecoration(
              labelText: "Buscar",
              labelStyle: TextStyle(color: Color(0xFF94A6A9)),
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
      body: const Center(
        child: Text("Home"),
      ),
    );
  }
}
