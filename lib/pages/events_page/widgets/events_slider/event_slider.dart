import 'package:flutter/material.dart';
import 'package:pro_multimedia/dummy_data.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_slider/event_slider_item.dart';

class EventsSlider extends StatelessWidget {
  const EventsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: DummyData.imagesSlider.length,
      itemBuilder: (ctx, index) {
        final imagePath = DummyData.imagesSlider[index];
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: EventSliderItem(
            isLast: index == DummyData.imagesSlider.length - 1,
            imagePath: imagePath,
          ),
        );
      },
    );
  }
}
