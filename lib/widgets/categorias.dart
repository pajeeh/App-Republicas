// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../colors/colors.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  final categorias = [
    'Mais bem avaliadas',
    'Mais baratas',
    'Próximas à você',
    'Mais populares',
    'Mais novas',
    'Recomendação do dia',
  ];

  int _selectedIndex = 0;

  _handleChangeCurrentIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => _handleChangeCurrentIndex(index),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: _selectedIndex == index
                      ? Theme.of(context).primaryColor
                      : transparente,
                  width: 3,
                ),
              ),
            ),
            child: Text(
              categorias[index],
              style: TextStyle(
                color: _selectedIndex == index
                    ? Theme.of(context).primaryColor
                    : cinza,
                fontFamily: 'BodoAmatic',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: categorias.length,
      ),
    );
  }
}
