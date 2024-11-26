import 'package:flutter/material.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';
import 'package:pro_multimedia/pages/events_page/widgets/tags/tag_item.dart';

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = FiltersInherited.of(context)!;

    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: provider.tags.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return TagItem(
            filterProvier: provider,
            tag: provider.tags.elementAt(index),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
