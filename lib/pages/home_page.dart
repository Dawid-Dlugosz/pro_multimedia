import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).extension<ColorExtension>()!.textColor,
          ),
        ),
      ),
    );
  }
}
