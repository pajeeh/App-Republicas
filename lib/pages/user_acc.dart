// página do usuário, permite modificar informações do usuário, como nome,
// email, senha, contato, etc.

import 'package:flutter/material.dart';
import 'package:republicas/pages/home.dart';
import 'package:republicas/views/lista_reps.dart';

class UserAcc extends StatefulWidget {
  const UserAcc({super.key});

  @override
  UserAccState createState() => UserAccState();
}

class UserAccState extends State<UserAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minha Conta',
          style: TextStyle(
            fontSize: 23,
            letterSpacing: 1.75,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[],
        ),
      ),
      body: const Center(
        child: Text('Informações do usuário'),
        // adicionar campos para modificar informações do usuário
      ),
    );
  }
}
