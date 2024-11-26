import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/extensions/string_extension.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class TagItem extends StatelessWidget {
  const TagItem({required this.filterProvier, required this.tag, super.key});

  final FiltersInherited filterProvier;
  final String tag;

  @override
  Widget build(BuildContext context) {
    final colorExtension = Theme.of(context).extension<ColorExtension>()!;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: colorExtension.primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(44),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10,
            height: 10,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => filterProvier.unselectTag(tag),
              icon: Image.asset(
                ImageAsset.cancel,
                color: colorExtension.textColor,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            tag.capitalize(),
            style: TextStyle(
              color: colorExtension.textColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
