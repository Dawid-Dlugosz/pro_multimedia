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
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorExtension.pageBackgroudColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: colorExtension.primaryColor,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: colorExtension.primaryColor,
        textStyle: TextStyle(
          color: colorExtension.primaryColor,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    ),
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
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return colorExtension.pageBackgroudColor; // Active thumb color
          }
          return colorExtension.textColor; // Inactive thumb color
        },
      ),
      thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return Icon(
              Icons.check,
              color: colorExtension.configColor,
            );
          }
          return null;
        },
      ),
      trackColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return colorExtension.configColor;
          }
          return colorExtension.pageBackgroudColor;
        },
      ),
      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return colorExtension.configColor;
          }
          return colorExtension.textColor;
        },
      ),
    ),
    extensions: [colorExtension],
  );
}
