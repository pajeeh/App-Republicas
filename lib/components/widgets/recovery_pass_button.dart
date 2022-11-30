// botão que se modificará de acordo com o contexto
// que o usuário estiver.
// botão esqueci a senha
// ! implementar routes para o botão esqueci a senha...

import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/components/models/t_button_widget.dart';
import 'package:flutter/material.dart';

class RecoveryPassButton extends StatefulWidget {
  const RecoveryPassButton({super.key});

  @override
  State<RecoveryPassButton> createState() => _RecoveryPassButtonState();
}

class _RecoveryPassButtonState extends State<RecoveryPassButton> {
  TextStyle defaultStyle = const TextStyle(
    color: steelBlue,
    fontSize: 20,
    fontFamily: 'StoryElement',
    fontWeight: FontWeight.w600,
    letterSpacing: 3.5,
  );

  @override
  Widget build(BuildContext context) {
    return TbWidget(
      onPressed: () {},
      child: Text(
        'Esqueci a senha',
        style: defaultStyle,
      ),
    );
  }
}
