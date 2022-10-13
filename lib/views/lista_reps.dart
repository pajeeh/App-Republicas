// Irá listar as republicas cadastradas no banco de dados
// em ordem alfabética.
// Haverá um pesquisa avançada, com filtro de avaliação,
// popularidade, localização, preço.
// Deve ser possível favoritar uma república, semelhante ao
// ícone de coração do instagram.

import 'package:flutter/material.dart';

class ListaReps extends StatelessWidget {
  const ListaReps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista de Repúblicas'),
      ),
      body: const Center(
        child: Text('Lista de Repúblicas'),
      ),
    );
  }
}
