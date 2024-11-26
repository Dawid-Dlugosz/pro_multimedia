import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    required this.isSelected,
    super.key,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 17,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Theme.of(context).extension<ColorExtension>()!.lightBackgroud,
        borderRadius: BorderRadius.circular(3),
        border: Border.all(
          color: Theme.of(context)
              .extension<ColorExtension>()!
              .textColor
              .withOpacity(0.29),
        ),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isSelected
            ? Container(
                width: 11,
                height: 11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Theme.of(context)
                      .extension<ColorExtension>()!
                      .primaryColor,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
