import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

class PlaceInformations extends StatelessWidget {
  const PlaceInformations({
    required this.place,
    required this.address,
    super.key,
  });

  final String place;
  final String address;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: Theme.of(context).extension<ColorExtension>()!.tinyColor,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          place,
          style: style,
        ),
        Text(
          address,
          style: style,
        ),
      ],
    );
  }
}
