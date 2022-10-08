// Irá listar as republicas cadastradas no banco de dados
// em ordem alfabética.

import 'package:flutter/material.dart';

class ListaReps extends StatelessWidget {
  const ListaReps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Repúblicas'),
      ),
      body: const Center(
        child: Text('Lista de Repúblicas'),
      ),
    );
  }
}
