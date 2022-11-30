// botão Login

import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../models/gbutton_widget.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  TextStyle basicStyle = const TextStyle(
    color: preto,
    fontFamily: 'StoryElement',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 3.5,
  );

  Gradient loginGradient = LinearGradient(
    colors: [
      Colors.teal[500]!.withOpacity(0.5),
      Colors.green[500]!.withOpacity(0.5),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewHomePageScreen()),
        );
      },
      gradient: loginGradient,
      child: Text('Login', style: basicStyle),
    );
  }
}
