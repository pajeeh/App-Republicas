import 'package:flutter/material.dart';
import 'package:up_reps/plugins/gbtn_plugin.dart';

import '../constants/colors/colors.dart';
import '../pages/premium_ad_page.dart';

class AnuncioPremiumButton extends StatefulWidget {
  const AnuncioPremiumButton({super.key});

  @override
  State<AnuncioPremiumButton> createState() => _AnuncioPremiumButtonState();
}

class _AnuncioPremiumButtonState extends State<AnuncioPremiumButton> {
  TextStyle basicStyle = const TextStyle(
    color: preto,
    fontFamily: 'StoryElement',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 3.5,
  );

  Gradient premiumGradient = LinearGradient(
    colors: [
      Colors.teal[500]!.withOpacity(0.5),
      Colors.green[500]!.withOpacity(0.5),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context){
    return ButtonPlugin(onPressed: () {
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const PremiumAdPage()),
      );
    },
    gradient: premiumGradient,
    child: Text('Assinatura Premium', style: basicStyle),
    );
  }
}
