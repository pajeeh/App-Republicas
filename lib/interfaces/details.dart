import 'package:flutter/material.dart';

import '../data/base/republicas.dart';
import '../widgets/conteudo.dart';
import '../widgets/details_app_bar.dart';
import '../widgets/rep_info.dart';
import '../constants/colors/colors.dart';
import '../widgets/about.dart';

class DetailsPage extends StatelessWidget {
  final Republica republica;
  const DetailsPage({
    Key? key,
    required this.republica,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsAppbar(republica: republica),
            const SizedBox(height: 20),
            Conteudo(rep: republica),
            const SizedBox(height: 20),
            const RepInfo(),
            const SizedBox(height: 20),
            About(rep: republica),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      'Favoritar',
                      style: TextStyle(
                        color: branco,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'BodoAmatic',
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
