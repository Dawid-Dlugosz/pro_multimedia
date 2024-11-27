import 'package:flutter/material.dart';
import 'package:pro_multimedia/dummy_data.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({super.key});

  int eventCount(BuildContext context) {
    final events = DummyData.events;
    final filters = FiltersInherited.of(context)!;
    final tags = filters.tags;

    if (tags.isEmpty) {
      return events.length;
    }
    int count = 0;

    for (var event in events) {
      for (var eventTag in event.tags) {
        if (tags.contains(eventTag)) {
          count++;
        }
      }
    }

    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            FiltersInherited.of(context)!.clear();
          },
          child: const Text('Wyczyść'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Pokaż wyniki (${eventCount(context)})',
          ),
        ),
      ],
    );
  }
}
