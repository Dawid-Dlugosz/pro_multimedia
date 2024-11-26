import 'package:flutter/material.dart';

import 'package:pro_multimedia/inherited_widgets/favourite/favourite_inherited.dart';

class FavoritesManager extends StatefulWidget {
  const FavoritesManager({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  State<FavoritesManager> createState() => _FavoritesManagerState();
}

class _FavoritesManagerState extends State<FavoritesManager> {
  List<int> _favorites = [];

  void _addFavorite(int item) {
    setState(() {
      _favorites = List.from(_favorites)..add(item); // Creates a new list
    });
  }

  void _removeFavorite(int item) {
    setState(() {
      _favorites = List.from(_favorites)..remove(item); // Creates a new list
    });
  }

  @override
  Widget build(BuildContext context) {
    return FavouriteInherited(
      favorites: _favorites,
      addFavorite: _addFavorite,
      removeFavorite: _removeFavorite,
      child: widget.child,
    );
  }
}
