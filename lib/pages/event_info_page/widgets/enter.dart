import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

class Enter extends StatelessWidget {
  const Enter({required this.imagePath, required this.label, super.key});

  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).extension<ColorExtension>()!.textColor,
          ),
        )
      ],
    );
  }
}
