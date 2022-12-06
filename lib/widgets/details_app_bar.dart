// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/colors/colors.dart';
import '../data/base/republicas.dart';

class DetailsAppbar extends StatelessWidget {
  final Republica republica;

  const DetailsAppbar({Key? key, required this.republica}) : super(key: key);

  _handleNavigateBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          if (republica.imageUrl != null)
            Image.asset(
              republica.imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
            )
          else
            Container(
              height: 400,
              color: cinza,
            ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => _handleNavigateBack(context),
                    child: Container(
                      height: 18,
                      width: 18,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: cinza,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        '/icon/arrow.svg',
                        color: branco,
                      ),
                    ),
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      '/icon/mark.svg',
                      color: branco,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
