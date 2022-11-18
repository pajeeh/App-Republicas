// botão de cadastro
// ! implementar routes para o botão de cadastro...

import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/components/models/t_button_widget.dart';
import 'package:def_app_republicas/pages/cadastro_page.dart';
import 'package:flutter/material.dart';

class CadastroButton extends StatefulWidget {
  const CadastroButton({super.key});

  @override
  State<CadastroButton> createState() => _CadastroButtonState();
}

class _CadastroButtonState extends State<CadastroButton> {
  TextStyle defaultStyle = const TextStyle(
    color: forestGreen,
    fontSize: 20,
    fontFamily: 'StoryElement',
    fontWeight: FontWeight.w500,
    letterSpacing: 3.0,
  );

  @override
  Widget build(BuildContext context) {
    return TbWidget(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CadastroPage()),
        );
      },
      child: Text(
        'Cadastre-se',
        style: defaultStyle,
      ),
    );
  }
}
