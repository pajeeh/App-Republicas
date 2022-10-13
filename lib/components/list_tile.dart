// exibe um list view com um ListTile, na lateral esquerda,
// um ícone de 3 barras horizontais.
// Deve conter um título e um subtítulo.
// Listar os recursos cadastrados no aplicativo.

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Minha Conta'),
              subtitle: Text('Gerenciar minha conta'),
            ),
            ListTile(
              leading: Icon(Icons.plus_one),
              title: Text('Cadastrar República'),
              subtitle: Text('Cadastrar nova república'),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Repúblicas'),
              subtitle: Text('Lista de repúblicas cadastradas'),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Avaliações'),
              subtitle: Text('Lista de avaliações cadastradas'),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Favoritos'),
              subtitle: Text('Lista de favoritos cadastrados'),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Sair'),
              subtitle: Text('Sair do aplicativo'),
            ),
          ],
        ),
      ),
    );
  }
}
