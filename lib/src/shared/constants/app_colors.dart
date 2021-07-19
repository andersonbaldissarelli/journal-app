import 'dart:math';

import 'package:flutter/widgets.dart';

class AppColors {
  static const Color preto = Color(0xFF000000);
  static const Color branco = Color(0xFFFFFFFF);
  static const Color rosa = Color.fromRGBO(245, 72, 127, 1);
  static const Color verde = Color.fromRGBO(88, 179, 104, 1);
  static const Color roxo = Color.fromRGBO(52, 48, 144, 1);
  static const Color ciano = Color(0xFF44C2FD);
  static const Color amarelo = Color.fromRGBO(250, 199, 54, 1);
  static const Color roxoEscuro = Color(0xFF343090);

  static final linearGradient = LinearGradient(
    colors: [AppColors.ciano, AppColors.roxoEscuro],
    begin: Alignment(-2, -0.8),
    end: Alignment(0.7, 0),
  );

  static const blueGradient = LinearGradient(
    colors: <Color>[
      ciano,
      roxo,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.7,
    ],
    transform: GradientRotation((-34 * pi) / 180),
  );
}
