import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/entities/filter.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';
import 'package:pro_multimedia/pages/filters_page/widgets/custom_checkbox.dart';
import 'package:pro_multimedia/utils/image_asset.dart';
import 'package:pro_multimedia/widgets/botton_border.dart';

class TitleCheckboxItem extends StatelessWidget {
  const TitleCheckboxItem({
    required this.filter,
    required this.isOpened,
    required this.toggleTags,
    super.key,
  });

  final Filter filter;
  final bool isOpened;
  final Function() toggleTags;

  @override
  Widget build(BuildContext context) {
    final colorExtension = Theme.of(context).extension<ColorExtension>()!;
    final provider = FiltersInherited.of(context)!;
    final isSelected = provider.isCategorySelected(filter);

    return GestureDetector(
      onTap: () {
        if (isSelected) {
          if (filter.tags.isEmpty) {
            provider.unselectTag(filter.category.toLowerCase());
          } else {
            provider.unselectTags(
              filter.tags.map((element) => element.toLowerCase()).toList(),
            );
          }
        } else {
          if (filter.tags.isEmpty) {
            provider.selectTag(filter.category.toLowerCase());
          } else {
            provider.selectTags(
              filter.tags.map((element) => element.toLowerCase()).toList(),
            );
          }
        }
      },
      child: BottonBorder(
        color: isSelected
            ? colorExtension.primaryColor
            : colorExtension.tinyColor.withOpacity(0.07),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 13,
            right: 19,
            top: 10,
            bottom: 10,
          ),
          child: Row(
            children: [
              filter.tags.isNotEmpty
                  ? SizedBox(
                      width: 30,
                      height: 30,
                      child: IconButton(
                        onPressed: toggleTags,
                        icon: Image.asset(
                          ImageAsset.expand,
                        ),
                      ),
                    )
                  : const SizedBox(
                      width: 30,
                    ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isSelected
                        ? colorExtension.primaryColor
                        : colorExtension.textColor,
                  ),
                  child: Text(filter.category),
                ),
              ),
              const Spacer(),
              CustomCheckbox(
                isSelected: isSelected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
