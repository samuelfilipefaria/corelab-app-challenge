import 'package:flutter/material.dart';
import '../styles/colors.dart';

class NotFoundMessage extends StatelessWidget {
  final String notFoundProductName;

  const NotFoundMessage({
    super.key,
    required this.notFoundProductName
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 79, left: 69, right: 69, bottom: 20),
            child: Image.asset("images/not_found.png", width: 236, height: 180),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Text(
              "Resultado não encontrado",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: dark),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Text(
              'Não encontramos nenhum resultado parecido com "$notFoundProductName".',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0XFF4a6569)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
