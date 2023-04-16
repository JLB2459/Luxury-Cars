import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FontStyles {
  static final TextTheme textTheme = GoogleFonts.lexendTextTheme();

  static final brand = GoogleFonts.lexend(
    fontSize: 21.5,
    fontWeight: FontWeight.bold,
    color: const Color(0XFF141C27),
    fontStyle: FontStyle.normal,
  );

  static final title = GoogleFonts.lexend(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: const Color(0XFFF5F8FE),
    fontStyle: FontStyle.normal,
  );
  static final blacktitle = GoogleFonts.lexend(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: const Color(0XFF141C27),
    fontStyle: FontStyle.normal,
  );

  static final subtitle = GoogleFonts.lexend(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: const Color(0XFFF5F8FE),
    fontStyle: FontStyle.normal,
  );
  static final greySubtitle = GoogleFonts.lexend(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
    fontStyle: FontStyle.normal,
  );

  static final normal = GoogleFonts.lexend(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: const Color(0XFFF5F8FE),
    fontStyle: FontStyle.normal,
  );
}
