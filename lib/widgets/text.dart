import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dynamicText(
    String text, double fontSize, Color color, FontWeight fontWeight,
    {double letterSpacing = 0, double tetextScalerValue = 1}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    textScaler: TextScaler.linear(tetextScalerValue),
    style: GoogleFonts.lato(
      letterSpacing: letterSpacing,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
