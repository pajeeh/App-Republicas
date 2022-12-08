import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../plugins/gbtn_plugin.dart';
import '../pages/cad_user_page.dart';

class CadButton extends StatefulWidget {
  const CadButton({Key? key}) : super(key: key);

  @override
  State<CadButton> createState() => _CadButtonState();
}

class _CadButtonState extends State<CadButton> {
  TextStyle defaultStyle = const TextStyle(
    color: forestGreen,
    fontSize: 20,
    fontFamily: 'StoryElement',
    fontWeight: FontWeight.w500,
    letterSpacing: 2.5,
  );

  @override
  Widget build(BuildContext context) {
    return ButtonPlugin(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CadPage()),
        );
      },
      child: Text(
        'Cadastre-se',
        style: defaultStyle,
      ),
    );
  }
}
