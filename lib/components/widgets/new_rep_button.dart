//botão cadastrar nova republica

import 'package:def_app_republicas/pages/cria_rep.dart';
import 'package:flutter/material.dart';
import 'package:def_app_republicas/components/colors/colors.dart';
import '../models/gbutton_widget.dart';

class NewRepButton extends StatefulWidget {
  const NewRepButton({super.key});

  @override
  State<NewRepButton> createState() => _NewRepButtonState();
}

class _NewRepButtonState extends State<NewRepButton> {
  TextStyle basicStyle = const TextStyle(
    color: preto,
    fontFamily: 'StoryElement',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 3.5,
  );

  Gradient newRepGradient = LinearGradient(
    colors: [
      Colors.red[500]!.withOpacity(0.5),
      Colors.blue[500]!.withOpacity(0.5),
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
          MaterialPageRoute(builder: (context) => const CadastrarNovaRep()),
        );
      },
      gradient: newRepGradient,
      child: Text('Nova República', style: basicStyle),
    );
  }
}