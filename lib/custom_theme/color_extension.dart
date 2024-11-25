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
  ThemeExtension<ColorExtension> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
