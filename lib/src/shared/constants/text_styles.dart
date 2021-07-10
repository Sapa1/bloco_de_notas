import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle white48w700Montserrat = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: 'Montserrat',
    letterSpacing: -0.05,
  );

  static const TextStyle roxo24w400Roboto = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    fontSize: 24.0,
    color: AppColors.roxo,
  );

  static const TextStyle ciano16w400Roboto = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: AppColors.ciano,
  );

  static const TextStyle white72w700Montserrat = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: 'Montserrat',
    letterSpacing: -0.05,
  );

  static const TextStyle white13w300Montserrat = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: Colors.white,
    fontFamily: 'Montserrat',
    letterSpacing: 0.165,
  );

  static const TextStyle white12w300Roboto = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    fontSize: 12,
    fontStyle: FontStyle.italic,
    color: Colors.white,
  );
}
