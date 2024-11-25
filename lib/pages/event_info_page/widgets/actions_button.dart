import 'package:flutter/material.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/action_button.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class ActionsButton extends StatelessWidget {
  const ActionsButton({required this.event, super.key});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ActionButton(
          onTap: () {},
          icon: Image.asset(ImageAsset.calendar),
          label: 'Dodaj do do kalendarza',
        ),
        ActionButton(
          onTap: () {},
          icon: Image.asset(ImageAsset.share),
          label: 'Udostępnij',
        ),
        ActionButton(
          onTap: () {},
          icon: Image.asset(ImageAsset.map),
          label: 'Pokaż na mapie',
        ),
        ActionButton(
          onTap: () {},
          icon: Image.asset(ImageAsset.page),
          label: 'Strona www',
        )
      ],
    );
  }
}
