import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(ImageAsset.home),
          label: 'Śląskie',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(ImageAsset.news),
          label: 'Aktualności',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(ImageAsset.events),
          label: 'Wydarzenia',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(ImageAsset.explore),
          label: 'Eksploruj',
        ),
      ],
      onTap: onTap,
      selectedItemColor:
          Theme.of(context).extension<ColorExtension>()!.tinyColor,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      currentIndex: currentIndex,
    );
  }
}
