import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class TextStyles {
  static const TextStyle white48w700Montserrat = TextStyle(
    fontSize: 48.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: -0.05,
  );

  static const TextStyle roxo24w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24.0,
    color: AppColors.roxo,
  );

  static const TextStyle ciano16w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: AppColors.ciano,
  );

  static const TextStyle white72w700Montserrat = TextStyle(
    fontSize: 72.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: -0.05,
  );

  static const TextStyle white13w300Montserrat = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w300,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: 0.165,
  );

  static const TextStyle white12w200Roboto = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    fontStyle: FontStyle.italic,
    fontFamily: "Roboto",
  );

  static final title = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.branco,
  );
  static final text = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.preto.withOpacity(0.54),
  );
  static final data = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: AppColors.preto.withOpacity(0.54),
    fontStyle: FontStyle.italic,
  );
}
