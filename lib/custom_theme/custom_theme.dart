import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

class CustomTheme {
  static ColorExtension colorExtension = const ColorExtension(
    tinyColor: Color(0xFF4D4C4C),
    textColor: Color(0xFF313130),
    primaryColor: Color(0xFF0066B1),
    configColor: Color(0xFF0DDEAE),
    secondaryColor: Color(0xFFDAE7E8),
    pageBackgroudColor: Color(0xFFEFEFEF),
    lightBackgroud: Color(0xFFFAF9F9),
    bottomNav: Color(0xFFE4ECED),
  );

  static ThemeData customTheme = ThemeData(
    sliderTheme: SliderThemeData(
      activeTrackColor: colorExtension.primaryColor,
      inactiveTrackColor: Colors.black.withOpacity(0.07),
      thumbColor: Colors.white,
      thumbShape: const RoundSliderThumbShape(
        enabledThumbRadius: 10.0,
        elevation: 3,
      ),
      overlayShape: SliderComponentShape.noOverlay,
      trackHeight: 3.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorExtension.bottomNav,
    ),
    scaffoldBackgroundColor: colorExtension.pageBackgroudColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(left: 10),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorExtension.tinyColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(35),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorExtension.tinyColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(35),
      ),
    ),
    extensions: [colorExtension],
  );
}
