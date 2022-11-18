// ignore_for_file: unused_import

import 'package:def_app_republicas/pages/cria_rep.dart';
import 'package:def_app_republicas/pages/new_login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Center(child: NewLoginPage()),
    );
  }
}
