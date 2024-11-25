import 'package:flutter/material.dart';
import 'package:pro_multimedia/dummy_data.dart';
import 'package:pro_multimedia/inherited_widgets/searcher/searcher_inherited.dart';

import 'package:pro_multimedia/pages/events_page/widgets/events_list/event_list_item.dart';

class EventsList extends StatefulWidget {
  const EventsList({super.key});

  @override
  State<EventsList> createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  Widget build(BuildContext context) {
    final searcherInherited = SearcherInherited.of(context)!;
    final filteredEvents = DummyData.events
        .where(
          (element) => element.title
              .toLowerCase()
              .contains(searcherInherited.text?.toLowerCase() ?? ''),
        )
        .toList();
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final event = filteredEvents[index];
          return EventListItem(
            event: event,
          );
        },
        childCount: filteredEvents.length,
      ),
    );
  }
}
