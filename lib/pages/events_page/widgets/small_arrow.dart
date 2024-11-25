import 'package:flutter/material.dart';
import 'package:pro_multimedia/inherited_widgets/favourite/favourite_inherited.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class SmallArrow extends StatelessWidget {
  const SmallArrow({
    required this.eventId,
    super.key,
  });

  final int eventId;

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteInherited.of(context);
    final favorites = provider!.favorites;
    final isFavourite = favorites.contains(eventId);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: !isFavourite
          ? Image.asset(
              ImageAsset.smallArrow,
              key: const Key('not-fav-arrow'),
            )
          : Image.asset(
              ImageAsset.smallArrowFav,
              key: const Key('fav-arrow'),
            ),
    );
  }
}
