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
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SizedBox(
      width: 300,
      height: 224,
      child: ClipRRect(
        borderRadius: isLast
            ? BorderRadius.only(
                topLeft: const Radius.circular(10),
                topRight: isPortrait ? Radius.zero : const Radius.circular(10),
                bottomLeft:
                    isPortrait ? const Radius.circular(10) : Radius.zero,
                bottomRight:
                    !isPortrait ? const Radius.circular(10) : Radius.zero,
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
