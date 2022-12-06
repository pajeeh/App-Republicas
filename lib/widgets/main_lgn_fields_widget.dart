import 'package:flutter/material.dart';
import 'package:up_reps/constants/colors/colors.dart';

class MainLoginFields extends StatelessWidget{
  MainLoginFields({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Container(
      color: transparente,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: ('Digite seu email'),
                labelText: 'Email',
                labelStyle: TextStyle(color: tomato),
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: ('Digite sua senha'),
                labelText: 'Senha',
                labelStyle: TextStyle(color: tomato),
                border: OutlineInputBorder(),
              ),
            ),
            ),
          ],
        ),
      ),
    );              
  }
}