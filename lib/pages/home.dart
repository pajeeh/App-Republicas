// Página inicial, deve ser a primeira a ser carregada
// e deve ser a única a ser carregada quando o usuário
// clicar no botão de home do aplicativo.
// A pagina deve exibir uma lista em forma de grade, de todos os
// recursos cadastrados no aplicativo.

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 3,
          children: const <Widget>[
            Card(
              child: Center(
                child: Text('Repúblicas'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Avaliações'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Favoritos'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
