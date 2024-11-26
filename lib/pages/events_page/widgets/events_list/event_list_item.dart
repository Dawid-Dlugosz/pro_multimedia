import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/pages/event_info_page/event_info_page.dart';
import 'package:pro_multimedia/pages/events_page/widgets/favourite.dart';
import 'package:pro_multimedia/pages/events_page/widgets/small_arrow.dart';

class EventListItem extends StatelessWidget {
  const EventListItem({
    required this.event,
    super.key,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .extension<ColorExtension>()!
            .lightBackgroud
            .withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 4,
            color: const Color(0xff000000).withOpacity(0.07),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => EventInfoPage(event: event),
            ),
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(
                event.imageSnipped,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 10,
                  left: 7,
                  right: 7,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event.title,
                            style: TextStyle(
                              color: Theme.of(context)
                                  .extension<ColorExtension>()!
                                  .textColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            event.snippedAddress,
                            style: TextStyle(
                              color: Theme.of(context)
                                  .extension<ColorExtension>()!
                                  .tinyColor,
                              fontSize: 12,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            event.snippedDate(),
                            style: TextStyle(
                              color: Theme.of(context)
                                  .extension<ColorExtension>()!
                                  .tinyColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Favourite(
                          eventId: event.id,
                        ),
                        SmallArrow(
                          eventId: event.id,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
