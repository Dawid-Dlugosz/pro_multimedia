import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class CloseAppBar extends StatelessWidget {
  const CloseAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Image.asset(ImageAsset.cancel),
        ),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).extension<ColorExtension>()!.textColor,
          ),
        )
      ],
    );
  }
}
