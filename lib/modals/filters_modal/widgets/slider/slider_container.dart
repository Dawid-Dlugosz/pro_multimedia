import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/modals/filters_modal/widgets/slider/custom_slider.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorExtansion = Theme.of(context).extension<ColorExtension>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Szukaj w odległości od swojej lokalizacji',
            style: TextStyle(
              fontSize: 12,
              color: colorExtansion.textColor.withOpacity(0.7),
            ),
          ),
        ),
        const CustomSlider(),
      ],
    );
  }
}
