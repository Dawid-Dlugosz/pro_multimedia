import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/entities/filter.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';
import 'package:pro_multimedia/pages/filters_page/widgets/custom_checkbox.dart';
import 'package:pro_multimedia/widgets/botton_border.dart';

class TagCheckboxItem extends StatelessWidget {
  const TagCheckboxItem({
    required this.tag,
    required this.filter,
    super.key,
  });

  final String tag;
  final Filter filter;

  @override
  Widget build(BuildContext context) {
    final colorExtension = Theme.of(context).extension<ColorExtension>()!;
    final provider = FiltersInherited.of(context)!;
    final isSelected = provider.isTagSelected(tag.toLowerCase());

    return GestureDetector(
      onTap: () {
        if (isSelected) {
          provider.unselectTag(tag);
        } else {
          provider.selectTag(tag);
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
              const SizedBox(
                width: 40,
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
                  child: Text(tag),
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
