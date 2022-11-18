// exibir as imagens das republicas em uma lista horizontal, deve possuir um
// swiper para exibir as imagens da republica selecionada

// ignore_for_file: must_be_immutable, non_constant_identifier_names, unnecessary_getters_setters, sized_box_for_whitespace

import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:def_app_republicas/components/models/floating_widget.dart';
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
  int _imgpath_index;

  int get imgpath_index => _imgpath_index;

  set imgpath_index(int imgpathIndex) {
    _imgpath_index = imgpathIndex;
  }

  RepDetailScreen(this.republica, this._imgpath_index, this.imageList,
      {super.key});

  final repArray = [
    "3.500",
    "4",
    "2",
    "Sim",
    "2",
  ];

  final typeArray = [
    "Aluguel da Casa",
    "Quarto",
    "Banheiro",
    "Garagem",
    "Vagas",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final oCcy = NumberFormat("##,##,###", "en_US");
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
          children: const <Widget>[
            FloatingWidget(
              leadingIcon: Icons.arrow_back_ios,
              txt: "Voltar",
              key: Key('Voltar'),
            ),
            FloatingWidget(
              leadingIcon: Icons.favorite_border,
              txt: "Favoritar",
              key: Key('favorite'),
            ),
            FloatingWidget(
              leadingIcon: Icons.phone,
              txt: "Ligar",
              key: Key('call'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: screenWidth,
              child: Carousel(
                images: [
                  for (var i = 0; i < imageList.length; i++)
                    Image.asset(
                      imageList[i],
                      fit: BoxFit.cover,
                    ),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: aliceBlue,
                indicatorBgPadding: 5.0,
                dotBgColor: transparente,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    republica.endereco,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "R\$ ${oCcy.format(republica.aluguel)}",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Vagas: ${republica.vagas}",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Descrição",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    republica.descricao,
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Características",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      for (var i = 0; i < repArray.length; i++)
                        RepWidget(
                          type: typeArray[i],
                          number: repArray[i],
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Localização",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: screenWidth,
                    child: Image.asset(
                      "/images/map.png",
                      fit: BoxFit.cover,
                      height: 75,
                      width: screenWidth,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ! I have a problem with the carousel, I want to put the images in a list 
// ! and then use the carousel to show them