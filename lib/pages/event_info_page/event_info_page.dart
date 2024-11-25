import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/actions_button.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/enter.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/event_title.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/informations.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/place_informations.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/socials_media.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class EventInfoPage extends StatelessWidget {
  const EventInfoPage({
    required this.event,
    super.key,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Image.asset(
                ImageAsset.arrow,
              ),
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.pop(context),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                left: 15,
                right: 15,
                top: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EventTitle(
                    title: event.title,
                    performances: event.formattedPerformances(),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    event.formattedDate(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Theme.of(context)
                          .extension<ColorExtension>()!
                          .primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  PlaceInformations(
                    place: event.place,
                    address: event.address,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        event.image,
                        width: 340,
                        height: 231,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ActionsButton(
                    event: event,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Informations(
                    title: 'Wykonawcy:',
                    list: event.contractors,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Informations(
                    title: 'Program:',
                    list: event.programs,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: event.isFree
                        ? Enter(
                            label: 'Wydarzenie bezpłatne',
                            imagePath: ImageAsset.free,
                          )
                        : Enter(
                            label: 'Wydarzenie płatne',
                            imagePath: ImageAsset.paid,
                          ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SocialsMedia()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
