import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/modals/filters_modal/widgets/slider/custom_divider.dart';

class SwitchRow extends StatefulWidget {
  const SwitchRow({super.key});

  @override
  State<SwitchRow> createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  late final ColorExtension _colorExtansion;

  bool _isSelected = false;

  @override
  void didChangeDependencies() {
    _colorExtansion = Theme.of(context).extension<ColorExtension>()!;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wydarzenie całodniowe',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: _colorExtansion.textColor,
                ),
              ),
              Switch(
                value: _isSelected,
                onChanged: (value) {
                  setState(() {
                    _isSelected = value;
                  });
                },
              )
            ],
          ),
        ),
        CustomDivider(
          color: _colorExtansion.textColor,
        )
      ],
    );
  }
}
