import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CstBtNavBar extends StatelessWidget {
  final bottomBarItems = [
    'home',
    'search',
    'liked',
    'contato',
    'user',
  ];

  CstBtNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: branco,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: cinza.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: bottomBarItems
            .map(
              (item) => IconButton(
                onPressed: () {},
                icon: Image.asset(
                  '/images/$item.png',
                  width: 35,
                  height: 35,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
