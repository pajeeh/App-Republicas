// Página para cadastrar usuários, deve conter os seguintes campos:
// - Nome
// - Email
// - Senha (com confirmação)
// - Confirmação de senha (verificar se é igual a senha)
// - Telefone

// Deve permitir o usuário realizar cadastro com o google.
// Irá ser armazenado no firebase.
// Deve mostrar uma mensagem de erro caso o usuário já esteja cadastrado.
// Deve mostrar uma mensagem de erro caso o usuário não preencha todos os
// campos.
// Deve exibir mensagem de confirmação de cadastro, após o usuário clicar
// no botão de cadastro.
// Botão de cadastro deve ser desabilitado, caso o usuário não preencha tudo.
// Deve ser possível ir para a página inicial, clicando no botão de Home.
// Deve ser possível ir para a página de login, clicando no botão de Login.
// Botão cadastrar irá enviar os dados para o firebase, e irá para a página
// principal, caso o cadastro seja bem sucedido.

import 'package:flutter/material.dart';
import '../services/firebase_crud.dart';

class UserCadPage extends StatefulWidget {
  const UserCadPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserCadPage();
  }
}

class _UserCadPage extends State<UserCadPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
      controller: _nameController,
      autofocus: false,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nome",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final emailField = TextFormField(
      controller: _emailController,
      autofocus: false,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final passwordField = TextFormField(
      controller: _senhaController,
      autofocus: false,
      obscureText: true,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Senha",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final confirmPasswordField = TextFormField(
      controller: _confirmPasswordController,
      autofocus: false,
      obscureText: true,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirmar senha",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final phoneField = TextFormField(
      controller: _phoneController,
      autofocus: false,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Telefone",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final cadButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await FirebaseCrud.addUser(
                nome: _nameController.text,
                email: _emailController.text,
                senha: _senhaController.text,
                telefone: _phoneController.text,
                uid: '');
            if (response.code != 200) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            }
          }
        },
        child: const Text(
          "Cadastrar",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 155,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 45),
                  nameField,
                  const SizedBox(height: 25),
                  emailField,
                  const SizedBox(height: 25),
                  passwordField,
                  const SizedBox(height: 25),
                  confirmPasswordField,
                  const SizedBox(height: 25),
                  phoneField,
                  const SizedBox(height: 35),
                  cadButton,
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
