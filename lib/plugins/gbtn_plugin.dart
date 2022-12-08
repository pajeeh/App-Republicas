import 'package:flutter/material.dart';

import '../colors/colors.dart';

class ButtonPlugin extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;
  final double thickness;

  const ButtonPlugin({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        color: transparente,
        margin: EdgeInsets.all(thickness),
        child: OutlinedButton(
          onPressed: onPressed,
          style: style,
          child: child,
        ),
      ),
    );
  }
}
