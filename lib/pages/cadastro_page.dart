// Página para cadastrar um novo usuário
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirmar Senha',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Cadastrar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}