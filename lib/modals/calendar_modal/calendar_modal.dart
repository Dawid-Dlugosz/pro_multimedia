import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';

import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/modals/calendar_modal/widgets/calendar_buttons.dart';
import 'package:pro_multimedia/modals/calendar_modal/widgets/calendar_title.dart';
import 'package:pro_multimedia/modals/calendar_modal/widgets/date_of_event.dart';
import 'package:pro_multimedia/modals/calendar_modal/widgets/select_item.dart';
import 'package:pro_multimedia/widgets/close_app_bar.dart';

class CalendarModal extends StatelessWidget {
  const CalendarModal({
    required this.event,
    super.key,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    final colorExtension = Theme.of(context).extension<ColorExtension>()!;

    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CloseAppBar(
            title: 'Kalendarz imprez',
          ),
          const SizedBox(
            height: 20,
          ),
          CalendarTitle(event: event),
          DateOfEvent(event: event),
          const SizedBox(
            height: 10,
          ),
          SelectItem(
            title: 'Powtarzaj',
            label: 'Nigdy',
            isTitle: true,
            dividerColor: colorExtension.textColor,
          ),
          const SizedBox(
            height: 20,
          ),
          SelectItem(
            title: 'Kalendarz',
            label: 'Dom',
            isTitle: true,
            dividerColor: colorExtension.textColor,
          ),
          const SelectItem(
            title: 'Zaproszeni',
            label: 'Brak',
          ),
          SelectItem(
            title: 'Alert',
            label: 'W dniu wydarzenia (9.00)',
            isTitle: true,
            dividerColor: colorExtension.textColor,
          ),
          const SelectItem(
            title: '2. alert',
            label: 'Brak',
          ),
          const SizedBox(
            height: 100,
          ),
          const CalendarButtons(),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
