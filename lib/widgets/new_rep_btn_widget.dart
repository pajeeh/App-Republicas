import 'package:flutter/material.dart';

import '../constants/colors/colors.dart';
import '../pages/cad_rep_page.dart';
import '../plugins/gbtn_plugin.dart';

class NRepBtnWidget extends StatefulWidget {
  const NRepBtnWidget({super.key});

  @override
  State<NRepBtnWidget> createState() => _NRepBtnWidgetState();
}

class _NRepBtnWidgetState extends State<NRepBtnWidget> {
  TextStyle basicStyle = const TextStyle(
    color: preto,
    fontFamily: 'StoryElement',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 3.5,
  );

  Gradient premiumGradient = LinearGradient(
    colors: [
      Colors.red[500]!.withOpacity(0.5),
      Colors.blue[500]!.withOpacity(0.5),
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
          MaterialPageRoute(builder: (context) => const CriaRepScreen()),
        );
      },
      gradient: premiumGradient,
      child: Text(
        'Cadastrar República',
        style: basicStyle,
      ),
    );
  }
}
