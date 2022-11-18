// Posicionar imagem intern.png ao centro
// borda colorida: Azul Ciano

import 'package:flutter/material.dart';

class Intern extends StatelessWidget {
  const Intern({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Image.asset(
        'images/intern.png',
        width: size.width,
        height: size.height * 0.45,
      ),
    );
  }
}
