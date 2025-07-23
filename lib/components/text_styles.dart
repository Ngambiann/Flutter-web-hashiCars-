import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  TextStyle get titlelg;
  TextStyle get titlemd;
  TextStyle get titlesm;
  TextStyle get headlinelg;
  TextStyle get bodymd;
  TextStyle get labelsm;
  TextStyle get labelmd;
}

class SmallTextStyles extends TextStyles {

  @override
  TextStyle get titlelg => GoogleFonts.roboto(
    color: const Color.fromARGB(243, 132, 81, 41),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get titlemd => TextStyle(fontWeight: FontWeight.w700, fontSize: 15);

  @override
  TextStyle get titlesm => TextStyle(fontWeight: FontWeight.w600, fontSize: 12);

  @override
  TextStyle get headlinelg =>
      TextStyle(fontSize: 17, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodymd => TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

  @override
  TextStyle get labelsm => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );

  @override
  TextStyle get labelmd => TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Colors.black);
}

class LargeTextStyles extends TextStyles {

  @override
  TextStyle get titlelg => GoogleFonts.roboto(
    color: const Color.fromARGB(243, 132, 81, 41),
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get titlemd => TextStyle(fontWeight: FontWeight.w700, fontSize: 18);

  @override
  TextStyle get titlesm => TextStyle(fontWeight: FontWeight.w600, fontSize: 15);

  @override
  TextStyle get headlinelg =>
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodymd => TextStyle(fontSize: 15, fontWeight: FontWeight.w500);

  @override
  TextStyle get labelsm => TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );

  @override
  TextStyle get labelmd => TextStyle(fontWeight: FontWeight.w500, fontSize: 15,color: Colors.black);
}
