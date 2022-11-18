// Texto "Repúblicas Universitárias" alinhado ao centro
// Fonte do texto: BodoAmatic

import 'package:flutter/material.dart';
import '../colors/colors.dart';

class BannerText extends StatelessWidget {
  const BannerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          'Repúblicas',
          style: TextStyle(
            fontSize: 28,
            color: preto,
            fontFamily: 'BodoAmatic',
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Universitárias',
          style: TextStyle(
            fontSize: 28,
            color: fireBrick,
            fontFamily: 'BodoAmatic',
          ),
        ),
      ],
    );
  }
}
