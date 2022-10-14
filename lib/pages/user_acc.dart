// página do usuário, permite modificar informações do usuário, como nome,
// email, senha, contato, etc. Possui um botão para salvar as alterações.
// Possui um drawer para navegação entre as páginas.

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../services/firebase_crud.dart';

class UserAccPage extends StatefulWidget {
  const UserAccPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _UserAccPage();
  }
}

class _UserAccPage extends State<UserAccPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _docId = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final DocIdField = TextField(
      controller: _docId,
      readOnly: true,
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Nome",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

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

    final saveButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await FirebaseCrud.updateUser(
              nome: _nameController.text,
              email: _emailController.text,
              senha: _senhaController.text,
              telefone: _phoneController.text,
              docId: _docId.text,
            );
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
            //Navigator.pop(context);
          }
        },
        child: const Text("Salvar",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Minha conta"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: const Text('Minha conta'),
              onTap: () {
                Navigator.pushNamed(context, '/user_acc');
              },
            ),
            ListTile(
              title: const Text('Meus favoritos'),
              onTap: () {
                Navigator.pushNamed(context, '/my_favs');
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 45.0),
                  DocIdField,
                  const SizedBox(height: 25.0),
                  nameField,
                  const SizedBox(height: 25.0),
                  emailField,
                  const SizedBox(height: 25.0),
                  passwordField,
                  const SizedBox(height: 25.0),
                  confirmPasswordField,
                  const SizedBox(height: 25.0),
                  phoneField,
                  const SizedBox(height: 35.0),
                  saveButton,
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
