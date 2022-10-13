import 'package:flutter/material.dart';
import 'package:republicas/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Repúblicas',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Scaffold(
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}
