import 'package:flutter/material.dart';
import 'package:pro_multimedia/dummy_data.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';
import 'package:pro_multimedia/inherited_widgets/searcher/searcher_inherited.dart';

import 'package:pro_multimedia/pages/events_page/widgets/events_list/event_list_item.dart';

class EventsList extends StatelessWidget {
  const EventsList({
    required this.isPortrait,
    this.scrollDirection = Axis.vertical,
    super.key,
  });

  final bool isPortrait;
  final Axis scrollDirection;

  List<Event> getFilteredEvents(BuildContext context) {
    final events = <Event>[];
    final filterProvider = FiltersInherited.of(context)!;

    if (filterProvider.tags.isEmpty) {
      return DummyData.events;
    }

    for (var event in DummyData.events) {
      if (event.tags.any((element) => filterProvider.tags.contains(element))) {
        events.add(event);
      }
    }

    return events;
  }

  @override
  Widget build(BuildContext context) {
    final searcherInherited = SearcherInherited.of(context)!;
    final filteredEvents = getFilteredEvents(context)
        .where(
          (element) => element.title
              .toLowerCase()
              .contains(searcherInherited.text?.toLowerCase() ?? ''),
        )
        .toList();

    return isPortrait
        ? SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final event = filteredEvents[index];
                return EventListItem(
                  event: event,
                );
              },
              childCount: filteredEvents.length,
            ),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              final event = filteredEvents[index];
              return EventListItem(
                event: event,
              );
            },
            itemCount: filteredEvents.length,
          );
  }
}
