import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/inherited_widgets/favourite/favourite_inherited.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class Favourite extends StatelessWidget {
  const Favourite({
    required this.eventId,
    super.key,
  });

  final int eventId;

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteInherited.of(context);
    final favorites = provider!.favorites;
    final isFavourite = favorites.contains(eventId);
    return SizedBox(
      width: 32,
      height: 32,
      child: IconButton.filled(
        onPressed: () {
          if (isFavourite) {
            provider.removeFavorite(eventId);
          } else {
            provider.addFavorite(eventId);
          }
        },
        style: IconButton.styleFrom(
          backgroundColor:
              Theme.of(context).extension<ColorExtension>()!.pageBackgroudColor,
        ),
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: !isFavourite
              ? Image.asset(
                  ImageAsset.fav,
                  key: const Key('not-fav'),
                )
              : Image.asset(
                  ImageAsset.filledFav,
                  key: const Key('fav'),
                ),
        ),
      ),
    );
  }
}
