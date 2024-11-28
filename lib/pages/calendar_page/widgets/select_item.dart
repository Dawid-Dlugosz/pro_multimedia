import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/pages/filters_page/widgets/slider/custom_divider.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({
    required this.label,
    required this.title,
    this.dividerColor,
    this.isTitle = false,
    super.key,
  });

  final String title;
  final String label;
  final Color? dividerColor;
  final bool isTitle;
  @override
  Widget build(BuildContext context) {
    final colorExtension = Theme.of(context).extension<ColorExtension>()!;
    const style = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            children: [
              Text(
                title,
                style: style.copyWith(
                  color: colorExtension.textColor,
                  fontWeight: isTitle ? FontWeight.w700 : null,
                ),
              ),
              const Spacer(),
              Text(
                label,
                style: style.copyWith(
                  color: colorExtension.tinyColor.withOpacity(0.5),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 30,
                width: 20,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Image.asset(ImageAsset.setItem),
                ),
              )
            ],
          ),
        ),
        CustomDivider(
          color: dividerColor,
        ),
      ],
    );
  }
}
