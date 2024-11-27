import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/modals/calendar_modal/widgets/switch_row.dart';
import 'package:pro_multimedia/modals/filters_modal/widgets/slider/custom_divider.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/place_informations.dart';

class CalendarTitle extends StatelessWidget {
  const CalendarTitle({
    required this.event,
    super.key,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            event.title,
            style: TextStyle(
              fontSize: 22,
              color: Theme.of(context).extension<ColorExtension>()!.textColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CustomDivider(
          color: Theme.of(context).extension<ColorExtension>()!.textColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: PlaceInformations(
            place: event.place,
            address: event.address,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SwitchRow(),
      ],
    );
  }
}
