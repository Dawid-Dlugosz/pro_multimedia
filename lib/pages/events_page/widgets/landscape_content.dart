import 'package:flutter/material.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_list/events_list.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_slider/event_slider.dart';
import 'package:pro_multimedia/pages/events_page/widgets/tags/tags.dart';

class LandscapeContent extends StatelessWidget {
  const LandscapeContent({required this.tags, super.key});

  final Set<String> tags;

  double calculateListWidth({
    required GlobalKey sliderKey,
    required BuildContext context,
  }) {
    final RenderBox renderBox =
        sliderKey.currentContext!.findRenderObject() as RenderBox;
    final double sliderWidth = renderBox.size.width;
    final screenWidth = MediaQuery.of(context).size.width;
    final avalibleListWidht = sliderWidth - screenWidth - 20;

    return avalibleListWidht;
  }

  @override
  Widget build(BuildContext context) {
    final heightToDelete = tags.isEmpty ? 160 : 210;
    final sliderKey = GlobalKey();

    return Column(
      children: [
        tags.isNotEmpty ? const Tags() : const SizedBox(),
        tags.isNotEmpty
            ? const SizedBox(
                height: 10,
              )
            : const SizedBox(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              key: sliderKey,
              height: MediaQuery.of(context).size.height - heightToDelete,
              width: MediaQuery.of(context).size.width * 0.4,
              child: const EventsSlider(
                scrollDirection: Axis.vertical,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final RenderBox renderBox =
                    sliderKey.currentContext!.findRenderObject() as RenderBox;
                final double sliderWidth = renderBox.size.width;

                final screenWidth = MediaQuery.of(context).size.width;
                final availableListWidth = screenWidth - sliderWidth - 30;

                return SizedBox(
                  width: availableListWidth,
                  height: MediaQuery.of(context).size.height - heightToDelete,
                  child: const EventsList(
                    scrollDirection: Axis.vertical,
                    isPortrait: false,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
