import 'package:flutter/material.dart';

class FavouriteInherited extends InheritedWidget {
  const FavouriteInherited({
    required this.favorites,
    required this.addFavorite,
    required this.removeFavorite,
    required super.child,
    super.key,
  });

  final List<int> favorites;
  final Function(int id) addFavorite;
  final Function(int id) removeFavorite;

  @override
  bool updateShouldNotify(covariant FavouriteInherited oldWidget) =>
      oldWidget.favorites != favorites;

  static FavouriteInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FavouriteInherited>();
  }
}
