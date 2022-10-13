// Página inicial, deve ser a primeira a ser carregada
// e deve ser a única a ser carregada quando o usuário
// clicar no botão de home do aplicativo.
// A pagina deve exibir uma lista, de todas as
// republicas cadastrados no aplicativo.
// Haverá um list view com um drawer, na lateral esquerda,
// um ícone de 3 barras horizontais.

import 'package:flutter/material.dart';
import 'package:republicas/pages/user_acc.dart';
import 'package:republicas/views/lista_reps.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ListaReps(),
      appBar: AppBar(
        title: const Text(
          'Main Menu',
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
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'INFORMAÇÕES',
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1.75,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.person,
                      ),
                      Text(
                        'Nome: ',
                        //user!.email!,
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1.75,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Minha Conta',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.75,
                    fontWeight: FontWeight.w600,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserAcc(),
                  ),
                );
              },
            ),
            const Divider(
              thickness: 1,
              height: 50,
            ),
            ListTile(
              title: const Text('Logout',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.75,
                    fontWeight: FontWeight.w600,
                  )),
              onTap: () {
                //FirebaseAuth.instance.signOut();
              },
            ),
            const Divider(
              height: 200,
            ),
            const SizedBox(
              height: 1,
            ),
            ListTile(
              title: const Text('Sobre os Devs',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.75,
                    fontWeight: FontWeight.w600,
                  )),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Sobre App Repúblicas',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.75,
                    fontWeight: FontWeight.w600,
                  )),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
