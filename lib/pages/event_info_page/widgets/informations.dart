import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/entities/atraction.dart';

class Informations extends StatelessWidget {
  const Informations({required this.title, required this.list, super.key});

  final List<Atraction> list;
  final String title;
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Theme.of(context).extension<ColorExtension>()!.textColor,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: style,
          ),
          const SizedBox(
            height: 3,
          ),
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context)
                          .extension<ColorExtension>()!
                          .textColor,
                      radius: 2,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        item.getText(),
                        style: style,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
