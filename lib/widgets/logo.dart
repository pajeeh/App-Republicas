// Irá posicionar o logo no centro da tela
import 'package:flutter/material.dart';
import '../colors/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuildLogo();
  }
}

class BuildLogo extends StatelessWidget {
  const BuildLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Text(
          'Up',
          style: TextStyle(
            color: darkSlateGray,
            fontSize: 36,
            fontWeight: FontWeight.w500,
            fontFamily: 'Pulang',
          ),
        ),
        Image(
          image: AssetImage('icon/uprepsLogo.png'),
        ),
        Text(
          'Reps',
          style: TextStyle(
            color: darkSlateGray,
            fontSize: 36,
            fontWeight: FontWeight.w500,
            fontFamily: 'Pulang',
          ),
        ),
      ],
    );
  }
}
