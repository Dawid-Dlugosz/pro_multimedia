import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

class EventTitle extends StatelessWidget {
  const EventTitle({
    required this.performances,
    required this.title,
    super.key,
  });

  final String title;
  final String performances;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: 22,
      color: Theme.of(context).extension<ColorExtension>()!.textColor,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: style.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          performances,
          style: style,
        ),
      ],
    );
  }
}
