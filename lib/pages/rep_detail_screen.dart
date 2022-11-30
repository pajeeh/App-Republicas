// detalhes da rep
/*
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:def_app_republicas/components/models/floating_widget.dart';
import 'package:def_app_republicas/components/models/menu_widget.dart';
import 'package:def_app_republicas/components/models/nrep_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../components/colors/colors.dart';
import '../src/data/rep_model.dart';

class RepDetailScreen extends StatelessWidget {
  Republica republica;
  List<String> imageList;
  int imgpath_index;

  RepDetailScreen(
    this.republica,
    this.imgpath_index,
    this.imageList,
  );
  final repArray = [
    "1.416",
    "4",
    "2",
    "Sim",
    "2",
  ];
  final typeArray = [
    "Aluguel",
    "Quartos",
    "Banheiros",
    "Garagem",
    "Vagas",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final oCcy = new NumberFormat("##,##,###", "en_US");
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: branco,
      ),
    );

    return Scaffold(
      backgroundColor: branco,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const FloatingWidget(
              leadingIcon: Icons.mail,
              txt: "Mensagem",
              key: Key("Mensagem"),
            ),
            const FloatingWidget(
              leadingIcon: Icons.phone,
              txt: "Ligar",
              key: Key("Ligar"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 25,
            bottom: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 10,
                    ),
                    child: SizedBox(
                      height: 200,
                      width: screenWidth,
                      child: Carousel(
                        images: [
                          ExactAssetImage(imageList[imgpath_index]),
                          ExactAssetImage(imageList[0]),
                          ExactAssetImage(imageList[1]),
                          ExactAssetImage(imageList[2]),
                        ],
                        showIndicator: true,
                        borderRadius: false,
                        moveIndicatorFromBottom: 180,
                        noRadiusForIndicator: true,
                        overlayShadow: false,
                        overlayShadowColors: branco,
                        overlayShadowSize: 0.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MenuWidget(
                            iconImg: Icons.arrow_back_ios,
                            iconColor: branco,
                            conBackColor: transparente,
                            onbtnTap: () {
                              Navigator.of(context).pop(false);
                            }),
                        MenuWidget(
                          iconImg: Icons.favorite_border,
                          iconColor: branco,
                          conBackColor: transparente,
                          onbtnTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$' + "${oCcy.format(republica.aluguel)}",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: preto,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            republica.endereco,
                            style: const TextStyle(
                              fontSize: 13,
                              color: cinza,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: cinza,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "20 horas atrás",
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: preto,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: repArray.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: RepWidget(
                      type: typeArray[index],
                      number: repArray[index].toString(),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    republica.descricao,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.notoSans(
                      fontSize: 15,
                      color: cinza,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/