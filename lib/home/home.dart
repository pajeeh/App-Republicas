import 'package:flutter/material.dart';
import '../widgets/busca_input.dart';
import '../widgets/categorias.dart';
import '../widgets/recomenda_rep.dart';
import '../widgets/best_offer.dart';
import '../widgets/cst_bt_nav_bar.dart';
import '../widgets/new_app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CstBtNavBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const NewAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BuscaInput(),
            const Categorias(),
            RecomendaRep(),
            BestOffer(),
          ],
        ),
      ),
    );
  }
}
