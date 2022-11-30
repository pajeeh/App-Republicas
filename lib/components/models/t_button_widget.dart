// Modelo de text field

import 'package:flutter/material.dart';

class TbWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const TbWidget({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
