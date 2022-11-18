// Exibe uma tela com os benefícios de realizar a assinatura premium
// e um botão para realizar o pagamento, que deve levar para a página de
// pagamento.

/* ! Benefícios:
* 1. Preferência na busca
* 2. Destaque no feed
* 3. Acesso a mais filtros
* 4. Anúncio mais completo
* 5. SAC 24h
* 6. Cadastrar mais de uma república
*/

// Path: lib/pages/premium_ad_page.dart

import 'package:flutter/material.dart';

class PremiumAdPage extends StatefulWidget {
  const PremiumAdPage({super.key});

  @override
  State<PremiumAdPage> createState() => _PremiumAdPageState();
}

class _PremiumAdPageState extends State<PremiumAdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium'),
      ),
      body: const Center(
        child: Text('Premium'),
      ),
    );
  }
}
