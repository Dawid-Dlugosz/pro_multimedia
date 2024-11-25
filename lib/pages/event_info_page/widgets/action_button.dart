import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.onTap,
    required this.icon,
    required this.label,
    super.key,
  });

  final Function() onTap;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: IconButton.filled(
              onPressed: onTap,
              icon: icon,
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .extension<ColorExtension>()!
                    .secondaryColor,
              ),
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Theme.of(context)
                  .extension<ColorExtension>()!
                  .tinyColor
                  .withOpacity(0.7),
            ),
          )
        ],
      ),
    );
  }
}
