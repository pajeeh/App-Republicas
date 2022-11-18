// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../colors/colors.dart';

class FloatingWidget extends StatelessWidget {
  final IconData leadingIcon;
  final String txt;
  const FloatingWidget({
    required Key key,
    required this.leadingIcon,
    required this.txt,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 150,
      child: FloatingActionButton(
        elevation: 5,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Em breve'),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(75.0),
        ),
        heroTag: null,
        child: Ink(
          decoration: BoxDecoration(
            color: azulDisrupto,
            borderRadius: BorderRadius.circular(75.0),
          ),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 300.0,
              minHeight: 50.0,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  leadingIcon,
                  color: branco,
                ),
                SizedBox(
                  width: 80,
                  child: Text(
                    txt,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: branco,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
