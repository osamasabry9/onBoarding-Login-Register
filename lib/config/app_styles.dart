// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle paragraph1 = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
  );

  static TextStyle hdr = GoogleFonts.italiana(
    textStyle: const TextStyle(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.w800,
    ),
  );

  static TextStyle headline = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontSize: 21,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  );

  static TextStyle description = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    ),
  );

  static TextStyle input_label = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontSize: 14,
      color: Colors.black54,
      fontWeight: FontWeight.w300,
    ),
  );
  static TextStyle input_labe2 = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontSize: 14,
      color: Colors.grey,
      fontWeight: FontWeight.w300,
    ),
  );
}
