import 'package:flutter/material.dart';
import '../colors/colors.dart';
import 'package:up_reps/plugins/gbtn_plugin.dart';

import '../home/home.dart';

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  TextStyle basicStyle = const TextStyle(
    color: preto,
    fontFamily: 'StoryElement',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 3.0,
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
    return ButtonPlugin(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      },
      gradient: loginGradient,
      child: Text(
        'Login',
        style: basicStyle,
      ),
    );
  }
}
