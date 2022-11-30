import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/pages/premium_ad_page.dart';
import 'package:flutter/material.dart';
import '../models/gbutton_widget.dart';

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
  Widget build(BuildContext context) {
    return ButtonWidget(
      onPressed: () {
        // Leva o usuário para a página dos benefícios do anúncio premium
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PremiumAdPage()),
        );
      },
      gradient: premiumGradient,
      child: Text('Assinatura Premium', style: basicStyle),
    );
  }
}
