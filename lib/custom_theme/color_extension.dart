import 'package:flutter/material.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({
    required this.tinyColor,
    required this.textColor,
    required this.primaryColor,
    required this.configColor,
    required this.secondaryColor,
    required this.pageBackgroudColor,
    required this.lightBackgroud,
    required this.bottomNav,
  });

  final Color tinyColor,
      textColor,
      primaryColor,
      configColor,
      secondaryColor,
      pageBackgroudColor,
      lightBackgroud,
      bottomNav;

  @override
  ThemeExtension<ColorExtension> copyWith({
    Color? tinyColor,
    Color? textColor,
    Color? primaryColor,
    Color? configColor,
    Color? secondaryColor,
    Color? pageBackgroudColor,
    Color? lightBackgroud,
    Color? bottomNav,
  }) {
    return ColorExtension(
      tinyColor: tinyColor ?? this.tinyColor,
      textColor: textColor ?? this.textColor,
      primaryColor: primaryColor ?? this.primaryColor,
      configColor: configColor ?? this.configColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      pageBackgroudColor: pageBackgroudColor ?? this.pageBackgroudColor,
      lightBackgroud: lightBackgroud ?? this.lightBackgroud,
      bottomNav: bottomNav ?? this.bottomNav,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(ColorExtension other, double t) {
    return ColorExtension(
      tinyColor: Color.lerp(tinyColor, other.tinyColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      configColor: Color.lerp(configColor, other.configColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      pageBackgroudColor:
          Color.lerp(pageBackgroudColor, other.pageBackgroudColor, t)!,
      lightBackgroud: Color.lerp(lightBackgroud, other.lightBackgroud, t)!,
      bottomNav: Color.lerp(bottomNav, other.bottomNav, t)!,
    );
  }
}
