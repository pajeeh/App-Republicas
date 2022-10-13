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
      body: const ListaReps(),
      appBar: AppBar(
        title: const Text(
          'Main Menu',
          style: TextStyle(
            fontSize: 23,
            fontFamily: 'CourierNew',
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
              decoration: const BoxDecoration(
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'INFORMAÇÕES',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'CourierNew',
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
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.email,
                      ),
                      Text(
                        'Email: ',
                        //user!.email!,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                      ),
                      Text(
                        'Telefone: ',
                        //user!.email!,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                      ),
                      Text(
                        'Localização: ',
                        //user!.email!,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text(
                'Minha Conta',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserAcc(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.add,
              ),
              title: const Text(
                'Criar República',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text(
                'Sair',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}