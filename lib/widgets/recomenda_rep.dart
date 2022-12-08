import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../pages/details.dart';
import '../data/base/republicas.dart';
import 'circle_button.dart';

class RecomendaRep extends StatelessWidget {
  final recomendaList = Republica.getRepublicas();

  RecomendaRep({Key? key}) : super(key: key);

  _handleNavigate(BuildContext context, Republica republica) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailsPage(republica: republica),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 340,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => _handleNavigate(context, recomendaList[index]),
            child: Container(
              height: 300,
              width: 230,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: branco,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          recomendaList[index].imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: CircleButton(
                      iconUrl: '/icon/mark.svg',
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: aliceBlue,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recomendaList[index].nome,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontFamily: 'BodoAmatic',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                recomendaList[index].endereco,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontFamily: 'BodoAmatic',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          ),
                          CircleButton(
                            iconUrl: '/icon/mark.svg',
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          itemCount: recomendaList.length,
        ),
      ),
    );
  }
}
