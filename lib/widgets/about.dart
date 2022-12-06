// * Informações sobre a republica

import 'package:flutter/material.dart';
import '../data/base/republicas.dart';

class About extends StatelessWidget {
  final Republica rep;

  const About({
    Key? key,
    required this.rep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descrição',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'BodoAmatic',
                ),
          ),
          const SizedBox(height: 10),
          Text(
            rep.descricao,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
          ),
        ],
      ),
    );
  }
}
