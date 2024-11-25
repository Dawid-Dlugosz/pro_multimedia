import 'package:flutter/material.dart';

class EventSliderItem extends StatelessWidget {
  const EventSliderItem({
    required this.imagePath,
    required this.isLast,
    super.key,
  });

  final String imagePath;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 244,
      child: ClipRRect(
        borderRadius: isLast
            ? const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              )
            : BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
