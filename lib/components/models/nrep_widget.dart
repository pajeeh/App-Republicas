import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepWidget extends StatelessWidget {
  final String number;
  final String type;
  const RepWidget({
    super.key,
    required this.number,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              18.0,
            ),
            color: branco,
            border: Border.all(
              color: cinza,
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  number,
                  style: GoogleFonts.notoSans(
                    fontSize: 18,
                    color: preto,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                type,
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: preto,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
