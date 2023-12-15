import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dynamicText(
    String text, double fontSize, Color color, FontWeight fontWeight) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.lato(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
