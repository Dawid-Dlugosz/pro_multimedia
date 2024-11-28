import 'package:flutter/material.dart';

import 'package:pro_multimedia/dummy_data.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_slider/event_slider_item.dart';

class EventsSlider extends StatelessWidget {
  const EventsSlider({
    this.scrollDirection = Axis.horizontal,
    super.key,
  });

  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: DummyData.imagesSlider.length,
      itemBuilder: (ctx, index) {
        final imagePath = DummyData.imagesSlider[index];
        return Padding(
          padding: EdgeInsets.only(
            left: isPortrait ? 10 : 0,
            bottom: isPortrait ? 0 : 10,
          ),
          child: EventSliderItem(
            isLast: index == DummyData.imagesSlider.length - 1,
            imagePath: imagePath,
          ),
        );
      },
    );
  }
}
