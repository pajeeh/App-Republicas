// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import

import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/components/models/filter_widget.dart';
import 'package:def_app_republicas/components/models/floating_widget.dart';
import 'package:def_app_republicas/components/models/image_widget.dart';
import 'package:def_app_republicas/components/models/menu_widget.dart';
import 'package:def_app_republicas/components/widgets/side_menu.dart';
import 'package:def_app_republicas/packages/reps_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class NewHomePageScreen extends StatelessWidget {
  final filterArray = [
    "<R\$1.200,00",
    "Disponível",
    "3-4 camas",
    "Cozinha",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: branco,
      ),
    );
    return Scaffold(
      backgroundColor: branco,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingWidget(
        leadingIcon: Icons.explore,
        txt: "Abrir Mapa",
        key: Key('mapView'),        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuWidget(
                    iconImg: Icons.menu,
                    iconColor: preto,
                    conBackColor: branco,
                    onbtnTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Limeira",
                style: GoogleFonts.notoSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: preto,
                ),
              ),
              const Divider(
                color: preto,
                thickness: .2,
              ),
              Container(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: filterArray.length,
                  itemBuilder: (context, index) {
                    return FilterWidget(
                      filterTxt: filterArray[index],
                      key: Key(filterArray[index]),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  Republicas.repLista.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ImageWidget(
                        Republicas.repLista[index],
                        index,
                        Republicas.imageList,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
