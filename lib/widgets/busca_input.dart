// * Widget para pesquisar

import 'package:flutter/material.dart';
import '../constants/colors/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuscaInput extends StatelessWidget {
  const BuscaInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: branco,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: preto.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            '/icon/search.svg',
            color: cinza,
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Pesquisar',
                hintStyle: TextStyle(
                  color: cinza,
                  fontFamily: 'BodoAmatic',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
