import 'package:flutter/material.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/pages/calendar_page/widgets/select_item.dart';

class DateOfEvent extends StatelessWidget {
  const DateOfEvent({
    required this.event,
    super.key,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectItem(
          title: 'Początek',
          label: event.formattedStartDate(),
        ),
        SelectItem(
          title: 'Koniec',
          label: event.formattedStartDate(),
        ),
      ],
    );
  }
}
