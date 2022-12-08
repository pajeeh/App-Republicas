import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../data/base/republicas.dart';

class Conteudo extends StatelessWidget {
  final Republica rep;

  const Conteudo({Key? key, required this.rep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rep.nome,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BodoAmatic',
                  color: preto,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            rep.endereco,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BodoAmatic',
                  color: preto,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            rep.descricao,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BodoAmatic',
                  color: preto,
                ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Preço: ",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BodoAmatic',
                        color: preto,
                      ),
                ),
                TextSpan(
                  text: rep.aluguel,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BodoAmatic',
                        color: preto,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
