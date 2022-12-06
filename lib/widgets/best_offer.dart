//* recomendações de república com melhor preço

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import '../constants/colors/colors.dart';
import '../data/base/republicas.dart';

class BestOffer extends StatelessWidget {
  final offerList = Republica.getBestOffer();

  BestOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Melhores ofertas',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BodoAmatic',
                      color: preto,
                    ),
              ),
              Text(
                'Ver tudo',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BodoAmatic',
                      color: preto,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...offerList
              .map(
                (offer) => Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: branco,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(offer.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                offer.nome,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BodoAmatic',
                                      color: preto,
                                    ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                offer.endereco,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BodoAmatic',
                                      color: preto,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        right: 0,
                        child: FavoriteButton(
                          isFavorite: false,
                          valueChanged: (isFavorite) async {
                            assert(isFavorite != null);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
