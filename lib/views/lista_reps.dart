// Irá listar as republicas cadastradas no banco de dados do firebase,
// em ordem alfabética.
// Deve permitir o usuário favoritar uma república, e também deve permitir
// que o usuário pesquise por uma república específica.
// Haverá um pesquisa avançada, com filtro de avaliação,
// popularidade, localização, preço.
// Deve ser possível favoritar uma república, semelhante ao
// ícone de coração do instagram.
// Efeito shimmer, para carregar as republicas.

import 'package:flutter/material.dart';

class ListaReps extends StatelessWidget {
  const ListaReps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Repúblicas'),
      ),
    );
  }
}
