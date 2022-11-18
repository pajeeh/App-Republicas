// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/pages/nrep_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../src/data/rep_model.dart';

class ImageWidget extends StatefulWidget {
  Republica republica;
  int imgpath_index;
  List<String> imageList;

  ImageWidget(this.republica, this.imgpath_index, this.imageList, {super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    final oCcy = NumberFormat("##,##,###", "en_US");
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RepDetailScreen(
                  widget.republica,
                  widget.imgpath_index,
                  widget.imageList,
                ),
              ),
            );
          },
          child: Container(
            height: 160,
            width: screenWidth,
            padding: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  widget.imageList[widget.imgpath_index],
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: branco,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: vermelho,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 10,
            left: 10,
          ),
          child: Row(
            children: <Widget>[
              Text(
                "R\$" "${oCcy.format(widget.republica.aluguel)}",
                style: GoogleFonts.notoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.republica.endereco,
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: cinza,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 0,
            bottom: 10,
          ),
          child: Text(
            "${widget.republica.quartos} Quartos / ${widget.republica.banheiros} Banheiros / ${widget.republica.vagas} Vagas",
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
